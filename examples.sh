source colors.sh

colors=(BLACK RED ORANGE YELLOW GREEN CYAN BLUE PURPLE WHITE)

for style in NORMAL BOLD DIM UNDERLINE BLINK INVERTED HIDDEN; do
  printf "%-10s" "$style"
  for color in ${colors[*]}; do
     echo -en "${!color}${!style}$color${RESET_COLOR}\t"
   done
   echo
done
echo

for fg_color in ${colors[*]}; do
  for bg_color in ${colors[*]}; do
    bg="BG_${bg_color}"
    echo -en "${!fg_color}${!bg}$fg_color${RESET_COLOR}\t"
  done
  echo
  for bg_color in ${colors[*]}; do
    bg="BG_BRIGHT_${bg_color}"
    echo -en "${!fg_color}${!bg}$fg_color${RESET_COLOR}\t"
  done
  echo
done

function colornum() {
  echo -en "\033[38;5;${1}m"
  printf "%-4s" $1
  echo -en "\033[0m"
}

echo
for c in {0..15}; do
  colornum $c;
done
echo

for g in {0..5}; do
  for r in {0..2}; do
    for b in {0..5}; do
      let c=$(($r * 36 + $g * 6 + $b + 16))
      colornum $c
    done
    echo -en " "
  done
  echo
done

for g in {0..5}; do
  for r in {3..5}; do
    for b in {0..5}; do
      let c=$(($r * 36 + $g * 6 + $b + 16))
      colornum $c
    done
    echo -en " "
  done
  echo
done

for c in {232..255}; do
  colornum $c
done

echo
cat <<- EOF
 Use with:

    MY_COLOR="\033[38;5;208m"
    RESET_COLOR="\033[0m"
    echo -en "\${MY_COLOR}Hi\${RESET_COLOR}

EOF

