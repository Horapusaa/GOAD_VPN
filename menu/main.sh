#!/bin/bash
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'

function create_user() {
        cd ~/VIP-SSH/menu/
        python3 add_user.py
}

function reboot_vps() {
        sudo reboot
}

function delete_user() {
        cd ~/VIP-SSH/menu/
        python3 del_user.py
}

function speedtest() {
        cd ~/VIP-SSH/menu/
        python3 speed_test.py
}

function banner() {
        cd ~/VIP-SSH/menu/
        python3 change_banner.py
} 
clear
echo " ";
echo -e "\e[36m※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※
※                                                   ※
※\e[0m       [WELCOME MY SYSTEM HoraPusaVPN VPS]         \e[36m※
※                                                   ※
※\e[0m        \e[32mTelegram\e[0m    \e[33m:\e[0m \e[34m@hora_pusa\e[0m                   \e[36m※
※                                                   ※
※\e[0m         COPYRIGHT \e[31m©\e[0m HoraPusaVPN 2021 \e[31m®\e[0m            \e[36m※
※                                                   ※
※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※ ※\e[0m
";
PS3='
Please Enter Your Choice From 1 → 20 : '
options=(
"Add User" "Delete User" "Speedtest Server" "Change Banner" "Restart Server")
select opt in "${options[@]}"
do
    case $opt in
        "Add User")
            create_user
                break
            ;; 
        "Delete User")
            delete_user
                break
            ;;
        "Speedtest Server")
            speedtest       
                break
            ;;
        "Change Banner")
            banner
                break
            ;;
        "Restart Server")
            reboot_vps
                break
            ;;    
        *) echo invalid option;;
    esac
done

                                                                   
