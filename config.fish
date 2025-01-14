    # Commands to run in interactive sessions can go here
function fish_title
if status is-interactive
#     # `prompt_pwd` shortens the title. This helps prevent tabs from becoming very wide.
    echo # (prompt_pwd)
    pwd
end
end

function fish_prompt
# if status is-interactive
  # This shows up as USER@HOST /home/user/ >, with the directory colored
  # $USER and $hostname are set by fish, so you can just use themc
  # instead of using `whoami` and `hostname`
     printf '%s' (prompt_pwd) (set_color $fish_color_cwd) (fish_git_prompt) (set_color $fish_color_status) ' ▲ ' (set_color normal)
  # printf '%s ▲%s %s%s%s > ' $USER \
  #     (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
# end
end

function jitnow
    set -l url "https://$argv[1].duplocloud.net"
    duplo-jit aws --admin --no-cache --host $url --interactive | jq -r .ConsoleUrl | pbcopy
end


# function fish_right_prompt -d "Write out the right prompt"
# # if status is-interactive
# set __fish_git_prompt_showuntrackedfiles 1
#           set -g __fish_git_prompt_showupstream verbose

# printf (set_color $fish_color_status) (fish_git_prompt) (set_color normal)
# # end
# end

# Shell, Prompt configurations



# Vim settings
fish_vi_key_bindings 
# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursors to an underscore
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
# Set the external cursor to a line. The external cursor appears when a command is started.
# The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
set fish_cursor_external line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block
set -U fish_greeting ''



fzf --fish | source

    if status is-interactive
set -U -e work_in_progress
    end
# Git options

eval "$(/opt/homebrew/bin/brew shellenv)"
set -Ux N_PREFIX $HOME/n/

set -U fish_user_paths $HOME/n/bin $fish_user_paths
