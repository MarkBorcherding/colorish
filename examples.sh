source colors.sh

for style in NORMAL BOLD DIM UNDERLINE BLINK INVERTED HIDDEN; do
  for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
     echo -en "${!color}${!style}$color${RESET_COLOR}\t"
   done
   echo
done
echo

for fg_color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  for bg_color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
    bg="BG_${bg_color}"
    echo -en "${!fg_color}${!bg}$fg_color${RESET_COLOR}\t"
  done
  echo
  for bg_color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
    bg="BG_BRIGHT_${bg_color}"
    echo -en "${!fg_color}${!bg}$fg_color${RESET_COLOR}\t"
  done
  echo
done

for i in {0..15}; do
  for j in {0..15}; do
    let c=$(($i*16 + $j))
    echo -en "\033[38;5;${c}m${c}\033[0m\t"
  done
  echo
done
echo
cat <<- EOF
 Use with:
    MY_COLOR="\033[38;5;NUMBER"
    RESET_COLOR="\033[0m"
    echo -en "\${MY_COLOR}Hi\${RESET_COLOR}

EOF

