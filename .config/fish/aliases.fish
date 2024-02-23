# Programs
alias nvim 'nvim -n -i NONE --noplugin'
abbr n 'nvim'
abbr v 'nvim'

abbr bup 'brew upgrade'
function vimdiff; nvim -d $argv; end
function snvim; sudo -E -s nvim $argv; end
function logikill; ps -ef | grep -i "Logi Options" | grep "Applications" | awk '{print $2}' | xargs kill -9; end
function wtr; curl "wttr.in/Copenhagen?format=%n+%c%C+%t++🌧️++%p++💧+%h++🌬️+%w\n"; end
function batbuild; batch cache --build $argv; end

# Directory shortcuts
abbr prj 'cd ~/Projects'
abbr cf 'cd ~/.config'

# Helpers
abbr x 'exit'
abbr src 'source ~/.config/fish/config.fish'
abbr makins 'sudo make && sudo make clean install'
abbr cl 'clear'
abbr t 'swpm test'
abbr mki 'sudo make && sudo make clean install'
abbr lk 'logikill'
abbr wd 'workday'

function copykey; pbcopy < ~/.ssh/id_rsa.pub; end; 
function chrdebug;/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222; end;

function fzfcd
  # find all folders with .git in them and select one using fzf
  set selected_dir (fd -tf --max-depth=4 --color=never "\.git\$" -H | rev | cut -c 6- | rev | fzf --preview "lt {}" --preview-window "25%")  # Select directory using fzf
  if test -n "$selected_dir"
    z "$selected_dir"  # Change directory if selection is not empty
    commandline --function repaint
  end
end

# Extended defaults
function cat; bat --style=plain --color=always $argv; end
function ls; eza --icons -F $argv; end
function l; ls -lh $argv; end
function la; ls -A $argv; end
function lla; ls -la $argv; end
function ld; ls -l --sort=date --ignore-glob="node_modules" -D --time-style=relative $argv; end
function lt; exa --tree --level=2 --sort=date --ignore-glob="node_modules" $argv; end

# Tmux
abbr xtm 'pkill -f tmux'
abbr ntm 'tmux new -s'
abbr atm 'tmux attach-session -t'

# Git
abbr g 'git'
abbr gs 'git status'
abbr gd 'git diff -- . ":!pnpm-lock.yaml" ":!package-lock.json" "!:yarn.lock"'
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
abbr cm 'aicommits --type conventional -x "pnpm-lock.yaml"'
abbr gcm --set-cursor 'git commit -m "%"'
abbr gca 'git commit --amend --no-edit'
abbr gmt 'git mergetool'
abbr grhh 'git reset --hard HEAD'
abbr gcfd 'git clean -fd'
abbr gbda 'git branch | egrep -v "(master|main|develop|\*)" | xargs git branch -D'
abbr gl 'git log --graph --oneline --decorate'
abbr lg 'lazygit'
abbr bad 'git bisect bad'
abbr good 'git bisect good'

# rust
abbr cn 'cargo new'
abbr cc 'cargo check'
abbr cin 'cargo init'
abbr cdoc 'cargo doc'
abbr ca 'cargo add'
abbr crm 'cargo remove'
abbr cb 'cargo build'
abbr cbn 'cargo bench'
abbr cs 'cargo search'
abbr r 'cargo run'
abbr ct 'cargo test'
abbr cu 'cargo update'

# worktree scripts
abbr wta "worktree_add"
abbr wtc "worktrees_clean"

# Webdev
function src;  jq -r \'.scripts | to_entries[] | "\(.key):\n \(.value)\n"\' package.json | awk \'BEGIN{idx=1} {print "\033[3"idx"m" $0 "\033[0m"; idx = idx % 3 + 1}\'; end;
function pnpx; pnpm dlx $argv; end;
function p; swpm; end;
function pa; swpm add $argv; end
function pr; swpm remove $argv; end
function pw; swpm workspace $argv; end
function pup; spwm update-interactive $argv; end
function t; spwm tst $argv; end
function dev; swpm dev $argv; end
function sb; swpm storybook $argv; end
function sblg; swpm cross-env NODE_OPTIONS=--openssl-legacy-provider start-storybook -p 9000 $argv; end
function lint; swpm lint $argv; end
