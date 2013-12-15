#############################
# Boxen
#
source /opt/boxen/env.sh

#############################
# Environment
#
export LANG=ja_JP.UTF-8

#############################
# Color
#
autoload -Uz colors
colors

#############################
# History
#
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

#############################
# VCS INFO
#
# VCSの情報を取得するzshの便利関数 vcs_infoを使う
autoload -Uz vcs_info

# 表示フォーマットの指定
# %b ブランチ情報
# %a アクション名(mergeなど)
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# バージョン管理されているディレクトリにいれば表示，そうでなければ非表示
RPROMPT="%1(v|%F{green}%1v%f|)"

#############################
# Alias
#
alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

#############################
# Projects
#

