# listing files
alias ls='ls -alG'
alias ltr='ls -ltrG'
alias lth='ls -tG|head'
alias lh='ls -SGhl | less'
alias tf='tail -f -n $1 $2'

# general shortcuts
alias mv='mv -i'
alias md=mkdir
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='cd .. ; cd ..' #also see up() in functions.sh
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders
alias todo='grep -ni TODO *'
alias rtodo='grep -niR TODO *'
alias mkgo='mkdir $1 && cd $1'
alias tophist="history | awk '{print $4}' | sort | uniq -c | sort -rn | head"
alias conf="mate ~/dotfiles"


# ps & other stuff
alias pgrep='ps ax | grep -v grep | grep $1'
alias topmem='ps -eo pmem,pcpu,rss,vsize,args | sort -k 1 | tail -10'  # top 10 memory processes
alias topcpu='ps -eo pmem,pcpu,rss,vsize,args | sort -k 2 | tail -10'  # top 10 cpu processes

alias huh="whatis" # much shorter

# Recursively remove .svn dirs
alias killsvn="find . -name '.svn' -type d -exec rm -rf {} \;"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# File size
alias fs="stat -f \"%z bytes\""

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# show what ports are open locally
alias local_ports='sudo nmap -sT -O localhost'

# GIT
#alias gl='git log --oneline --decorate'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
compdef _git gl=git-log

alias gpr='git pull --rebase'
compdef _git glr=git-pull

alias gs='git status'
compdef _git gs=git-status

alias gd='git diff'
compdef _git gd=git-diff

alias gp='git pull'
compdef _git gp=git-pull

alias gps='git push'
compdef _git gps=git-push

alias gpm='git push origin master'
compdef _git gpm=git-push

alias gco='git checkout'
compdef _git gco=git-checkout

alias gba='git branch -a'
compdef _git gba=git-branch

alias gst='git stash'
compdef _git gst=git-stash

alias gstp='git stash pop'
compdef _git gstp=git-stash-pop



alias undopush="git push -f origin HEAD^:master" # Undo a `git push`
alias hub="open \`git config -l | grep 'remote.origin.url' | sed -En \ 's/remote.origin.url=git(@|:\/\/)github.com(:|\/)(.+)\/(.+).git/https:\/\/github.com\/\3\/\4/p'\`"
alias gitx='gitx --commit'

### Project specific aliases

# LPP ADMIN
alias ldap="ssh ruby@10.200.43.164 -L 2000:10.40.2.78:389 -N"
alias ldapacc="ssh apachemppvo@10.200.43.168 -L 2000:10.40.2.78:389 -N"

### FUN STARTS HERE ###

# Awesome stuff I never really use
# Grabbed from https://github.com/mathiasbynens/dotfiles
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
alias hax="growlnotify -a 'Activity Monitor' -m 'WTF R U DOIN'"

# Fun stuff
alias starwars="telnet towel.blinkenlights.nl"