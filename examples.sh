source colors.sh

echo -en "Styles\t\t"
for color in NORMAL BOLD DIM UNDERLINE BLINK INVERTED HIDDEN; do
  echo -en "${!color}$color${RESET_COLOR}\t"
done
echo

echo -en "Normal\t\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  echo -en "${!color}$color${RESET_COLOR}\t"
done
echo

echo -en "Dim\t\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  echo -en "${!color}${DIM}$color${RESET_COLOR}\t"
done
echo

echo -en "Bold\t\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  echo -en "${!color}${BOLD}$color${RESET_COLOR}\t"
done
echo

echo -en "Underline\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  echo -en "${!color}${UNDERLINE}$color${RESET_COLOR}\t"
done
echo

echo -en "Background\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  c="BG_${color}"
  echo -en "${BLACK}${!c}$color${RESET_COLOR}\t"
done
echo

echo -en "Bright\t\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  c="BRIGHT_${color}"
  echo -en "${!c}$color${RESET_COLOR}\t"
done
echo

echo -en "Bold & Bright\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  c="BRIGHT_${color}"
  echo -en "${!c}${BOLD}$color${RESET_COLOR}\t"
done
echo

echo -en "Bright Backg\t"
for color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  c="BG_BRIGHT_${color}"
  echo -en "${!c}$color${RESET_COLOR}\t"
done
echo

for fg_color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
  echo -en "\t\t"
  for bg_color in BLACK RED GREEN YELLOW BLUE PURPLE CYAN WHITE; do
    bg="BG_${bg_color}"
    echo -en "${!fg_color}${!bg}$fg_color${RESET_COLOR}\t"
  done
  echo
done

for c in {1..256}; do
  echo -en "\033[38;5;${c}m${c}\033[0m\t"
done
echo
cat <<- EOF
 Use with:
    MY_COLOR="\033[38;5;NUMBER"
    RESET_COLOR="\033[0m"
    echo -en "${MY_COLOR}Hi${RESET_COLOR}

EOF
