# shellcheck shell=bash
about-alias 'custom aliases in bash-it'
# echo "customs aliases main"
# -- aliases ---
alias p="pnpm"
alias m="make"
alias gw='./gradlew'
alias g='git'
alias ghb='gh browse'

# --- kubectl ---
alias k='kubectl'

# --- "iterm ." will open new iterm in current dir from any terminal, can pass any dir to open ---
alias iterm='open -a iTerm'

# --- starts webserver in current dir ---
alias webserver="python3 -m http.server 8090"

# shows UTC time
alias utcnow='(TZ=UTC date '\''+%Y.%m.%d_%H.%M'\'')'

alias python='python3'
alias py='python3'

alias ll='ls -lahG'

alias docker-prune-images="docker image prune -a -f"
alias docker-prune-system="docker system prune -a"
alias docker-prune-volumes="docker volume prune"

# See http://www.shellperson.net/using-sudo-with-an-alias/
# this allows sudo to call alias such as 'sudo ll'
alias sudo='sudo '

# This helps me edit files that my user isn't the owner of
alias edit='SUDO_EDITOR="open -FWne" sudo -e'

# The alias that takes me here - to editing these very aliases
alias edit_profile='open -e ~/.bash_profile'
alias edit_aliases='open -e ~/.bash_aliases'
alias edit_hosts='edit /etc/hosts'

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# flush dns cache
alias dnsflush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo macOS DNS Cache Reset'

# pathfinder Open Here to open current dir
alias oh='open -a "Path Finder.app" .'
# alias oh='open -a Finder .'

# disk free
alias df='df -H'
# show sorted sizes for files and dirs in folder.
alias size-files='du -ch | sort -h'
alias size-dirs='du -h -d 1 | sort -h'

# show what ports are running and exposed
alias ports='sudo lsof -iTCP -sTCP:LISTEN -P'

# Speed-up Terminal load time by clearing system logs
alias speedup="sudo rm -rf /private/var/log/asl/*"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; speedup"

# IP addresses #
# To get my external IP
alias myip='curl icanhazip.com'
# Other IP / Method
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig en0 inet | grep 'inet ' | awk ' { print $2 } '"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Pin to the tail of long commands for an audible alert after long processes
# curl http://downloads.com/hugefile.zip; lmk
alias lmk='say "Process complete."'
alias growl='osascript -e "display notification \"Process complete\" with title \"scriptname\""'

# dockers
# open bullseye builder base and map current dir to /project
alias bullseye='docker run -it --rm -v $PWD:/project yakworks/bullseye:base /bin/bash'
alias busybox='docker run -it --rm -v $PWD:/project busybox'

# source tree open current dir
alias st='stree .'

# java switch
alias jdk17='sdk use java 17.0.4-zulu'
alias jdk11='sdk use java 11.0.16-zulu'
alias jdk8='sdk use java 8.0.342-zulu'
