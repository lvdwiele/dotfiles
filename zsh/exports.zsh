# put ~/bin on PATH if you have it
test -d "$HOME/bin" &&
  export PATH="$HOME/bin:$PATH"

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

# enable en_US locale w/ utf-8 encodings if not already configured
: ${LANG:="en_US.UTF-8"}
: ${LANGUAGE:="en"}
: ${LC_CTYPE:="en_US.UTF-8"}
: ${LC_ALL:="en_US.UTF-8"}
export LANG LANGUAGE LC_CTYPE LC_ALL

export CDPATH=.:~/Code/:~/Dropbox

# Set default console Java to 1.6
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home