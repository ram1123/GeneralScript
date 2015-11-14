#!/bin/sh
sudo -s			# get administrative privilage
apt-get update		# To get the latest package list
apt-get install -f	# To get broken packages

function comment_bar_long
{
        #####   
        #       Function to output a long comment bar
        #       No arguments
        #####

        echo "# -------------------------------------------------------------------"
}

#Reference: http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr

comment_bar_long
echo "Downloading GetDeb and PlayDeb" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&

comment_bar_long
echo "Installing GetDeb" &&
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&

comment_bar_long
echo "Installing PlayDeb" &&
sudo dpkg -i playdeb_0.3-1~getdeb1_all.deb &&

comment_bar_long
echo "Deleting Downloads" &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb

comment_bar_long
sudo add-apt-repository -y ppa:videolan/stable-daily

comment_bar_long
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp

comment_bar_long
sudo add-apt-repository -y ppa:gnome3-team/gnome3

comment_bar_long
sudo add-apt-repository -y ppa:webupd8team/java

comment_bar_long
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager

comment_bar_long
echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add -

comment_bar_long
sudo apt-get update

comment_bar_long
sudo apt-get upgrade

comment_bar_long
sudo apt-get dist-upgrade

comment_bar_long
sudo apt-get install synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager bleachbit openjdk-7-jre oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras ubuntu-wallpapers*

comment_bar_long
comment_bar_long
# This for loop also contains pre-requisite for root.

for software in vim linphone linphone-common linphone-nox git dpkg-dev make g++ gcc gnuplot binutils libx11-dev libxpm-dev libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev glew-utils libmysqlclient-dev libfftw3-dev cfitsio-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev okular-dev xsane pdfshuffler pdfedit minitube subdownloader vlc k3b pdfgrep 
do
	comment_bar_long
	echo "apt-get install ${software}"
	apt-get install $software -y 
	if [ $? -ne 0 ]
	then
		echo "ERROR($?):Failed to install $software"
		echo "Exiting installation..."
		break
	fi 
done

################################################################################
#		DOWNLOAD INTEL GRAPHICS CARD
################################################################################
wget https://download.01.org/gfx/ubuntu/14.04/main/pool/main/i/intel-linux-graphics-installer/intel-linux-graphics-installer_1.0.7-0intel1_amd64.deb
sudo dpkg -i intel-linux-graphics-installer_1.0.7-0intel1_amd64.deb
exit
