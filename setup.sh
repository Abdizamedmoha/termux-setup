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
echo -e " "
sleep 2
echo -e " "
sleep 2
echo -e " "
sleep 2
}
check(){
cd $HOME/termux-setup/cmd 
bash storage.sh
cd $HOME/termux-setup/cmd 
bash get_arch.sh
clear
sleep 3
cd $HOME/termux-setup
bash termux-setup.sh
exit
}
banner
check
start