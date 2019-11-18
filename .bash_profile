export PATH=~/bin:$PATH

if [ -d "$HOME/.cargo/bin" ] ; then
	PATH=$PATH:$HOME/.cargo/bin
fi
