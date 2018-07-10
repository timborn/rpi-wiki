# start up TiddlyWiki server
WIKI=rpiwiki

default:
	@echo Starting the server.  You can connect at 
	@echo http://localhost:8080
	@echo press return to continue ...
	@read nothing
	tiddlywiki $(WIKI) --server 

create:  # only once!!
	# tiddlywiki $(WIKI) --init server
	echo Be careful!  Only 'create' once!

backup:	# how does this worK?
	tiddlywiki $(WIKI) --build index
