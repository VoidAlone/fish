# ~/.config/fish/config.fish

# ─────────────────────────────────────────
# Environment
# ─────────────────────────────────────────

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx NVIM_APPNAME nvim

# User executables
fish_add_path -g $HOME/bin
fish_add_path -g $HOME/.local/bin
fish_add_path -g $HOME/.opencode/bin

# ─────────────────────────────────────────
# Interactive shell
# ─────────────────────────────────────────

if status is-interactive

    # Navigation
    if command -q zoxide
        zoxide init fish | source
    end

    # ─────────────────────────────────────
    # Aliases
    # ─────────────────────────────────────

    alias spt='spotify_player'

    if command -q eza
        alias ls='eza --icons=auto --group-directories-first'
        alias ll='eza -lah --icons=auto --group-directories-first'
        alias tree='eza --tree --icons=auto'
    end

    # ─────────────────────────────────────
    # Abbreviations
    # ─────────────────────────────────────

    abbr -a gs 'git status'
    abbr -a ga 'git add'
    abbr -a gc 'git commit'
    abbr -a dc 'docker compose'
    abbr -a dr 'dotnet run'
    abbr -a dw 'dotnet watch run'

    # ─────────────────────────────────────
    # Yazi - change directory on exit
    # ─────────────────────────────────────

    function y --description 'Open Yazi and cd on exit'
        set -l tmp (mktemp -t yazi-cwd.XXXXXX)

        command yazi $argv --cwd-file="$tmp"

        if test -s "$tmp"
            set -l cwd (string trim -- (cat "$tmp"))

            if test -d "$cwd"; and test "$cwd" != "$PWD"
                builtin cd -- "$cwd"
            end
        end

        command rm -f -- "$tmp"
    end

    # ─────────────────────────────────────
    # Startup
    # ─────────────────────────────────────

    if command -q fastfetch
        fastfetch
    end

end
