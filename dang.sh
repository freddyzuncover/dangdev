#! /bin/bash

clear

printf "\n\nĐang tạo người dùng... " >&2
if sudo useradd -m dang &> /dev/null
then
  printf "\rNgười dùng đã được tạo $endc$enda\n" >&2
else
  printf "\r$r$b Có lỗi xảy ra $endc$enda\n" >&2
  exit
fi

# Add user
sudo adduser dang sudo

# Set password of user to 'dang'
echo 'dang:1234' | sudo chpasswd

sudo su
apt update
apt install wget
apt -y install xfce4
apt -y install firefox
apt -y install screen
screen

# Installing Chrome Remote Desktop
printf "\n$g$b    Đang cài Chrome Remote Desktop $endc$enda" >&2
{
    wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
    sudo dpkg --install chrome-remote-desktop_current_amd64.deb
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    Chrome Remote Desktop đã được cài $endc$enda\n" >&2 ||
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

# Adding user to CRP group
sudo adduser dang chrome-remote-desktop

# Finishing Work
printf '\Click vào  http://remotedesktop.google.com/headless và dán code Debian vào đây\n'
read -p "Dán vào đây: " CRP
su - dang -c """$CRP"""

printf "\n$c$b I hope everything done correctly if mistakenly wrote wrong command or pin, Rerun the current box or run command 'su - dang -c '<CRP Command Here>' $endc$enda\n" >&2
printf "\n$c$b https://remotedesktop.google.com/access to access your VM, do not close browser tab to keep colab running ' $endc$enda\n" >&2
printf "\n$g$b Finished Succesfully$endc$enda"
