# orange=$(tput setaf 166);
# yellow=$(tput setaf 228);
# green=$(tput setaf 71);
# white=$(tput setaf 15);
# bold=$(tput bold);
# reset=$(tput sgr0);

# PS1="\[${bold}\]\n";
# PS1+="\[${yellow}\]\h"; #host
# PS1+="\[${white}\]: ";
# PS1+="\[${orange}\]\u"; #username
# PS1+="\[${white}\] in ";
# PS1+="\[${green}\]\W "; #working directory

# #PS1+="\n";

# PS1+="\[${white}\]\$ \[${reset}\]"; # '$' (and reset color)
# export PS1;


# # adding git extension
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# PS1+="\[${white}\]\$ \[${reset}\]\$ \[${parse_git_branch}\]";

# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "




#########################################################################################

orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput sgr0);

PS1="\[${bold}\]\n";
PS1+="\[${yellow}\]\h"; #host
PS1+="\[${white}\]: ";
PS1+="\[${orange}\]\u"; #username
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\W "; #working directory

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1+="\[${white}\]\[${reset}\]\$(parse_git_branch)\[>";
export PS1;
