_REPO_DEST = root@pikvm.org:/var/www/

all:
	cat Makefile

pug:
	~/.npm-packages/bin/pug --pretty index.pug
	~/.npm-packages/bin/pug --pretty download/index.pug
	~/.npm-packages/bin/pug --pretty donate/index.pug
	~/.npm-packages/bin/pug --pretty support/index.pug
	~/.npm-packages/bin/pug --pretty v3/index.pug

upload:
	rsync -rl --progress --exclude '*.pug' css img download donate support v3 *.html *.webmanifest *.ico $(_REPO_DEST)
