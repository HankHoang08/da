
prerequisites:
	rm -rf ~/.local/bin/pandoc
	wget https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-linux-amd64.tar.gz
	tar xvf pandoc-2.13-linux-amd64.tar.gz
	cp pandoc-2.13/bin/pandoc ~/.local/bin
	chmod a+rx ~/.local/bin/pandoc
	rm pandoc-2.13-linux-amd64.tar.gz
	rm -rf pandoc-2.13

report.md: holes.csv
	chmod +x report
	./report > $@

report.html: report.md
	~/.local/bin/pandoc --from markdown --to html --output=report.html $^

report:
	

