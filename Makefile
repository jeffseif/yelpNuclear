.PHONY: all clean

TARGET = pres
JUNK = \
	$(TARGET).aux \
	$(TARGET).log \
	$(TARGET).nav \
	$(TARGET).snm \
	$(TARGET).out \
	$(TARGET).toc

all: $(TARGET).pdf

%.pdf : %.tex
	pdflatex $*
	@rm -f $(JUNK)

clean:
	@rm -f $(TARGET).pdf
