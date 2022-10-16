#!/bin/bash
clear
tput bold
main() {
    echo
    echo "NMAP CHEAT SHEET"
    echo "Created By: psycolulz"
    echo "GitHub: https://github.com/psycolulz"
    echo "NMAP Credit: Gordon Lyon https://nmap.org/"
    echo
    echo
echo "   _|_|                _|                _|      _|            "          
echo " _|    _|  _|    _|  _|_|_|_|    _|_|    _|_|  _|_|    _|_|_|  _|_|_|"    
echo " _|_|_|_|  _|    _|    _|      _|    _|  _|  _|  _|  _|    _|  _|    _|"  
echo " _|    _|  _|    _|    _|      _|    _|  _|      _|  _|    _|  _|    _|"  
echo " _|    _|    _|_|_|      _|_|    _|_|    _|      _|    _|_|_|  _|_|_|  V. 1.0.0  " 
echo "                                                               _|        "
echo "                                                               _|      "  
    echo
    echo
        PS3='root@automap~:'
        options=("NMAP Wordpress Username Enum." "NMAP XSS Vuln Check" "NMAP DNS Bruteforce" "NMAP Get Header Information" "NMAP Port Scanning" "Update Tool")
        select opt in "${options[@]}"
         do
         case $opt in
         "NMAP Wordpress Username Enum.")
         command clear
         command nmap -sV --script http-wordpress-users --script-args -f limit=50 www.example.com
         echo
         echo
         echo "Press Ctrl + C"
         ;;
         "NMAP XSS Vuln Check")
         command clear
         command nmap --script exploit -Pn -f www.example.com
         echo
         echo 
         echo "Press Ctrl + C"
         ;;
         "NMAP DNS Bruteforce")
         command clear 
         command nmap -sP --script discovery -f www.example.com 
         echo 
         echo 
         echo "Press Ctrl +C"
         ;;
         "NMAP Get Header Information")
         command clear
         command nmap -p80 --script http-useragent-tester.nse www.example.com 
         echo 
         echo
         echo "Press Ctrl + C"
         ;;
         "NMAP Port Scanning")
         command clear 
         command nmap www.example.com 
         echo 
         echo 
         echo "Press Ctrl +C"
         ;;
         "Update Tool")
         command clear 
         command git pull 
         command clear 
         echo 
         echo "Tool Has Been Updated Successfully!"
         echo " ⠀⠀⠀⠀⠀         ⠀⠀⢀⣴⣿⣿⣿⣷⣶⣴⣾⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀
         ⠀⠀⠀⠀⣀⣤⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣄⠀⠀⠀⠀
         ⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀
         ⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀
         ⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀
         ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠈⢻⣿⣿⣿⣿⣿⣿⣿
         ⢿⣿⣿⣿⣿⣿⣿⣿⡿⠻⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿
         ⢈⣿⣿⣿⣿⣿⣿⣯⡀⠀⠈⠻⣿⣿⣿⠟⠁⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁
         ⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠈⠛⠁⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷
         ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
         ⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁
         ⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀
         ⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀
          ⠀⠀⠀⠉⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠛⠉⠁⠀⠀⠀
         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⠿⢿⡻⠿⣿⣿⣿⠟⠁⠀⠀⠀
"
echo "Press Ctrl + C"⠀
;;
         esac
         done
}
main
