#!/bin/bash
command clear

banner() {
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
echo " _|    _|    _|_|_|      _|_|    _|_|    _|      _|    _|_|_|  _|_|_|   " 
echo "                                                               _|        "
echo "                                                               _|      "  
    echo
    echo

}

    menu() {
        echo
    echo "1 Wordpress Username Enumeration"
    echo "2 NMAP XSS Vulnerability Check"
    echo "3 NMAP DNS Bruteforce"
    echo "4 NMAP Get Header Information"
    echo "5 NMAP Port Scanning"
    echo "6 Update Tool"
    read -p $'Choose an option:' choice

    if [[ $choice == "1" ]] then
    wordpressenum
    elif [[ $choice == "2" ]] then
    xssvuln
    elif [[ $choice == "3" ]] then
    dnsbrute
    elif [[ $choice == "4" ]] then
    headerinfo
    elif [[ $choice == "5" ]] then 
    portscan
    elif [[ $choice == "6" ]] then
    update 
    else
    clear
    banner
    menu
    fi
    }


    wordpressenum() {
command clear 
    echo
    echo
    echo "Enter Hostname Without https://"
    echo
    read hostname
     command nmap -sV --script http-wordpress-users --script-args -f $hostname
     printf "\n"
     echo "Sleep Is Set To 100, Exit Tool To Restart"
     sleep 100
     command clear
     banner
     menu
     }
     
     xssvuln() {
     command clear
     echo
     echo
     echo "Enter Hostname Without https://"
     echo
     read hostname
     command nmap --script exploit -Pn -f $hostname
     echo
     echo 
     printf "Sleep Is Set To 100, Exit Tool To Restart"
     sleep 100
     command clear
     banner
     menu
     }
     
     dnsbrute() {
     command clear
     echo
     echo
     echo "Enter Hostname Without https://"
     echo
     read hostname 
     command nmap -sP --script discovery -f $hostname 
     printf "\n" 
     printf "\n" 
     printf "Sleep Is Set To 100, Exit Tool To Restart"
     sleep 100
     command clear
     banner
     menu
     }
     
     headerinfo() {
     command clear
     echo
     echo
     echo "Enter Hostname Without https://"
     echo
     read hostname
     command nmap -p80 --script http-useragent-tester.nse $hostname 
     echo 
     echo
     echo "Sleep Is Set To 100, Exit Tool To Restart"
     sleep 100
     command clear
     banner
     menu
     }
     portscan() {
     command clear 
     echo
     echo
     echo "Enter Hostname Without https://"
     echo
     read hostname
     command nmap $hostname
     echo
     echo 
     echo "Sleep Is Set To 100, Exit Tool To Restart"
     sleep 100
     command clear
     banner
     menu
     }
     update() {
     command clear 
     command git pull 
     command clear 
     echo 
     echo "Tool Has Been Updated Successfully!"
     echo  "              ⢀⣴⣿⣿⣿⣷⣶⣴⣾⣿⣿⣿⣦⡀"⠀⠀⠀⠀⠀⠀⠀⠀
     echo  "         ⣀⣤⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣄"⠀⠀⠀⠀
     echo  "⠀ ⠀   ⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷"⠀⠀⠀
     echo  "  ⠀   ⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿."⠀⠀
     echo  "   ⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀"
     echo  "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠈⢻⣿⣿⣿⣿⣿⣿⣿"
     echo  "   ⢿⣿⣿⣿⣿⣿⣿⣿⡿⠻⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿"
     echo  "   ⢈⣿⣿⣿⣿⣿⣿⣯⡀⠀⠈⠻⣿⣿⣿⠟⠁⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁"
     echo  "   ⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠈⠛⠁⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷"
     echo  "   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
     echo  "    ⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁"
     echo⠀ "       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇"⠀⠀
     echo⠀⠀"      ⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀"⠀
     echo ⠀"        ⠉⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠛⠉⠁"⠀⠀⠀
     echo⠀⠀"⠀           ⠀⠀⠻⣿⣿⣿⠿⢿⡻⠿⣿⣿⣿⠟⠁"⠀⠀⠀
     echo "Sleep Is Set To 100, Exit To Restart"
     sleep 100
    }  
    banner
    menu
