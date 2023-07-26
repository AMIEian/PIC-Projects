#ifndef IVR_H_
#define IVR_H_

//Variables to indicate ivr output
char Message_End = 0xEE;
char Wrong_Password = 0;
char Correct_Password = 1;
char Input_Not_Received = 2;
char Change_OK = 3;

//Functions to interact with user
char welcome_message();
char check_password();
char change_password();
char play_message_group(char group);
char power_message();
char thanks_message();

#endif