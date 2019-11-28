# vim:ft=zsh ts=2 sw=2 sts=2
#
# agnoster's Theme - https://gist.github.com/3712874
# A Powerline-inspired theme for ZSH
#
# # README
#
# In order for this theme to render correctly, you will need a
# [Powerline-patched font](https://github.com/Lokaltog/powerline-fonts).
#
# In addition, I recommend the
# [Solarized theme](https://github.com/altercation/solarized/) 
#
# # Goals
#
### Segment drawing
# A few utility functions to make it easy and re-usable to draw segmented prompts
#
# Solarized colors {{
# SOLARIZED 16 HEX     TERMCOL  XTERM/HEX   
# --------- -- ------- -------  ----------- 
# base03     8 #002b36 brblack  234 #1c1c1c # Background 
# base02     0 #073642 black    235 #262626 # Background highlights
# base01    10 #586e75 brgreen  240 #4e4e4e # Comments
# base00    11 #657b83 bryellow 241 #585858 
# base0     12 #839496 brblue   244 #808080 # Body text
# base1     14 #93a1a1 brcyan   245 #8a8a8a # Highlights
# base2      7 #eee8d5 white    254 #d7d7af 
# base3     15 #fdf6e3 brwhite  230 #ffffd7 
# yellow     3 #b58900 yellow   136 #af8700 
# orange     9 #cb4b16 brred    166 #d75f00 
# red        1 #dc322f red      160 #d70000 
# magenta    5 #d33682 magenta  125 #af005f 
# violet    13 #6c71c4 brmagenta 61 #5f5faf 
# blue       4 #268bd2 blue      33 #0087ff 
# cyan       6 #2aa198 cyan      37 #00afaf 
# green      2 #859900 green     64 #5f8700 
# }}


CURRENT_BG='NONE'

export LC_ALL=en_US.UTF-8
SEGMENT_SEPARATOR=''
#SEGMENT_SEPARATOR='%{%2G%}'
#SEGMENT_SEPARATOR=' '

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

# Dir: current working directory
prompt_dir() {
  ## bg: base02 fg: yellow
  prompt_segment black 10 '%2C'
}

prompt_group() {
  gid=$(id -gn)
  prompt_segment 24 51 ${gid}
}

### Prompt components
# Each component will draw itself, and hide itself if no information needs to be shown
# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{1}%}✘"
  [[ $UID -eq 0 ]] && symbols+="%{%F{3}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{6}%}⚙"

  [[ -n "$symbols" ]] && prompt_segment 8 default "$symbols"
}

build_prompt() {
  RETVAL=$?
  prompt_status
  #prompt_group
  prompt_dir
  prompt_end
}

PROMPT='
%k%F{10}[%h] %/ %f%b%k
$(build_prompt) %E'

precmd() {
  RPROMPT=""
}

zle-keymap-select() {
  RPROMPT=""
  [[ $KEYMAP = vicmd ]] && RPROMPT="%B%F{7}%K{6} CMD %f%k%b"
  () { return $__prompt_status }
  zle reset-prompt
}

zle-line-init() {
  typeset -g __prompt_status="$?"
}

zle -N zle-keymap-select
zle -N zle-line-init


