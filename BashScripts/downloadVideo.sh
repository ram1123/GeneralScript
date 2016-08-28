#!/bin/bash
#####################################################
#
#	PARAMETERS TO MODIFY
#
#####################################################

ifFileOrURL="file" 	# file or url

playlistURL=https://www.youtube.com/watch?v=fV_ho7ks8SY		# Url link
BatchFile=/home/ramkrishna/Videos/songs.dat	#Text file with youtube url

downloadDirectory=/home/ramkrishna/Videos/SongsYoutube
#downloadDirectory=/tmp

format="bothMP3MP4" 	# def or mp3 or mp4 or bothMP3MP4

#####################################################

RED='\033[0;31m'
NC='\033[0m' # No Color


if [[ "${ifFileOrURL}" == "file" ]]; then
	if [[ "${format}" == "default" ]]; then 
		echo -e "${RED}youtube-dl --restrict-filenames --output ${downloadDirectory}/\"%(title)s.%(ext)s\"  --batch-file ${BatchFile}${NC}"
		youtube-dl --restrict-filenames --output ${downloadDirectory}/"%(title)s.%(ext)s"  --batch-file ${BatchFile}
	else
		if [[ "${format}" == "bothMP3MP4" ]]; then 
			echo -e "${RED}youtube-dl --restrict-filenames --output ${downloadDirectory}/\"%(title)s.%(ext)s\" --extract-audio --audio-format ${format}  --batch-file ${BatchFile}${NC}"
			youtube-dl --restrict-filenames --output ${downloadDirectory}/"%(title)s.%(ext)s" --batch-file ${BatchFile}
			youtube-dl --restrict-filenames --output ${downloadDirectory}/"%(title)s.%(ext)s" --extract-audio --audio-format mp3 --audio-quality 0 --batch-file ${BatchFile}
		else
			echo -e "${RED}youtube-dl --restrict-filenames --output ${downloadDirectory}/\"%(title)s.%(ext)s\" --extract-audio --audio-format ${format}  --batch-file ${BatchFile}${NC}"
			youtube-dl --restrict-filenames --output ${downloadDirectory}/"%(title)s.%(ext)s" --extract-audio --audio-format ${format}  --batch-file ${BatchFile}
		fi	
	fi
fi


if [[ "${ifFileOrURL}" == "url" ]]; then
	if [[ "${format}" == "default" ]]; then 
		echo -e "${RED}youtube-dl --restrict-filenames --output ${downloadDirectory}/\"%(title)s.%(ext)s\"  --batch-file ${playlistURL}${NC}"
		youtube-dl --restrict-filenames --output ${downloadDirectory}/"%(title)s.%(ext)s"  --batch-file ${playlistURL}
	else
		echo -e "${RED}youtube-dl --restrict-filenames --output ${downloadDirectory}/\"%(title)s.%(ext)s\" --extract-audio --audio-format ${format} --batch-file ${playlistURL} ${NC}"
		youtube-dl --restrict-filenames --output ${downloadDirectory}/"%(title)s.%(ext)s" --extract-audio --audio-format ${format} --batch-file ${playlistURL}
	fi	
fi
