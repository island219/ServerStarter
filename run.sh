#!/bin/bash
while read line;
	do
		name=${line%%;*}; next=${line#*;}
                host=${next%%;*}; next=${next#*;}
                port=${next%%;*};
		
		echo -e $name $host $port
		cd /athena/servers/$name/
		./start.sh $host $port
done < servers.txt
