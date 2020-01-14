# System-Info-Script

## General Info 
This program outputs the following information dynamically about a Unix server:
1. The machine name
2. The numbers of users that have logged into the server since the start date given in /var/log/wtmp
3. The IP address
4. The Operating System of the server machine
5. The login name of the user running the script 
6. The number of times that the user running the script has logged in since the start date

## How to Run the Script
To run this script, please cd into the script directory. Then give the script execution privileges and run it like so: 

```
$ cd ../System-Info-Script
$ chmod u+x systemInfo.sh
$ ./systemInfo.sh
```