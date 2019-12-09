export PATH=~/bin:$PATH
source ~/.bashrc
if [ -d "$HOME/.cargo/bin" ] ; then
	PATH=$PATH:$HOME/.cargo/bin
fi
