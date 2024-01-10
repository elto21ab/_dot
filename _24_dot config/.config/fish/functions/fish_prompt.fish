function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.

    # Set normal color and status color
    set -l normal (set_color normal)
    set -l status_color (set_color red) # Default to red for error
    if test $status -eq 0
        set status_color (set_color green) # Green for success
    end

    # Current working directory color
    set -l color_cwd $fish_color_cwd

    # Construct the prompt
    echo -n (set_color $color_cwd)(prompt_pwd) $status_color">$normal "
end
