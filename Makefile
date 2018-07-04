# start up TiddlyWiki server
WIKI=rpiwiki

default:
	tiddlywiki $(WIKI) --server &
	sleep 2
	open http://localhost:8080

create:  # only once!!
	# tiddlywiki $(WIKI) --init server
	echo Be careful!  Only 'create' once!

backup:	# how does this worK?
	tiddlywiki $(WIKI) --build index
