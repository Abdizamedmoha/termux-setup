clear
center() {
  termwidth=$(stty size | cut -d" " -f2)
  padding="$(printf '%0.1s' ={1..500})"
  printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}
grn="\e[92m"
cod="\e[93m"
help(){
clear 
sleep 2
echo -e '\e[92m
                 ██╗  ██╗███████╗██╗     ██████╗ 
                 ██║  ██║██╔════╝██║     ██╔══██╗
                 ███████║█████╗  ██║     ██████╔╝
                 ██╔══██║██╔══╝  ██║     ██╔═══╝ 
                 ██║  ██║███████╗███████╗██║     
                 ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     '
echo -e "\e[0m"
echo -e "\x1b[33m╔═══════════════════╦══════════════════════════════════════════╗
\x1b[33m‖ ‣\x1b[0m TOOL NAME       \x1b[0m\x1b[33m‖= \x1b[34mTERMUX SETUP                            \x1b[33m‖
\x1b[33m‖ ‣\x1b[0m DEVELOPER       \x1b[0m\x1b[33m‖= \x1b[34mAbdizamed Mohamed faarah                \x1b[33m‖
\x1b[33m‖ ‣\x1b[0m GITHUB          \x1b[0m\x1b[33m‖= \x1b[34mhttps://github.com/Abdizamedmoha/       \x1b[33m‖
\x1b[33m‖ ‣\x1b[0m TELEGRAM CHANNEL\x1b[0m\x1b[33m‖= \x1b[34m@ABDIZAMED_MOHAMED                      \x1b[33m‖
\x1b[33m╚══════════════════════════════════════════════════════════════╝"
echo -e " "
echo -e " "
}
menu1(){
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m CHAT NOW\e[0m\n"
sleep 0.5
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m MY GITHUB\e[0m\n"
sleep 0.5
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m TELEGRAM \e[0m\n"
sleep 0.5
printf "\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m]\e[0m\e[1;93m MORE TOOLS \e[0m\n"
sleep 0.5
printf "\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m]\e[0m\e[1;93m BACK \e[0m\n"
sleep 0.5
printf "\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m]\e[0m\e[1;93m Exit\e[0m\n"
sleep 0.5
 
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] CHOOSE: \e[0m' option
if [[ $option == 1 || $option == 01 ]]; then
am start -a android.intent.action.VIEW -d https://wa.me/+252906859577/
cd $HOME/termux-setup/cmd
bash help.sh 
elif [[ $option == 2 || $option == 02 ]]; then
am start -a android.intent.action.VIEW -d https://github.com/Abdizamedmoha/
cd $HOME/termux-setup/cmd
bash help.sh 
elif [[ $option == 3 || $option == 03 ]]; then
am start -a android.intent.action.VIEW -d https://t.me/ABDIZAMED_MOHAMED/
cd $HOME/termux-setup/cmd
bash help.sh 
elif [[ $option == 4 || $option == 04 ]]; then
am start -a android.intent.action.VIEW -d https://github.com/Abdizamedmoha/
cd $HOME/termux-setup/cmd 
bash help.sh 
elif [[ $option == 5 || $option == 05 ]]; then
cd $HOME/termux-setup
ls
sleep 2
bash termux-setup.sh
elif [[ $option == 6 || $option == 06 ]]; then
cd $HOME/termux-setup
else
echo
printf "\e[1;93m [>!<] Please enter number between 1-5!\e[0m\n"
sleep 2
cd $HOME/termux-setup/cmd
bash help.sh
fi
exit
}
help
menu1