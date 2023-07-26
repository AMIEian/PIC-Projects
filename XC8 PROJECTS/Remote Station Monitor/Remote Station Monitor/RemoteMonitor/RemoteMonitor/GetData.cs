using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;

namespace RemoteMonitor
{
    public partial class GetData : Form
    {
        Boolean Eco_Received = false, End_Received = false, Eco_Sent = false;
        int index = 0;
        int[] packet = new int[128];
        string RxString;
        int sum = 0;
        int crc = 0;
        
        int packet_size;
        int rtu_id;
        int fun_code;
        int total_readings;

        int packet_year;
        int packet_month;
        int packet_date;
        int packet_day;
        int packet_hrs;
        int packet_min;
        int packet_sec;

        public GetData()
        {
            InitializeComponent();
        }

        private void GetData_Load(object sender, EventArgs e)
        {
            
        }
                  
        private void buttonStart_Click(object sender, EventArgs e)
          {
              serialPort1.PortName = CurrentUser.wComport;
              serialPort1.BaudRate = 9600;
  
              serialPort1.Open();
              if (serialPort1.IsOpen)
              {
                  buttonStart.Enabled = false;
                  buttonStop.Enabled = true;
                  textBox1.ReadOnly = false;
              }
          }
  
          private void buttonStop_Click(object sender, EventArgs e)
          {
              if (serialPort1.IsOpen)
              {
                  serialPort1.Close();
                  buttonStart.Enabled = true;
                  buttonStop.Enabled = false;
                  textBox1.ReadOnly = true;
              }
          }
  
          private void Form1_FormClosing(object sender, FormClosingEventArgs e)
          {
              if (serialPort1.IsOpen) serialPort1.Close();
          }
  
          private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
          {
              // If the port is closed, don't try to send a character.

              if(!serialPort1.IsOpen) return;
  
              // If the port is Open, declare a char[] array with one element.
              char[] buff = new char[1];
              
              // Load element 0 with the key character.

              buff[0] = e.KeyChar;
  
              // Send the one character buffer.
              serialPort1.Write(buff, 0, 1);
  
              // Set the KeyPress event as handled so the character won't
              // display locally. If you want it to display, omit the next line.
              e.Handled = true;
          }
  
          private void DisplayText(object sender, EventArgs e)
          {
              textBox1.AppendText(RxString);
          }
  
