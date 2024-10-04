## Markdown extension (e.g. md, markdown, mdown).
MEXT = md

## All markdown files in the working directory
SRC = $(wildcard *.$(MEXT))

TEX=$(SRC:.md=.tex)

all: $(TEX)


## Convert markdown source to LaTeX
%.tex: %.md
	pandoc -f markdown -t latex -o $@ $<
