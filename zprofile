# TODO: handle both Mac and Deb stuff, here and anywhere else
eval "$(/opt/homebrew/bin/brew shellenv)"
alias editsrc="sudo vim /etc/apt/sources.list"

export PATH="$HOME/bin:$PATH"
alias path="echo $PATH | tr  ':'  '\n' | nl"

setopt auto_cd

for file in ~/.zprofile.d/*
do
  source $file
done