          private void serialPort1_DataReceived
            (object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
          {
              int bytes = serialPort1.BytesToRead;
              byte[] buffer = new byte[bytes];
              serialPort1.Read(buffer, 0, bytes);
              foreach (byte data in buffer)
              {
                  RxString = "";
                  RxString = RxString + Convert.ToInt32(data);
                  RxString = RxString + " - ";

                  if (Eco_Received == true)
                  {
                      packet[index] = Convert.ToInt32(data);
                      index++;
                  }
                  if (data == 0x6D && Eco_Sent == true)
                  {
                      //Create Packet
                      packet[0] = 0xFA;
                      packet[1] = 16;
                      packet[2] = 0x6D;
                      packet[3] = rtu_id;
                      packet[4] = 3;
                      packet[5] = 0;
                      //Get time to creat time stamp
                      if (CurrentUser.Sys_Time == true)
                      {
                          DateTime CurrentTime = DateTime.Now;
                          packet[6] = CurrentTime.Year - 2000;
                          packet[7] = CurrentTime.Month;
                          packet[8] = CurrentTime.Day;
                          packet[9] = 2;
                          packet[10] = CurrentTime.Hour;
                          packet[11] = CurrentTime.Minute;
                          packet[12] = CurrentTime.Second;
                      }
                      else
                      {
                          packet[6] = CurrentUser.RTC_date_time.Year - 2000;
                          packet[7] = CurrentUser.RTC_date_time.Month;
                          packet[8] = CurrentUser.RTC_date_time.Day;
                          packet[9] = 2;
                          packet[10] = CurrentUser.RTC_date_time.Hour;
                          packet[11] = CurrentUser.RTC_date_time.Minute;
                          packet[12] = CurrentUser.RTC_date_time.Second;
                      }
                      int ind;
                      for (ind = 0; ind < 32; ind++)
                      {
                          packet[ind + 13] = CurrentUser.thresh_trig[ind];
                      }
                      //Calculate CRC
                      int packet_sum = 0;
                      for (int i = 0; i < 45; i++)
                          packet_sum = packet_sum + packet[i];
                      packet[45] = (int)packet_sum / 256; //CRC Hi
                      packet[46] = packet_sum % 256;  //CRC Low
                      packet[47] = 0xEA;

                      //Packet created. Send it over port
                      for (int i = 0; i < 48; i++)
                      {
                          System.Threading.Thread.Sleep(100);

                          byte[] buff = BitConverter.GetBytes(packet[i]);
                          if (BitConverter.IsLittleEndian)
                              Array.Reverse(buff);
                          byte[] result = buff;

                          serialPort1.Write(result, 3, 1);
                      }
                      Eco_Sent = false;
                  }
                  if (data == 0x78 && Eco_Received == false)
                  {
                      System.Threading.Thread.Sleep(1000);
                      serialPort1.Write("x");
                      Eco_Received = true;
                  }
                  if (data == 0x79 && Eco_Received == false)
                  {
                      System.Threading.Thread.Sleep(1000);
                      serialPort1.Write("y");
                      Eco_Received = true;
                  }
                  if (data == 0x7A && Eco_Received == false)
                  {
                      System.Threading.Thread.Sleep(1000);
                      serialPort1.Write("z");
                      Eco_Received = true;
                  }
                  if (data == 0xEA && End_Received == false)
                  {
                      //End Received. Calculate CRC
                      int length = 0;
                      while (packet[length] != data)
                         length++;

                      
                      for(int count = 0; count < length - 2; count++)
                        sum = sum + packet[count];

                      crc = (packet[length - 2] * 256) + packet[length - 1];

                      if (crc == sum)
                      {
                          System.Threading.Thread.Sleep(1000);
                          serialPort1.Write("1");
                          End_Received = true;
                          RxString = RxString + "End";
                      }
                      else
                      {
                          System.Threading.Thread.Sleep(1000);
                          serialPort1.Write("0");
                          End_Received = false;
                          Eco_Received = false;
                          index = 0;
                          RxString = RxString + "Error";
                      }
                  }
                  if (End_Received == true)
                  {
                      packet_size = packet[1];
                      rtu_id = packet[2];
                      fun_code = packet[4];
                      total_readings = packet[5];

                      packet_year = packet[6] + 2000;
                      packet_month = packet[7];
                      packet_date = packet[8];
                      packet_day = packet[9];
                      packet_hrs = packet[10];
                      packet_min = packet[11];
                      packet_sec = packet[12];
                      //int data_start = 13;

                      //Check function code
                      if (fun_code == 1)
                      {
                          //PER MINUTE MODE. Start getting readings.
                          DateTime time_stamp = new DateTime(packet_year, packet_month, packet_date, packet_hrs, packet_min, packet_sec);
                          int data_pointer = 13;
                          for (int i = 0; i < total_readings; i++)
                          {
                              float temp1 = 0, hum1 = 0, temp2 = 0, hum2 = 0;
                              int int_part, fraction_part;
                              string query = "";

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              temp1 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              hum1 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              temp2 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              hum2 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              //Add values to database
                              if (rtu_id == 120)
                              {
                                  //If rtu id is x, add data to rtu1 table
                                  query = "Insert into RTU1 (TEMP1, HUM1, TEMP2, HUM2, R_YEAR, R_MONTH, R_DATE, R_HRS, R_MINS, R_SEC, R_TIME_STAMP)" + "values(?,?,?,?,?,?,?,?,?,?,?)";
                              }
                              if (rtu_id == 121)
                              {
                                  //If rtu id is x, add data to rtu1 table
                                  query = "Insert into RTU2 (TEMP1, HUM1, TEMP2, HUM2, R_YEAR, R_MONTH, R_DATE, R_HRS, R_MINS, R_SEC, R_TIME_STAMP)" + "values(?,?,?,?,?,?,?,?,?,?,?)";
                              }
                              
                              Object[] objArray = new Object[11];
                              objArray[0] = temp1;
                              objArray[1] = hum1;
                              objArray[2] = temp2;
                              objArray[3] = hum2;
                              objArray[4] = time_stamp.Year;
                              objArray[5] = time_stamp.Month;
                              objArray[6] = time_stamp.Day;
                              objArray[7] = time_stamp.Hour;
                              objArray[8] = time_stamp.Minute;
                              objArray[9] = time_stamp.Second;
                              objArray[10] = time_stamp;

                              //Put this data in currnt frame array also
                              CurrentUser.current_Frame[i, 0] = temp1;
                              CurrentUser.current_Frame[i, 1] = hum1;
                              CurrentUser.current_Frame[i, 2] = temp2;
                              CurrentUser.current_Frame[i, 3] = hum2;
                              CurrentUser.current_Frame[i, 4] = time_stamp;

                              if (SqlHelper.ExecuteNonQuery(query, objArray) != 1)
                              {
                                  MessageBox.Show("Database Error");
                              }
                              time_stamp = time_stamp.AddMinutes(1);
                          }
                          if (rtu_id == 120)
                              CurrentUser.RTU1_frame_Flag = true;
                          if (rtu_id == 121)
                              CurrentUser.RTU2_frame_Flag = true;
                      }

                      if (fun_code == 2)
                      {
                          //PER SECOND MODE. Start getting readings.
                          DateTime time_stamp = new DateTime(packet_year, packet_month, packet_date, packet_hrs, packet_min, packet_sec);
                          int data_pointer = 13;
                          for (int i = 0; i < total_readings; i++)
                          {
                              float temp1 = 0, hum1 = 0, temp2 = 0, hum2 = 0;
                              int int_part, fraction_part;
                              string query = "";

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              temp1 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              hum1 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              temp2 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              int_part = packet[data_pointer]; //First byte of reading is integer part
                              int_part = int_part % 100;  //Clip to 100
                              data_pointer++;     //Goto next byte
                              fraction_part = packet[data_pointer]; //First byte of reading is integer part
                              fraction_part = fraction_part % 100;  //Clip to 100
                              hum2 = int_part + fraction_part * 0.01f; //Calculate actual value from integer and fractional part
                              data_pointer++;

                              //Add values to database
                              if (rtu_id == 120)
                              {
                                  //If rtu id is x, add data to rtu1 table
                                  query = "Insert into RTU1 (TEMP1, HUM1, TEMP2, HUM2, R_YEAR, R_MONTH, R_DATE, R_HRS, R_MINS, R_SEC, R_TIME_STAMP)" + "values(?,?,?,?,?,?,?,?,?,?,?)";
                              }
                              if (rtu_id == 121)
                              {
                                  //If rtu id is x, add data to rtu1 table
                                  query = "Insert into RTU2 (TEMP1, HUM1, TEMP2, HUM2, R_YEAR, R_MONTH, R_DATE, R_HRS, R_MINS, R_SEC, R_TIME_STAMP)" + "values(?,?,?,?,?,?,?,?,?,?,?)";
                              }

                              Object[] objArray = new Object[11];
                              objArray[0] = temp1;
                              objArray[1] = hum1;
                              objArray[2] = temp2;
                              objArray[3] = hum2;
                              objArray[4] = time_stamp.Year;
                              objArray[5] = time_stamp.Month;
                              objArray[6] = time_stamp.Day;
                              objArray[7] = time_stamp.Hour;
                              objArray[8] = time_stamp.Minute;
                              objArray[9] = time_stamp.Second;
                              objArray[10] = time_stamp;

                              //Put this data in currnt frame array also
                              CurrentUser.current_Frame[i, 0] = temp1;
                              CurrentUser.current_Frame[i, 1] = hum1;
                              CurrentUser.current_Frame[i, 2] = temp2;
                              CurrentUser.current_Frame[i, 3] = hum2;
                              CurrentUser.current_Frame[i, 4] = time_stamp;

                              if (SqlHelper.ExecuteNonQuery(query, objArray) != 1)
                              {
                                  MessageBox.Show("Database Error");
                              }
                              time_stamp = time_stamp.AddSeconds(1);
                          }
                          if(rtu_id == 120)
                              CurrentUser.RTU1_frame_Flag = true;
                          if (rtu_id == 121)
                              CurrentUser.RTU2_frame_Flag = true;
                      }
                      if (fun_code == 3)
                      {
                          //Send Eco
                          System.Threading.Thread.Sleep(500);
                          serialPort1.Write("m");
                          Eco_Sent = true;
                      }
                      Eco_Received = false;
                      End_Received = false;
                      sum = 0;
                      crc = 0;
                      index = 0;
                  }
              }
              
              this.Invoke(new EventHandler(DisplayText));
          }
      }
  }
