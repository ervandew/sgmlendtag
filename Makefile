SHELL=/bin/bash

all: dist

dist:
	@rm sgmlendtag.vba 2> /dev/null || true
	@vim -c 'r! git ls-files autoload doc ftplugin' \
		-c '$$,$$d _' -c '%MkVimball sgmlendtag.vba .' -c 'q!'

clean:
	@rm -R build 2> /dev/null || true
