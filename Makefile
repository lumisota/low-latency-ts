DRAFT = draft-mcquistin-taps-low-latency-services.txt \
        draft-mcquistin-taps-low-latency-services.pdf

all: $(DRAFT)

%.pdf: %.txt
	@echo "Generating PDF..."
	@enscript -q -lc -f Courier11 -M A4 -p - $< | ps2pdf - $@

%.txt: %.xml
	@echo "Generating TXT..."
	@xml2rfc $<
	@cp $@ $(shell python bin/get-docname.py $<).txt

clean: 
	rm -f $(DRAFT)

