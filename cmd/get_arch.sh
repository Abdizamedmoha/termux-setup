#bin/bash
#script By Noob Hackers
#The real creator of core files is not us so the credits 
#Goes to real author
#colours
#####3#3#
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
#coding section starts :)
unsupported_arch() {
    printf "${red}"
    echo "[*] Unsupported Architecture\n\n"
    printf "${reset}"
    exit
}
get_arch() {
 echo -e " \e[1;92m[\e[1;0m*\e[1;92m]\e[1;93m Checking device architecture ..."
    case $(getprop ro.product.cpu.abi) in
        arm64-v8a)
            SYS_ARCH=arm64
            ;;
        armeabi|armeabi-v7a)
            SYS_ARCH=armhf
            ;;
        *)
            unsupported_arch
            ;;
    esac
sleep 5
echo -e " "

echo -e "   \e[92m[\e[0m\e[77m✔\e[0m\e[92m]\e[0m\e[93m Supported"  
sleep 2
}
banner(){
#Header Termux-setup 
clear
echo -e "
\e[93m████████╗███████╗██████╗   \e[92m ███████╗███████╗████████╗██╗   ██╗██████╗ 
\e[93m╚══██╔══╝██╔════╝██╔══██╗   \e[92m██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗
\e[93m   ██║   █████╗  ██████╔╝  \e[92m ███████╗█████╗     ██║   ██║   ██║██████╔╝
\e[93m   ██║   ██╔══╝  ██╔══██╗  \e[92m ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝ 
\e[93m   ██║   ███████╗██║  ██║\e[0m██╗\e[92m███████║███████╗   ██║   ╚██████╔╝██║     
\e[93m   ╚═╝   ╚══════╝╚═╝  ╚═╝\e[0m╚═╝\e[92m╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝     
                                                  \e[96m       Version:1.2                               "
echo -e "\x1b[33m╔═══════════════════╦══════════════════════════════════════════╗
\x1b[33m‖ ‣\x1b[0m TOOL NAME       \x1b[0m\x1b[33m‖= \x1b[34mTERMUX SETUP                            \x1b[33m‖
\x1b[33m‖ ‣\x1b[0m DEVELOPER       \x1b[0m\x1b[33m‖= \x1b[34mAbdizamed Mohamed faarah                \x1b[33m‖
\x1b[33m‖ ‣\x1b[0m GITHUB          \x1b[0m\x1b[33m‖= \x1b[34mhttps://github.com/Abdizamedmoha/       \x1b[33m‖
\x1b[33m‖ ‣\x1b[0m TELEGRAM CHANNEL\x1b[0m\x1b[33m‖= \x1b[34m@ABDIZAMED_MOHAMED                      \x1b[33m‖
\x1b[33m╚══════════════════════════════════════════════════════════════╝"
                                                  
}
delete(){
cd $HOME/termux-setup/cmd
rm get_arch.sh
rm storage.sh 
cd ..
bash termux-setup.sh
exit
}
banner
get_arch
delete