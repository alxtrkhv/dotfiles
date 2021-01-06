setopt PROMPTSUBST

CLOCK="%B%(?:%F{6}:%F{red})%*%f%b"
CLOCK_LITE="%B%(?:%F{6}:%F{red})%T%f%b"

DIRECTORY="%B%F{4}%1~%f%b"

SEPARATOR='%B%F{6}/%f%b'

FULL_PATH='%F{6}%~%f'
HISTORY_INDEX='%F{6}(%h)%f'

GIT_PROMPT='$SEPARATOR$(parse_git_dirty)%B$(git_current_branch)%b$SEPARATOR$(git_prompt_status)'
GIT_PROMPT_LITE='$SEPARATOR$(parse_git_dirty)%B$(git_current_branch)%b$SEPARATOR'

ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{2}"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{2}\u2191%f"
ZSH_THEME_GIT_PROMPT_BEHIND="%F{3}\u2193%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{1}?%f"
ZSH_THEME_GIT_PROMPT_STASHED="%F{3}S%f"

PROMPT_FULL="$CLOCK $DIRECTORY $GIT_PROMPT "
PROMPT_FULL_NO_DIR="$CLOCK $GIT_PROMPT "
PROMPT_LITE="$CLOCK_LITE $DIRECTORY $GIT_PROMPT_LITE "

PROMPT=$PROMPT_FULL
RPROMPT="$FULL_PATH $HISTORY_INDEX"

function use_lite_prompt() {
    PROMPT=$PROMPT_LITE
    use_rprompt
}

function use_full_prompt() {
    PROMPT=$PROMPT_FULL
    use_rprompt
}

function use_full_prompt_without_directory() {
    PROMPT=$PROMPT_FULL_NO_DIR
    use_rprompt
}

function use_rprompt() {
    RPROMPT="$FULL_PATH $HISTORY_INDEX"
}

function unset_rprompt() {
    unset RPROMPT
}

function use_micro_prompt() {
    use_full_prompt_without_directory
    unset_rprompt
}
