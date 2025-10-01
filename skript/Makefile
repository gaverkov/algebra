# Variables
TEX=pdflatex
MAIN=algebra
SOURCES=algebra.tex Commands.tex PageLayout.tex example_surface.png

# Default target
all: $(MAIN).pdf
	@echo "PDF build complete!"

# Rule to build PDF
$(MAIN).pdf: $(SOURCES)
	$(TEX) $(MAIN).tex
	$(TEX) $(MAIN).tex   # Run twice for references, toc, etc.

# Clean auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).toc $(MAIN).synctex.gz
	@echo "Cleaned auxiliary files!"

# Phony targets
.PHONY: all clean
