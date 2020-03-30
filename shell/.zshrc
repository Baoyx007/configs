# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pi"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(d zsh-autosuggestions git z docker brew mvn node npm osx redic-cli web-search yarn tmux rust cargo kubectl)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/taimei_rs"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval $(thefuck --alias)

alias rm=trash
alias subl=\''/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'\'
alias vim='nvim'

#export for android sdk
export PATH=/Users/haven/Library/Android/sdk/platform-tools:/Users/haven/Library/Android/sdk/tools:$PATH

function setproxy() {
    export {HTTP,http,HTTPS,https}_proxy=socks5://127.0.0.1:1080
}

function unsetproxy() {
    unset {HTTP,http,HTTPS,https}_proxy
}

# Homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# mx-net
export PYTHONPATH=/Users/haven/Documents/opensource/mxnet/python

#perl
PATH="/Users/haven/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/haven/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/haven/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/haven/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/haven/perl5"; export PERL_MM_OPT;

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/haven/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/haven/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/haven/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/haven/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh

# opam configuration
test -r /Users/haven/.opam/opam-init/init.zsh && . /Users/haven/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# brew completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi


# Linker for the target platform
# (cc can also be updated using .cargo/config)
#export TARGET_CC="x86_64-unknown-linux-gnu-gcc"

# Library headers to link against
#export TARGET_CFLAGS="-I $(pwd)/usr/include/x86_64-linux-gnu -isystem $(pwd)/usr/include"
# Libraries (shared objects) to link against
#export LD_LIBRARY_PATH="$(pwd)/usr/lib/x86_64-linux-gnu;$(pwd)/lib/x86_64-linux-gnu"

# openssl-sys specific build flags
#export OPENSSL_DIR="$(pwd)/usr/"
#export OPENSSL_LIB_DIR="$(pwd)/usr/lib/x86_64-linux-gnu/"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# rustup compeltion
fpath+=~/.zfunc
export PATH="/usr/local/opt/binutils/bin:$PATH"
