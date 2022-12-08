## p10k

# Enable Powerlevel10k instant prompt. (Should stay close to) the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## zplug

source ~/.zplug/init.zsh

zplug "agkozak/zsh-z"
zplug "lib/completion", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

## aliases

# aws-cli
alias awsco="vim ~/.aws/config"
alias awscr="vim ~/.aws/credentials"

# git
alias g="git status"
alias ga="git add"
alias gaa="git add ."
alias gb="git checkout"
alias gbl="git branch --list"
alias gbn="git checkout -b"
alias gb-default-name="git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'"
alias gbm="gb-default-name | xargs git checkout && git pull --rebase"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gcl="git clone"
alias gac="gaa && gc"
alias gd="git diff"
alias gclean="git restore . && git clean -df"
alias gdca="git diff --cached"
alias gdco="git diff --color-words"
alias gp="git push --force-with-lease"
alias gpf="git push --force"
alias gl="git log"
alias gnuke="git clean -fdx"
alias gpl="git pull"
alias greb="git pull --rebase"
alias grem="git remote -v"
alias grest="git restore"
alias gs="git show"
alias gsh="git show HEAD"
alias gundos="git reset --soft HEAD^"
alias gundoh="git reset --hard HEAD^"

alias sshco="vim ~/.ssh/config"

# spacemacs
alias sm="cd ~/.emacs.d"

# terraform
alias tf="terraform fmt"
alias tg="terraform get"
alias th="terraform --help"
alias ti="terraform init"
alias tp="terraform plan"
alias ts="terraform state show"
alias tsl="terraform state list"
alias tv="terraform version"

# zsh
alias sz="source ~/.zshrc"
alias szp="source ~/.zprofile"
alias zp="vim ~/.zprofile"
alias zs="vim ~/.zshrc"

# directory navigation
alias -- -="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

for file in ~/.zshrc.d/*
do
  source $file
done