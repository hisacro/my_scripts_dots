#!/bin/sh

end=$1

rm -f failures.txt 
for i in `eval echo {000..$end}`; do ls 480p_$i\ \[480p_$i\].ts  ||  echo $i >> failures.txt; done
#cat 480*.ts | ffmpeg  -i pipe: -c:a copy -c:v copy output.mp4
#ffmpeg -i output.mp4 -vcodec libx264 -crf 23 -preset faster -tune film -vf scale=-2:480 output_comp.mp4
