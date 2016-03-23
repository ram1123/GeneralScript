# Script to copy/move Files at multiple places, etc

for f in /media/ramkrishna/*/; do
	echo $f
	cp -r /home/ramkrishna/Videos/YouTube_Music/Vivah_movie/ $f &
done
###	command 
complete=0
while [ "$complete" != "1" ]
do
	if [[ $(ps | grep cp) ]]; then
	    echo "Files are copying......."
	    ps | grep cp
	    echo "ram $complete"
	    date
	else
	    echo "DONE $complete"
	    complete=1
	    echo "ram $complete"
	    date
	fi
	sleep 1
done

## for unzip some files
#for f in /media/ramkrishna/*/*.zip; do
#	echo $f
#	unzip -j $f
#	rm $f
#done
