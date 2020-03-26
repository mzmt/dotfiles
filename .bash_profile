function _random_symbol() {
    local symbols=(
        # 🥳
        # 🤟
        🍺
        # 🥰
        # 😈
        # 👾
    )
    echo -en "${symbols[$(($RANDOM % ${#symbols[@]}))]}"
    echo -n  '  '
}

export PS1=' $(_random_symbol) \t\[\e[31m\] \w\[\e[0m\] \$ '

# bashrcを読み込む
source ~/.bashrc
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"

eval "$(rbenv init -)"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

# 日本語化
export LANG=ja_JP.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ryohei/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ryohei/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ryohei/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ryohei/Downloads/google-cloud-sdk/completion.bash.inc'; fi
