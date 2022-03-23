Wed Mar 23 13:16:47 MST 2022
----------------------------
I observe that --server is deprecated in favor of --listen, but the version I am running 5.1.17
does not recognize '--listen', so need to update version of tiddlywiki (preserving contents!)
and update Makefile to use --listen.

https://tiddlywiki.com/#ListenCommand

Trying to figure out how to use relative paths so I can link to pdfs/my.pdf instead of embedding a
pdf in the twiki proper, but I can't work out which location that pdfs/ folder should be.
Perhaps related to the out of date twiki?

# it appears I am running tiddlywiki using Node.js, so this is the upgrade path:
https://tiddlywiki.com/static/Upgrading%2520TiddlyWiki%2520on%2520Node.js.html

Now running tiddlywiki 5.2.1


Fri Apr  5 13:45:05 MST 2019
----------------------------
This solution depends on having tiddlywiki server available.  On the mac you can install this using

$ brew install node
$ npm install -g tiddlywiki

See Also: https://tiddlywiki.com Installing TiddlyWiki on Node.js


Wed Jul  4 06:36:03 CDT 2018
----------------------------
Trying to figure out how best to save notes. 
I quite like TiddlyWiki.  Any way to share this with a wider audience?

Installed TiddlyWiki on Node.js as an experiment.
I believe this will open a webserver that I can expose.
Test to make sure changes get saved.
Figure out how to make backups.

This whole wiki is stored in git
https://github.com/timborn/rpi-wiki

rpi/linuxrules
