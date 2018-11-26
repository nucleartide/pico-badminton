# Start a Haskell read-eval-print loop (REPL).
#
# Apparently a plain `stack ghci` produces warnings. See
# https://github.com/commercialhaskell/stack/issues/3651#issuecomment-371032374
# for details.
repl:
	@stack exec -- ghci -Wall
.PHONY: repl
