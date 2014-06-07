#!/bin/bash
while read line;
	do
		name=${line%%;*}; next=${line#*;}
                host=${next%%;*}; next=${next#*;}
                port=${next%%;*};
		
		echo -e $name $host $port
		cd /home/servers/servers/$name/
		sudo -u servers mark2 start
done < servers.txt
