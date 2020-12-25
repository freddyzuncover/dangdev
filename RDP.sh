#! /bin/bash
printf "Đang thiết lập máy chủ ảo... " >&2
{
sudo useradd -m Dang
sudo adduser Dang sudo
echo 'Dang:1234' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser Dang chrome-remote-desktop
} &> /dev/null &&
printf "\nThiết lập thành công! " >&2 ||
printf "\nCó lỗi xảy ra! Hãy thử lại sau " >&2
printf '\nKiểm tra https://remotedesktop.google.com/headless  Sao chép đường dẫn dành cho Debian/Linux vào đây:'
read -p "\nDán vào đây: " CRP
su - Dang -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nNâng cấp thành công " >&2
else
    printf "\n\nCó lỗi xảy ra " >&2
fi
