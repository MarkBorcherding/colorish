# Colorish

A quick color script to drop into a bash script and examples of how to use it. This helps me avoid Googling to find this same information everytime I write a shell script.

## Usage

### Globally

Source `colors.sh` somewhere in you terminal profile (e.g. `.bashrc`, `.profile`, etc) that works for you.

Use the color codes via `echo -e`:

    echo -e "${BLACK}${BG_YELLOW}MIZ${INVERTED}ZOU${RESET_COLOR}"

Be sure to put foreground colors before the background colors.

### Locally

If you want to add some colors to your shell scripts, snipe the colors you want and use them locally in your scripts.

```bash
#!/bin/sh

RED="\033[0;31m"
RESET_COLOR="\033[0m"

fail() {
  echo -e "${RED}==> Error: ${RESET_COLOR} $1
}

do_something || fail "Something didn't work."
```

## Examples

Want to see some examples of what the colors look like?  Run `source examples.sh`.

