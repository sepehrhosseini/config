eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/Applications/Sublime Merge.app/Contents/SharedSupport/bin:/Applications/Postgres.app/Contents/Versions/9.6/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin:/Users/sepehr/.rbenv/shims/ruby:/Users/sepehr/.rbenv/shims:/Users/sepehr/n/bin:$(brew --prefix openjdk)/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.mix/escripts:$PATH"
export PATH="/Users/sepehr/git-fuzzy/bin:$PATH"


unset http_proxy
unset https_proxy
unset HTTP_PROXY
unset HTTPS_PROXY
export PATH=$PATH:$HOME/bin
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@15/lib/pkgconfig"


# Android
unset JAVA_HOME
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PYTHON="/opt/homebrew/bin/python3"

# source "$HOME/.cargo/env"

# --layout=reverse
# export FZF_DEFAULT_OPTS='--layout=reverse --no-mouse -1 --multi --inline-info --border --preview "bat --style=numbers --color=always --line-range :500 {}"'
# export FZF_DEFAULT_COMMAND='rg --files'

# Git Fuzzy
export GIT_FUZZY_BRANCH_WORKING_COPY_KEY='Ctrl-P'
export GIT_FUZZY_BRANCH_MERGE_BASE_KEY='Alt-P'
export GIT_FUZZY_BRANCH_COMMIT_LOG_KEY='Alt-L'
export GIT_FUZZY_BRANCH_CHECKOUT_KEY='Ctrl-F'
export GIT_FUZZY_BRANCH_DELETE_BRANCH_KEY='Alt-D'

export GIT_FUZZY_STATUS_ADD_KEY='Ctrl-S'
export GIT_FUZZY_STATUS_EDIT_KEY='Ctrl-E'
export GIT_FUZZY_STATUS_COMMIT_KEY='Alt-C'
export GIT_FUZZY_STATUS_RESET_KEY='Ctrl-R'
export GIT_FUZZY_STATUS_DISCARD_KEY='Ctrl-U'

# Graphql Pro
export BUNDLE_GEMS__GRAPHQL__PRO="a179ed3d79b:b9361bf36e2"

# Postgres
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"


# Cargo (?)
# source "$HOME/.cargo/env"

export EDITOR='lvim'
export VISUAL='lvim'
export PYTHON="/opt/homebrew/bin/python3"

# Required for Gems to pull from private repos
export BUNDLE_GITHUB__COM="d452e7b97e87bcca932774641ed1790921451a46:x-oauth-basic"
export http_proxy="http://127.0.0.1:1089"
export https_proxy="http://127.0.0.1:1089"
export HTTP_PROXY="http://127.0.0.1:1089"
export HTTPS_PROXY="http://127.0.0.1:1089"
