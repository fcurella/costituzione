markdowns = $(wildcard *.md)
htmls = $(patsubst %.md,%.html,$(markdowns))

all: $(htmls)

%.html: %.md
	bin/md2html $< > $@

clean:
	rm -f $(htmls)
