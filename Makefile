# start up TiddlyWiki server
WIKI=rpiwiki
PORT=8080
CLASSIP=$$( ifconfig|grep 192| awk '{print $$2}' )
# R2D2 has two nics, so I need to disambiguate
MYIP="192.168.1.243"
# MYIP=$(CLASSIP)

def:
	@echo "Targets:"
	@echo "www - start tiddlywiki server on INET (use on bitnami VM)"
	@echo "local- start tiddlywiki server locally"

local:
	@echo Starting the server.  You can connect at 
	@echo http://localhost:8080
	@echo press return to continue ...
	@read nothing
	tiddlywiki $(WIKI) --server 

classroom:
	@echo Starting tiddlywiki on http://$(CLASSIP):$(PORT)
	tiddlywiki $(WIKI) --server $(PORT) "$$:/core/save/all" text/plain text/html rpi linuxrules $(CLASSIP)

www:
	@echo Starting tiddlywiki on http://$(MYIP):$(PORT)
	@echo See Also: http://linuxlabs.duckdns.org:8080
	tiddlywiki $(WIKI) --server $(PORT) "$$:/core/save/all" text/plain text/html rpi linuxrules $(MYIP)
	

create:  # only once!!
	# tiddlywiki $(WIKI) --init server
	echo Be careful!  Only 'create' once!

backup:	# how does this worK?
	tiddlywiki $(WIKI) --build index

ssh: 
	ssh bitnami@$(MYIP)

ugh:
	# when there is a tiddler with a gratuitous change in the way
	mv rpiwiki/tiddlers/\$$__StoryList_1.tid /tmp/.
