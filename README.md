RLRandomizer
============

Simple class that generates randomized alpha and/or numeric (+ special characters) strings.

-(NSString *)generateRandomString:(int)length type:(int)stage

length:
string length

stage:
1 = alpha (lower cases)
2 = alpha (upper+lower cases)
3 = alphanumeric (lower cases)
4 = alpha (upper cases)
5 = alphanumeric (upper cases)
6 = alphanumeric (lower+upper cases)
7 = alphanumeric + special characters (lower+upper+!#$%^&*_-+=<>?~)
8 = numeric

Example:    
NSLog(@"Random String:%@",[randomizer generateRandomString:25 type:2]);

Console Output:
xctest[8525:303] Random String:ERbHShgRBKwmnxhYHZoXEKdtV
