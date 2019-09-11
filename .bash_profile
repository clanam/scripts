# Git settings and aliases

# git config core.hooksPath .hooks
git config --global push.default current

git config --global alias.br      branch
git config --global alias.erbase  rebase
git config --global alias.idff    diff
git config --global alias.lg      'log --pretty=format:"%h  %ad  %<(20)%an  %s" --date=format:"%Y %b %d"'
git config --global alias.otu     checkout
git config --global alias.ouit    checkout
git config --global alias.out     checkout
git config --global alias.poush   push
git config --global alias.psuh    push
git config --global alias.pul     pull
git config --global alias.reabse  rebase
git config --global alias.rebsae  rebase
git config --global alias.recent  'log --pretty=format:"%h  %ad  %<(20)%an  %s" --date=format:"%Y %b %d" -n 10'
git config --global alias.rembase rebase
git config --global alias.st      status
git config --global alias.stat    status
git config --global alias.tou     checkout
git config --global alias.ull     pull
git config --global alias.ush     push

alias ba="vi ~/.bash_profile"
alias ba2="source ~/.bash_profile"
alias br="git br"
alias droid_menu="adb shell input keyevent 82"
alias gi="git"
alias gitundo="git reset --soft HEAD~1"
alias gti="git"
alias gitp="git"
alias find_by_name="find . -name" # e.g. find . -name squirrel
alias find_by_name2="find . -type d \( -path ./js/frontend/tmp -o -path ./js/frontend/node_modules -o -path ./js/menu-manager/engine/node_modules -o -path ./tmp -o -path ./vendor \) -prune -o -name"
alias fix_emulator_time="adb shell su root date -u @$(date +%s)" # android
alias gti="git"
alias gtismash="gitsmash"
alias home="cd ~/projects"
alias igt="git"
alias igtsmash="gitsmash"
alias log='git log --pretty=format:"%h  %ad  %<(20)%an  %s" --date=format:"%Y %b %d"'
alias ls="ls -alF"
alias move="mv"
alias recent="git recent"
alias st="git st"
alias tarb="tarn"
alias tarn="yarn"
alias yanr="yarn"
alias yran="yarn"

gitsmash() {
  local prev_msg="$(git log -1 --pretty=%B)"
  gitundo
  git commit -am "$prev_msg"
}

softsmash() {
  local prev_msg="$(git log -1 --pretty=%B)"
  gitundo
  git commit -m "$prev_msg"
}

# -------------------------- #
#    Override bash prompt    #
# -------------------------- #

# \e[0m is color reset
# \W is current directory (short path)
# \w is current directory (full path)
# \u is current user

export PS1="\e[96m\u\e[37m@\e[96m\w\e[0m: "

# ------------------- #
#    Notes to self    #
# ------------------- #

# how to find process on port
# lsof -i :3005     where 3005 is port number

# how to check eslint slowness breakdown
# TIMING=1 eslint .

# how to reset npm global defaults
# echo "" > $(npm config get globalconfig)
# npm config --global edit

function memory {
  ps aux -m | head -n 10
}
