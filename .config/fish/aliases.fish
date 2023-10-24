# Configuration
alias config '/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
abbr cf 'config'
abbr cfa 'config add'
abbr cfr 'config remove'
abbr cfs 'config status'

# Programs
alias vim 'nvim'
abbr n 'nvim'
abbr v 'nvim'
abbr bu 'brew upgrade'
alias vimdiff 'nvim -d'
abbr kssh 'kitty +kitten ssh'
alias snvim 'sudo -E -s nvim' # launch vim in sudo but preserve env config
alias logikill 'ps -ef | grep -i "Logi Options" | grep "Applications" | awk \'{print $2}\' | xargs kill -9' # quickfix for dying logitech driver on M1 Mac
alias wtr 'curl "wttr.in/Copenhagen?format=\n+%c%C+%t++🌧️++%p++💧+%h++🌬️+%w\n"'
alias batbuild 'batch cache --build'

# Config Shortcuts
abbr cali 'cat ~/.config/fish/aliases.fish'
abbr cfx 'snvim ~/.xinitrc'
abbr cfish 'nvim ~/.config/fish/config.fish'
abbr cfali 'nvim ~/.config/fish/aliases.fish'
abbr cfx 'snvim ~/.xinitrc'
abbr cfst 'nvim ~/.config/starship.toml'
abbr cfpic 'snvim ~/.config/picom/picom.conf'
abbr cfkit 'nvim ~/.config/kitty/kitty.conf'
abbr cfas 'snvim ~/.local/share/dwm/autostart.sh'
abbr cfvi 'nvim ~/.config/nvim/init.lua'
abbr cfvp 'nvim ~/.config/nvim/lua/plugins.lua'
abbr cftm 'nvim ~/.config/tmux/tmux.conf'
abbr cflf 'nvim ~/.config/lf/lfrc'
abbr cfdu 'nvim ~/.config/dunst/dunstrc'

# Directory shortcuts
abbr prj 'cd ~/Projects'
abbr pjo 'pj open '

# Helpers
abbr x 'exit'
abbr src 'source ~/.config/fish/config.fish'
abbr makins 'sudo make && sudo make clean install'
abbr cl 'clear'
abbr t 'yarn test'
abbr mki 'sudo make && sudo make clean install'
abbr lk 'logikill'

alias copykey 'pbcopy < ~/.ssh/id_rsa.pub'
alias prettierdstatus 'cat ~/.prettier_d_slim'
alias chrdebug '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'

# Extended defaults
alias cat 'bat --style=plain --color=always'
alias ls 'exa --icons -F'
alias l 'ls -lh'
alias la 'ls -a'
alias lla 'ls -la'
alias tree 'exa --tree --level=2'

# Tmux
abbr xtm 'pkill -f tmux'
abbr ntm 'tmux new -s'
abbr atm 'tmux attach-session -t'

# Git
abbr g 'git'
abbr gs 'git status'
abbr gd 'git diff'
abbr gp 'git push'
abbr gpl 'git pull'
abbr gf 'git fetch'
abbr gw 'git worktree'
abbr gwa 'git worktree add'
abbr gwr 'git worktree remove'
abbr gwl 'git worktree list'
abbr gau 'git add -u'
abbr gco 'git checkout'
abbr gaa 'git add --all'
abbr gsa 'git stash apply'
abbr gpo 'git pull origin'
abbr gdorig 'find . -name \*.orig -delete'
abbr gcm 'git commit -m "'
abbr gca 'git commit --amend --no-edit'
abbr gmt 'git mergetool'
abbr grhh 'git reset --hard HEAD'
abbr gcfd 'git clean -fd'
abbr gbda 'git branch | egrep -v "(master|main|develop|\*)" | xargs git branch -D'
abbr gl 'git log --graph --oneline --decorate'
abbr lg 'lazygit'
abbr bad 'git bisect bad'
abbr good 'git bisect good'

# worktree add
function wta
    set branch_name $argv[1]
    echo $branch_name | worktree-add.sh
    cd -- $branch_name
end


# Webdev
alias pnpx 'pnpm dlx'
abbr y 'swpm'
alias ya 'swpm add'
alias yr 'swpm remove'
abbr yw 'swpm workspace'
abbr yup 'swpm upgrade-interactive'
abbr yt 'swpm test'
abbr yb 'swpm build'
abbr dev 'swpm dev'
abbr sb 'swpm storybook'
abbr sblg 'swpm cross-env NODE_OPTIONS=--openssl-legacy-provider start-storybook -p 9000'
abbr lint 'swpm lint'
abbr ts 'swpm tsc'
