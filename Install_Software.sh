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
