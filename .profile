export EDITOR="vim"

while true; do
    clear
    printf '\n%.0s' {1..20}
    cat /home/barista/commands | fzf | sh
    sleep 2
done
