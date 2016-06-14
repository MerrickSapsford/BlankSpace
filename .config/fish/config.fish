set fish_greeting
set -x EDITOR vim
set -x LSCOLORS Gxfxcxdxbxegedabagacad
set -x GOPATH ~/.gopath

set -U fish_user_paths ~/bin /Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin

# set -U fish_user_paths ~/bin
# set -U fish_user_paths /Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin

alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
alias xcp="open *.xcodeproj"
alias xcw="open *.xcworkspace"
alias xc="xcw; or xcp"
alias gs="git s"
alias ga="git add"
alias gc="git commit"
alias l="ls -lah"
alias clean-branches="git branch --merged | grep -v '\*' | grep -v master | grep -v dev | xargs -n 1 git branch -d"

alias current_issue="git current | sed 's/^dan-//p'"
alias ci="jira show (current_issue)"

function tower
  open $argv -a Tower
end

function ib
  git checkout -b dan-$argv
end
setenv SWIFTENV_ROOT "$HOME/.swiftenv"
setenv PATH "$SWIFTENV_ROOT/bin" $PATH
status --is-interactive; and . (swiftenv init -|psub)
