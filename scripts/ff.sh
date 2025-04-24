#!/bin/sh

ffmpeg -re -stream_loop 1 -i ~/Videos/1.avi -f v4l2 /dev/video4 &&  ffmpeg -re -stream_loop 10 -i ~/Videos/4.avi -f v4l2 /dev/video4 &&  ffmpeg -re -stream_loop 10 -i ~/Videos/5.avi -f v4l2 /dev/video4 &&  ffmpeg -re -stream_loop 9 -i ~/Videos/6.avi -f v4l2 /dev/video4 && ffmpeg -re -stream_loop 5 -i ~/Videos/7.avi -f v4l2 /dev/video4 &&  ffmpeg -re -stream_loop 15 -i ~/Videos/3.avi -f v4l2 /dev/video4 &&  ffmpeg -re -stream_loop -1 -i ~/Videos/6.avi -f v4l2 /dev/video4 
