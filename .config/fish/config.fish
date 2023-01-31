if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt -d "Write out the prompt"
    # This is a simple prompt. It looks like
    # alfa@nobby /path/to/dir $
    # with the path shortened and colored
    # and a "#" instead of a "$" when run as root.
    set -l symbol '$'
    set -l color $fish_color_cwd
    if fish_is_root_user
        set symbol '#'
        set -q fish_color_cwd_root
        and set color $fish_color_cwd_root
    end

    set_color $color
    echo -n $USER@$hostname

    set_color normal
    echo -n ':'

    set_color brblue
    echo -n (prompt_pwd)
    echo -n " "
    echo -n $symbol

    set_color normal
    echo -n " "

end
