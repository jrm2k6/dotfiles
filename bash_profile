alias gst='git status'
alias gpull='git pull --rebase'
alias gpush='git push'

function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
} 


export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-i386
