#!/bin/env bash

for ((i=1; i<8; i++))
do
	eval color_${i}=$(sed "$((i+1))q;d" ~/.cache/wal/colors)
	
done

for i in {1..7};do
printf "
\033[0;3${i}m┌──────────┐
│ $(tput setaf 1)$color_1$(tput sgr0)  \033[0;3${i}m│▒
│ $(tput setaf 4)$color_4$(tput sgr0)  \033[0;3${i}m│▒🮖
╞══════════╡▒🮖🮗
│ $(tput setaf 6)$color_6$(tput sgr0)  \033[0;3${i}m│▒🮖🮗 
│ $(tput setaf 7)$color_7$(tput sgr0)  \033[0;3${i}m│▒🮖🮗 
└──────────┘▒🮖🮗 
 ▒▒▒▒▒▒▒▒▒▒▒▒🮖🮗 
  🮖🮖🮖🮖🮖🮖🮖🮖🮖🮖🮖🮖🮗 
    🮗🮗🮗🮗🮗🮗🮗🮗🮗🮗🮗\n"
                
done;
    
printf "\n"
