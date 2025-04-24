#!/bin/bash

url=$1

echo "$url" >> link.txt

end=$(echo "$url" | sed -n 's/.*480p_\([0-9]*\)\.ts.*/\1/p')
master_url=$(echo "$url" | sed "s/_${end}/_\$i/")

for i in `eval echo {000..$end}`; 
	do yt-dlp `eval echo $master_url` || echo $i >> failure.txt; 
done;

for i in `cat failure.txt`;  
	do yt-dlp `eval echo $master_url` || echo $i >> failure1.txt; 
done;

for i in `eval echo {000..$end}`; 
	do ls 480p_$i\ \[480p_$i\].ts  ||  echo $i >> failure2.txt; 
done;

rm -f failure.txt

for i in `cat failure2.txt`;  
	do yt-dlp `eval echo $master_url` || echo $i >> failure.txt; 
done;

for i in `cat failure.txt`;  
	do yt-dlp `eval echo $master_url` || echo $i >> failure_final.txt; 
done;

