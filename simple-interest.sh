#!/usr/bin/env bash
# Simple interest = principal * annual percentage rate * years / 100.
# Original educational example: Upkar Lidder (IBM).
# Decimal support and input validation added for this course project.
set -euo pipefail
read_number() {
  local prompt="$1" value
  printf '%s\n' "$prompt" >&2
  if ! IFS= read -r value; then
    printf 'Error: missing input.\n' >&2
    return 1
  fi
  if [[ ! "$value" =~ ^([0-9]+([.][0-9]*)?|[.][0-9]+)$ ]]; then
    printf 'Error: enter a non-negative number.\n' >&2
    return 1
  fi
  printf '%s' "$value"
}
p=$(read_number 'Enter the principal:')
r=$(read_number 'Enter rate of interest per year (percent):')
t=$(read_number 'Enter time period in years:')
interest=$(LC_ALL=C awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "%.2f", p*r*t/100 }')
printf 'The simple interest is: %s\n' "$interest"
