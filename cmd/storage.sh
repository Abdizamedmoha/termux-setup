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
                                                  \e[96m       Version:1.2\e[0m                               "

echo -e "
       \e[92m-----------------------------------$grn
      |\e[93m FOLLLOW:\e[0m\e[92m$cod github.com/Abdizamedmoha$grn |$grn
      |\e[93m TELEGRAM:\e[0m\e[92m$cod @ABDIZAMED_MOHAMED     $grn |$grn
      |\e[93m CHAT:\e[0m\e[92m$cod wa.me/+252906859577        $grn |$grn
       $grn-----------------------------------$grn
"
#echo $BASH
cd $HOME
#termux-setup-storage
echo -e "\e[34m Please first enable the storage \e[93m Choose \e[92m[\e[93my\e[92m]\e[94m Then \e[92m[\e[93mAllow\e[92m]\\e[0m"
sleep 2
echo -e "\e[92m"
}
del(){
#To delete Storage.sh
cd $HOME/termux-setup/cmd 
rm storage.sh
}
st (){
#termux-setup-storage 
termux-setup-storage
}
back (){
clear
cd $HOME/termux-setup/cmd 
rm storage.sh 
cd ..
rm setup.sh
bash termux-setup.sh
exit
}
banner
st
back

