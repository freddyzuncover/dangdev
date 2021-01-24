#! /bin/bash

# Make Instance Ready for Remote Desktop or RDP

b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'

clear

# Branding

printf """$c$b
      _____      _       _         _    _            _  
     / ____|    | |     | |       | |  | |          | | 
    | |     ___ | | __ _| |__     | |__| | __ _  ___| | _____ 
    | |    / _ \| |/ _\` | '_ \    |  __  |/ _\` |/ __| |/ / __|
    | |___| (_) | | (_| | |_) |   | |  | | (_| | (__|   <\__ \\
     \_____\___/|_|\__,_|_.__/    |_|  |_|\__,_|\___|_|\_\___/           
$endc$enda""";



# Used Two if else type statements, one is simple second is complex. So, don't get confused or fear by seeing complex if else statement '^^.

# Creation of user
printf "\n\nĐang tạo người dùng... " >&2
if sudo useradd -m dang &> /dev/null
then
  printf "\rNgười dùng đã được tạo $endc$enda\n" >&2
else
  printf "\r$r$b Có lỗi xảy ra $endc$enda\n" >&2
  exit
fi

# Add user to sudo group
sudo adduser dang sudo

# Set password of user to 'root'
echo 'dang:1234' | sudo chpasswd

# Change default shell from sh to bash
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd

# Initialisation of Installer
printf "\n\n$c$b    Đang tải trình cài đặt $endc$enda" >&2
if sudo apt-get update &> /dev/null
then
    printf "\r$g$b    Đã tải trình cài đặt $endc$enda\n" >&2
else
    printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2
    exit
fi

# Installing Chrome Remote Desktop
printf "\n$g$b    Đang cài Chrome Remote Desktop $endc$enda" >&2
{
    wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
    sudo dpkg --install chrome-remote-desktop_current_amd64.deb
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    Chrome Remote Desktop đã được cài $endc$enda\n" >&2 ||
{ printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2; exit; }



# Install Desktop Environment (XFCE4)
printf "$g$b    Đang cài Desktop Environment $endc$enda" >&2
{
    sudo DEBIAN_FRONTEND=noninteractive \
        apt install --assume-yes xfce4 desktop-base
    sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
    sudo apt install --assume-yes xscreensaver
    sudo systemctl disable lightdm.service
} &> /dev/null &&
printf "\r$c$b    Desktop Environment đã được cài $endc$enda\n" >&2 ||
{ printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2; exit; }



# Install Google Chrome
printf "$g$b    Đang cài Google Chrome $endc$enda" >&2
{
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg --install google-chrome-stable_current_amd64.deb
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    Google Chrome đã được cài $endc$enda\n" >&2 ||
printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2



# Install CrossOver (Run exe on linux)
printf "$g$b    Đang cài CrossOver $endc$enda" >&2
{
    wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_20.0.2-1.deb
    sudo dpkg -i crossover_20.0.2-1.deb
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    CrossOver đã được cài $endc$enda\n" >&2 ||
printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2



# Install OBS-Studio (Livestream)
printf "$g$b    Đang cài Obs-studio $endc$enda" >&2
{
    sudo apt install ffmpeg -y
    sudo add-apt-repository ppa:obsproject/obs-studio -y
    sudo apt install obs-studio -y
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    OBS-Studio đã được cài $endc$enda\n" >&2 ||
printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2

# Install VLC Media Player 
printf "$g$b    Đang cài VLC Media Player $endc$enda" >&2
{
    sudo apt install vlc -y
} &> /dev/null &&
printf "\r$c$b    VLC Media Player đã được cài $endc$enda\n" >&2 ||
printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2

# Install other tools like nano
sudo apt-get install gdebi -y &> /dev/null
sudo apt-get install vim -y &> /dev/null
printf "$g$b    Đang cài đặt các công cụ khác $endc$enda" >&2
if sudo apt install nautilus nano -y &> /dev/null
then
    printf "\r$c$b    Đã cài đặt các công cụ khác $endc$enda\n" >&2
else
    printf "\r$r$b    Có lỗi xảy ra $endc$enda\n" >&2
fi



printf "\n$g$b    Cài đặt hoàn thành! $endc$enda\n\n" >&2



# Adding user to CRP group
sudo adduser dang chrome-remote-desktop

# Finishing Work
printf '\Click vào  http://remotedesktop.google.com/headless và dán code Debian vào đây\n'
read -p "Dán vào đây: " CRP
su - dang -c """$CRP"""

printf "\n$c$b I hope everything done correctly if mistakenly wrote wrong command or pin, Rerun the current box or run command 'su - dang -c '<CRP Command Here>' $endc$enda\n" >&2
printf "\n$c$b https://remotedesktop.google.com/access to access your VM, do not close browser tab to keep colab running ' $endc$enda\n" >&2
printf "\n$g$b Finished Succesfully$endc$enda"
