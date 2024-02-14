set -gx TERM wezterm 
set -gx PROJECT_PATHS ~/Projects
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx nvm_default_version "18.13.0"
set -gx ARCHPREFERENCE "arm64"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -gx EDITOR "nvim"
set -gx LS_COLORS "(vivid generate ~/.config/vivid/themes/zenwritten-dark.yml)"
set -x RIPGREP_CONFIG_PATH "$HOME/.ripgreprc"
set -U FZF_DEFAULT_COMMAND "rg --files --follow --no-ignore-vcs --hidden -g \"!{**/node_modules/*,**/.git/*,**/.yarn/*}\""
set -U FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set -U FZF_OPEN_COMMAND "$FZF_DEFAULT_COMMAND"
set -U FZF_DEFAULT_OPTS "--ansi"
set -U FZF_FIND_FILE_COMMAND "$FZF_DEFAULT_COMMAND"
set -U FZF_PREVIEW_FILE_CMD "bat --paging=never --color=always --style=numbers --line-range :100"
set -U FZF_ENABLE_OPEN_PREVIEW 1
set -U FZF_PREVIEW_DIR_CMD "lt"
