_REPO_DEST = root@pikvm.org:/var/www/

all:
	cat Makefile

pug:
	~/.npm-packages/bin/pug --pretty index.pug
	~/.npm-packages/bin/pug --pretty donate.pug

upload:
	rsync -rl --progress css img *.html *.webmanifest *.ico $(_REPO_DEST)
