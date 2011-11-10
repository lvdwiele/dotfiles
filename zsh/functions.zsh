function tlog() {
  if test "$1" = ""; then
    tail -f log/development.log
  else
    tail -f "log/$1.log"
  fi
}

function rvm_unicode_symbol() {
  sym=`$HOME/.rvm/bin/rvm-prompt u`

  if [[ -n $sym ]]; then
    echo "${sym} ";
  else
    echo "";
  fi
}
