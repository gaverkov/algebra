# Variables
TEX=pdflatex
MAIN=algebra
OTHER=residue_class_rings 
SOURCES=algebra.tex Commands.tex PageLayout.tex example_surface.png

# Default target
all: $(MAIN).pdf $(OTHER).pdf
	@echo "PDF build complete!"

# Rule to build PDF
$(MAIN).pdf: $(SOURCES)
	$(TEX) $(MAIN).tex
	$(TEX) $(MAIN).tex   # Run twice for references, toc, etc.

$(OTHER).pdf: $(OTHER).tex
	$(TEX) $(OTHER).tex
	$(TEX) $(OTHER).tex

# Clean auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).toc $(MAIN).synctex.gz
	rm -f $(OTHER).aux $(OTHER).log $(OTHER).toc $(OTHER).synctex.gz
	@echo "Cleaned auxiliary files!"

# Phony targets
.PHONY: all clean
