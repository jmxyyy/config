# Created by newuser for 5.9
# cuda
export CUDAHOSTCXX=/usr/bin/g++-14
export CPATH=/usr/include/openmpi-x86_64:$CPATH
export PATH=$PATH:/usr/lib64/openmpi/bin
export CC=/usr/bin/gcc-14
export CXX=/usr/bin/g++-14
export NVCC_CCBIN=/usr/bin/g++-14
export LD_LIBRARY_PATH=/usr/local/cuda-12.9/targets/x86_64-linux/lib:$LD_LIBRARY:_PATH
export CPATH=/usr/local/cuda-12.9/targets/x86_64-linux/include:$CPATH
export PATH=/usr/local/cuda-12.9/bin:$PATH

# rust
. "$HOME/.cargo/env"

# starship
eval "$(starship init zsh)"
# zsh plugin
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# export ZSH_AUTOSUGGEST_STRATEGY=(completion)
# source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#04a5e5, underline"

# wezterm ocs7
# source "/mnt/c/Users/cxy/.config/wezterm/wezterm.sh"

# pixi
export PATH="/home/jmx/.pixi/bin:$PATH"

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# ispc
export PATH=$PATH:${HOME}/bin/ispc-v1.24.0-linux/bin

# l2c_win.sh
alias l2c='sh ~/workspace/config/l2c_win.sh'
