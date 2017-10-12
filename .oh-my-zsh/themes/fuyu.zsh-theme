function zsh_prompt() {
  local LAST_EXIT_CODE=$?
  seperator=" %F{239}/%f "
  
  line=" %F{red}▎%f "
  if [ "$LAST_EXIT_CODE" -eq "0" ]; then
    line=" %F{037}▎%f "
  fi

  if test ~ = "$(pwd)"; then
    cwd="~"
  else
    cwd=$(pwd | sed "s#^$HOME#~#");
  fi


  if [ $LAST_EXIT_CODE -ne 0 ]; then
    code="%F{red}$(printf '%03d' $LAST_EXIT_CODE)%f$seperator"
  fi

  echo
  echo -n "$line$code%F{248}$(whoami)%f$seperator%F{037}$cwd%f"

  branch=$(git branch 2> /dev/null | grep -E "^\*" | sed "s/^* //")
  if [ "$branch" != "" ]; then
    color="%F{yellow}"
    if [ "$(git status -s | wc -l)" -eq 0 ]; then
      color="%F{green}"
    fi
    echo -n "$seperator$color$branch%f"
  fi

  echo
  echo -n "$line%F{241}$%f "
}

function zsh_rprompt() {
}

PROMPT='$(zsh_prompt)'
# RPROMPT='$(zsh_rprompt)'
