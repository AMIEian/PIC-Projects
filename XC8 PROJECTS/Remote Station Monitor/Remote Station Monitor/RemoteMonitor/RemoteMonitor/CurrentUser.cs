using System;
using System.Collections.Generic;
using System.IO.Ports;

using System.Text;
//using System.Threading.Tasks;

namespace RemoteMonitor
{
    class CurrentUser
    {
        public static string DATABASE = "goras";
        public static String dsnName = "milk";
        public static string DBSERVER = "localhost";

        //WeightMachine
        public static string wComport;
        public static string wSpeed;
        public static string wBitrate;
        public static string wParity;
        public static string wStopbit;

        //RTC Setting
        public static bool Sys_Time = true;
        public static DateTime RTC_date_time;
        public static int RTC_Hrs;
        public static int RTC_Mins;
        public static int RTC_Sec;

        //Current frames data
        public static Object[ , ] current_Frame = new Object[14,5];
        public static bool RTU1_frame_Flag = false;
        public static bool RTU2_frame_Flag = false;

        //Threshold Trigger Setting array
        public static int[] thresh_trig = { 50, 0, 90, 0, 45, 0, 85, 0, 50, 0, 90, 0, 45, 0, 90, 0, 50, 0, 90, 0, 45, 0, 85, 0, 50, 0, 90, 0, 45, 0, 90, 0 };

        public static Parity getParity(int parity) {


            switch (parity)
            { 
                case 0:return Parity.Even;
                case 1: return Parity.Mark;
                case 2: return Parity.None;
                case 3: return Parity.Odd;
                case 4: return Parity.Space;
            }
            return Parity.None;
        }
        public static Parity getParity(string parity)
        {
            int p = 0;
            int.TryParse(parity, out p);


            return getParity(p);
        }
        public static StopBits getStopbit(string stopbit)
        {
            switch (stopbit)
            {
                case "0": return StopBits.None;
                case "1": return StopBits.One;
                case "1.5": return StopBits.OnePointFive;
                case "2": return StopBits.Two;
               
            }
            return StopBits.None;
        }

       
        
    }
}
