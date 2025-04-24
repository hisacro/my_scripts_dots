alias wgr='wg-quick down wg0 > /dev/null; wg-quick up wg0'
alias wgd='wg-quick down wg0'
alias tit='printf "{ \"command\": [\"get_property\", \"filtered-metadata\"] }\n" | socat - /tmp/mpvsocket | jq ".data[]"'
alias kp='killall xfce4-panel'
alias Dis2='xrandr --output HDMI-2 --auto --primary --output eDP-1 --off' 
alias Dis2_vga='xrandr --output VGA-1 --auto --primary --output LVDS-1 --off && herbstclient detect_monitors'
alias Dis1='xrandr --output eDP-1 --auto --primary --output HDMI-2 --off' 

alias ard='while true; do head -n1 /dev/ttyACM0 | grep true && adb shell input keyevent 27 && date +%s && snap ; done'
alias noks1='scrcpy -b2M -m800 --max-fps 15 --render-driver=software'
alias noks='scrcpy -b2M -m800 --max-fps 15' 
alias pdf_reduce='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -r150 -sOutputFile=output.pdf' 
# heimdall flash --RECOVERY twrp-3.5.0_9-0-chagallwifi.img --no-reboot

alias mpva='mpv --profile=ytdla'
alias mpv200='mpv --profile=ytdl200'
alias mpv240='mpv --profile=ytdl250'
alias mpv360='mpv --profile=ytdl360'
alias mpv480='mpv --profile=ytdl480'
alias mpv720='mpv --profile=ytdl720'

alias gpt='. /home/hisacro/gpt/bin/activate && terminalgpt new'

alias dummi='nmcli device wifi rescan && nmcli device wifi connect dummi password "2.1.4.5.."'

alias ssd1='sudo umount /dev/sda4 && mkdir /tmp/ssd1 && sudo mount /dev/sda4 /tmp/ssd1'

alias dark_list='vim ~/Music/darkwave/list'
alias alsa='alsamixer --card=0'

# julia package
alias julia_pack='echo using DelimitedFiles, DynamicalSystems, GLMakie, Plots, OrdinaryDiffEq, ProgressMeter'

# disser
alias disser='cd ~/Documents/dissertation_2023/du'
alias presen='cd ~/Documents/dissertation_2023/presentation'
alias animate='cat ~/Packages/rotor_animation/rotor_alpha_animation_sample_1_7_0_8.ji | xclip'
alias project='xrandr --output HDMI-1 --mode 1024x768 --same-as eDP-1'
alias project_vga='xrandr --output VGA-1 --mode 1024x768 --same-as LVDS-1'

# irc
alias ircnow='irssi --config ~/.irssi/config_ircnow' 
alias tilde='irssi --config ~/.irssi/config_tilde' 

# capture card for rpi
alias rpi_capture='ffplay -f v4l2 -input_format mjpeg -video_size 1980x1080 -framerate 30 -i /dev/video2'

#telegram_term
alias tg='cd /home/hisacro/Packages/tg/ && source ./bin/activate && tg'

#filmgrain
alias filmgrainer='cd /home/hisacro/Packages/filmgrainer/ && source ./bin/activate && filmgrainer'

# elevate - for video manupulations
alias combine='cat 480p*.ts | ffmpeg  -i pipe: -c:a copy -c:v copy output.mp4'
alias compress='time ffmpeg -i output.mp4 -vcodec libx264 -crf 28 -preset faster -tune film -vf scale=-2:480'

# move recently downloaded to tmp
alias domvtmp='cp ~/Downloads/`ls -Art ~/Downloads | tail -n 1` /tmp/'

# pronounciation
alias en_speak='espeak -v en-gb-x-gbclan'
