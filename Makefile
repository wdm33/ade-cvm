# Build the Ade whitepaper into distributable formats.
#
# Requires: pandoc (https://pandoc.org).
# PDF output additionally requires a LaTeX engine such as XeLaTeX (TeX Live).

PAPER       := paper/ade-cvm-whitepaper.md
BUILD       := build
NAME        := ade-cvm-whitepaper

PANDOC      := pandoc
PANDOC_OPTS := --standalone --toc --toc-depth=3 \
               -V geometry:margin=1in -V fontsize=11pt \
               -V colorlinks=true -V linkcolor=RoyalBlue -V urlcolor=RoyalBlue

.PHONY: all pdf html clean check

all: pdf html

check:
	@command -v $(PANDOC) >/dev/null 2>&1 || { \
	  echo "error: pandoc not found — install it from https://pandoc.org"; exit 1; }

pdf: check | $(BUILD)
	$(PANDOC) $(PANDOC_OPTS) --pdf-engine=xelatex -o $(BUILD)/$(NAME).pdf $(PAPER)

html: check | $(BUILD)
	$(PANDOC) $(PANDOC_OPTS) --embed-resources -o $(BUILD)/$(NAME).html $(PAPER)

$(BUILD):
	mkdir -p $(BUILD)

clean:
	rm -rf $(BUILD)
