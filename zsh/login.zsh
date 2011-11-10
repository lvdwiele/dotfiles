# disable core dumps
ulimit -S -c 0

# put ~/bin on PATH if you have it
test -d "$HOME/bin" &&
  export PATH="$HOME/bin:$PATH"

# ----------------------------------------------------------------------
# ENVIRONMENT CONFIGURATION
# ----------------------------------------------------------------------

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
