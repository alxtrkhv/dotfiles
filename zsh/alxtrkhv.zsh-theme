setopt PROMPTSUBST

CLOCK="%B%(?:%F{6}:%F{red})%*%f%b"

DIRECTORY="%B%F{4}%1~%f%b"

SEPARATOR='%B%F{6}/%f%b'

FULL_PATH='%F{6}%~%f'
HISTORY_INDEX='%F{6}(%h)%f'

GIT_PROMPT='$SEPARATOR$(parse_git_dirty)%B$(git_current_branch)%b$SEPARATOR$(git_prompt_status)'
NO_GIT_PROMPT='$SEPARATOR$SEPARATOR '


ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{2}"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{2}\u2191%f"
ZSH_THEME_GIT_PROMPT_BEHIND="%F{3}\u2193%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{1}?%f"
ZSH_THEME_GIT_PROMPT_STASHED="%F{3}S%f"

PROMPT_FULL="$CLOCK $DIRECTORY $GIT_PROMPT "
PROMPT_FULL_NO_DIR="$CLOCK $GIT_PROMPT "
PROMPT_GIT_ONLY="$GIT_PROMPT "

PROMPT=$PROMPT_FULL
RPROMPT="$FULL_PATH $HISTORY_INDEX"

function set-rprompt() {
    RPROMPT="$FULL_PATH $HISTORY_INDEX"
}

function unset-rprompt() {
    unset RPROMPT
}

function setprompt() {
    case "$1" in
        no-directory)
            PROMPT=$PROMPT_FULL_NO_DIR
            set-rprompt
            ;;
        lite)
            PROMPT=$PROMPT_GIT_ONLY
            unset-rprompt
            ;;
        no-git)
            PROMPT=$NO_GIT_PROMPT
            unset-rprompt
            ;;
        full|*)
            PROMPT=$PROMPT_FULL
            set-rprompt
            ;;
    esac
}

if [[ "$USE_LITE_PROMPT" == true ]]; then
    setprompt lite
fi

if [[ "$USE_NO_GIT_PROMPT" == true ]]; then
    setprompt no-git
fi
