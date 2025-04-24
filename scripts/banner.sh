#!/bin/sh

banner() {
       msg="+ $* +"
       edge=$(($(echo $* | wc -m)-1))
       echo $edge
       echo $((edge%3))
       edge=$(yes  "/--=/" | head -$((edge/3+1)) | \
	       paste -s -d " " - | sed "s/\/\ \///g" | tr / +)

      # mod 3 cut --complement -c cut $((edge + 2)) 
      # mod 3 ==1 
      # mod 3 ==2 -c add 2
       echo $edge
       echo $msg
       echo $edge
}

banner $*

