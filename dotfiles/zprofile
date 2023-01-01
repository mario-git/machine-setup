function macosx_zprofile {
    eval "$(/opt/homebrew/bin/brew shellenv)"
}

[[ $(uname -s) == "Darwin" ]] && macosx_zprofile

export PATH="$HOME/bin:$PATH"
alias path="echo $PATH | tr  ':'  '\n' | nl"

setopt auto_cd

for file in ~/.zprofile.d/*
do
  source $file
done