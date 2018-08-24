# start up TiddlyWiki server
WIKI=rpiwiki
MYIP="192.168.0.51"
PORT=8080
CLASSIP=$$( ifconfig|grep 192| awk '{print $$2}' )

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
	ssh bitnami@192.168.0.51
