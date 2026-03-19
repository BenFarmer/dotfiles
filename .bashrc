### ALIASING V
alias prun='poetry run python3'
alias ls='ls -la -G -F'
alias gs='git status'
alias gc='git commit -m'
alias ga='git add .'
alias gp='git push'
alias la='ls -la -G -c -F'
alias vi='vim'

### PROMPT MODIFICATIONS V
pwdmaxlen=30
trunc_symbol="..."

shorten_pwd() {
  if [ ${#PWD} -gt $pwdmaxlen ]; then
    local pwdoffset=$(( ${#PWD} - $pwdmaxlen ))
    newPWD="${trunc_symbol}${PWD:$pwdoffset:$pwdmaxlen}"
  else
    newPWD=${PWD}
  fi
}

# default is "%n@%m %1~ %# " can just comment out PROMPT variable
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

PROMPT_COMMAND=shorten_pwd
setopt PROMPT_SUBST
PS1='%n %1~ <$(pyenv version-name)> %F{green}$(parse_git_branch)%f %# '
