#!/bin/bash
while read line;
	do
		name=${line%%;*}; next=${line#*;}
		host=${next%%;*}; next=${rest#*;}
		post=${next%%;*};

		cd /athena/servers/$name/
		./start.sh $host $port
done < servers.txt
