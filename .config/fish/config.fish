# Google Cloud SDK
bass source "$HOME/google-cloud-sdk/path.bash.inc"
bass source "$HOME/google-cloud-sdk/completion.bash.inc"

# pyenv
set -x PYENV_ROOT /usr/local/var/pyenv
eval (pyenv init - | source)

# Go
set -x GOPATH ~/go
