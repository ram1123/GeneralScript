MarkDown=1
ROOTcern=1
latexx=1
redshift=1	# software for eye-safty

vlc=1

cd /tmp/
##################################################
#	MEDIA RELATED
##################################################
if [[ "${vlc}" == "1" ]]; then
	sudo apt install vlc
	sudo apt install youtube-dl
	sudo apt install shutter
fi


##################################################
#	Study RELATED
##################################################
if [[ "${ROOTcern}" == "1" ]]; then
	echo -e "Going to install ROOT-A data analysis framework"
	sudo apt install vim
	sudo apt install vim-gtk
fi


if [[ "${latexx}" == "1" ]]; then
	echo -e "Going to install latex"
	sudo apt install latex
	sudo apt install texlive texstudio
	sudo apt install texlive-latex-extra
fi


# Reference: 
#https://remarkableapp.github.io/
if [[ "${MarkDown}" == "1" ]]; then
	wget https://remarkableapp.github.io/files/remarkable_1.87_all.deb 
	#sudo apt install python-pip
	#pip install markdown-editor
	xdg-open remarkable_1.87_all.deb 
fi

#Ref: http://askubuntu.com/questions/493507/flux-for-ubuntu-14-04-possible
if [[ "${redshift}" == "1" ]]; then
	sudo apt install redshift gtk-redshift
fi	

cd -
