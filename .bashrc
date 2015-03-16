alias g='git'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="${debian_chroot:+($debian_chroot)}\u@\w \[\033[1;35m\]\$(parse_git_branch) \[\033[0m\]$ "