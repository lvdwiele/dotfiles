# disable core dumps
ulimit -S -c 0

# notify of bg job completion immediately
set -o notify

# fuck that you have new mail shit
unset MAILCHECK

# Setup some custom stuff
source ~/.ec2config
