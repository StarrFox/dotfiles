if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
mcfly init fish | source
zoxide init fish | source

set fish_greeting
set -x EDITOR nvim

# nimble path
set -ga fish_user_paths ~/.nimble/bin

# Created by `pipx` on 2021-12-31 00:35:26
set PATH $PATH ~/.local/bin


# aliases (abbreviations)
# there isn't an ls version of tree
if test -e /usr/bin/exa
  abbr -a -g ls "exa -la --no-time --no-filesize"
  abbr -a -g tree "exa --tree --classify"
else
  abbr -a -g ls "ls -la"
end

if test -e /usr/bin/aria2c
  abbr -a -g download "aria2c --split=10"
end

if test -e /usr/bin/devour -a -e /usr/bin/cvlc
  abbr -a -g watch "cvlc --fullscreen"
end

if test -e /usr/bin/ani-cli -o -e ~/.local/bin/ani-cli
  abbr -a -g anime "ani-cli -v"
end

