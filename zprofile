# TODO: handle both Mac and Deb stuff, here and anywhere else

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/bin:$PATH"

setopt auto_cd

for file in ~/.zprofile.d/*
do
  source $file
done