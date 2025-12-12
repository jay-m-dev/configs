if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
# Auto-start tmux if not already inside a tmux session
if [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default
fi
