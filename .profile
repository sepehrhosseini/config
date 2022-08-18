
export PATH="/Applications/Sublime Merge.app/Contents/SharedSupport/bin:/Applications/Postgres.app/Contents/Versions/9.6/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin:/Users/sepehr/.rbenv/shims/ruby:/Users/sepehr/.rbenv/shims:/Users/sepehr/n/bin:$(brew --prefix openjdk)/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.mix/escripts:$PATH"
export PATH="/Users/sepehr/git-fuzzy/bin:$PATH"

# Android
unset JAVA_HOME
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# source "$HOME/.cargo/env"

export FZF_DEFAULT_OPTS='--no-mouse -1 --multi --inline-info --layout=reverse --border --preview "bat --style=numbers --color=always --line-range :500 {}"'
export FZF_DEFAULT_COMMAND='rg --files'

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

# Cargo (?)
# source "$HOME/.cargo/env"

export EDITOR='nvim'
export VISUAL='nvim'
export PYTHON="/opt/homebrew/bin/python3"
