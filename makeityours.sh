#!/bin/sh
# User specific environment and startup programs

################COLOR############################
# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset
ALERT=${BWhite}${On_Red} # Bold White on red background
LS_COLORS='rs=0:di=01;35:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
export LS_COLORS
################################################
export PKGUPD=apt-get  
alias ll='ls -lha --color'
alias lr='ls -lrt --color'
alias lrg='ls -lrt --color| grep -i '
alias pf='sudo ps -ef |grep -v grep | grep -i '
alias fuck='sudo $(history -p \!\!)'
alias vik='sudo vi'
alias maj="sudo $PKGUPD update;sudo $PKGUPD upgrade; sudo $PKGUPD dist-upgrade"

alias cdwww='cd /var/www/'
alias cdlogap='cd /var/log/apache2'
alias cdinit='cd /etc/init.d'


alias vi.p="cd /home/younes; vi .profile; cd -"

alias esp20="du -k * | sort -nr |head -20"
alias esp100="du -k * | sort -nr |head -100"
alias freem="free -m; sync; sudo su - ; echo 3 > /proc/sys/vm/drop_caches ; free -m"
alias nmona="export NMON=mndc; nmon;"
alias cdconfap="cd /etc/apache2/sites-available"
alias cdlogap="cd /var/log/apache2"
alias cp="rsync -a --stats --progress"
alias sudosuX="sudo cp ~/.Xauthority /root/; sudo su - "
alias vmesp="sudo find . -name *.qcow2 -exec du -sh {} \; -exec lsof {} \;"
alias alive="nmap -n -sP 10.254.239.0/24"

echo ----------------------------------------------------------------------
echo Welcome $LOGNAME
echo ----------------------------------------------------------------------
echo ----------------------------------------------------------------------
echo -e "     $Red ALIASES $White"
alias
echo ----------------------------------------------------------------------
DISPLAYA=`echo $SSH_CLIENT | awk '{ print $1}'`
export DISPLAY=$DISPLAYA:0
echo DISPLAY=$DISPLAY
echo -e "$Green LIMITS : $White"
ulimit -a
echo -e "$Green FREE M : $White"
free -m
echo ================================
echo -e "$Cyan FREE Space : $White"
df -h  
echo ================================
echo -e "$Yellow CONNECTED USERS : $White"
who
echo ==========================================================
echo -e "$Red `uptime` $White"

if [ "$LOGNAME" = "frayos" ];
then
echo ----------------------------------------------------------------------
fi
rm makeityours.sh
wget https://github.com/neogta/profile_nix/raw/master/makeityours.sh makeityours.sh         1>/dev/null 2>&1 ; 
chmod +x makeityours.sh