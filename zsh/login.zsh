# disable core dumps
ulimit -S -c 0

# put ~/bin on PATH if you have it
test -d "$HOME/bin" &&
  export PATH="$HOME/bin:$PATH"

# ----------------------------------------------------------------------
# ENVIRONMENT CONFIGURATION
# ----------------------------------------------------------------------

# detect interactive shell
case "$-" in
    *i*) INTERACTIVE=yes ;;
    *)   unset INTERACTIVE ;;
esac

# detect login shell
case "$0" in
    -*) LOGIN=yes ;;
    *)  unset LOGIN ;;
esac

# enable en_US locale w/ utf-8 encodings if not already configured
: ${LANG:="en_US.UTF-8"}
: ${LANGUAGE:="en"}
: ${LC_CTYPE:="en_US.UTF-8"}
: ${LC_ALL:="en_US.UTF-8"}
export LANG LANGUAGE LC_CTYPE LC_ALL

# notify of bg job completion immediately
set -o notify

# fuck that you have new mail shit
unset MAILCHECK

# Setup some custom stuff
source ~/.ec2config

# -------------------------------------------------------------------
# MOTD / FORTUNE
# -------------------------------------------------------------------

test -n "$INTERACTIVE" -a -n "$LOGIN" && {
   uname -npsr
   uptime
   
   echo "Today in history:"
   cat /usr/share/calendar/calendar.history | grep `date +'%m/%d'` | awk 'BEGIN { srand() } { print rand() "\t" $0 }' | sort -n | cut -f2- | head -n 1 | awk '{print "\t", $0}'
}