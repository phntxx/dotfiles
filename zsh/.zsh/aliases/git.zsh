function ghc() {
	[ -n $1 ] && [ -n $2 ] && git clone git@github.com:$1 $2
}