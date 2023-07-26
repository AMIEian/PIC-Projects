#include "timekeeper.h"

void update_time()
   {
      //Update mins & hrs
      if(secs == 60)
         {
            secs = 0;
            mins++;
            if(mins == 60)
               {
                  mins = 0;
                  hrs++;
                  if(hrs == 24)
                     {
                        hrs = 0;
                        update_date();
                        date_flag = 1;
                     }
                  hrs_flag = 1;   
               }
            min_flag = 1;
            if(alarm_flag == 1)
               check_alarm();
         }
      return;
   }
   
void update_date()
   {
      unsigned char temp;
      switch(day)
         {
            case 28:
               if(month == 2)
                  {
                     //Check for leap year
                     temp = year % 4;
                     if(temp == 0)
                        day++;
                     else
                        {
                           month++;
                           day = 1;
                        }
                  }    
               else
                  day++;     
               break;
            case 29:
               //This case will execute after every 4 years !
               if(month == 2)
                  {
                     month++;
                     day = 1;
                  }
               else 
                  day++;
               break;
            case 30:
               if(month == 4 || month == 6 || month == 9 || month == 11)
                  {
                     day = 1;
                     month++;
                  }
               else
                  day++;
               break;
            default :
               if(day == 31)
                  {
                     day = 1;
                     month++;
                     if(month == 13)
                        {
                           month = 1;
                           year++;
                           if(year == 100)
                              year = 0;
                        }
                  }
               else
                  day++;
               break;
         }                     
   }      
   
void check_alarm()
   {
      if(alarm_hrs == hrs && alarm_mins == mins)
         {
            alarm_bell = 1;
            if(alarm_auto_repeat == 0)
               alarm_flag = 0;
         }
      else
         alarm_bell = 0;
      return;
   }