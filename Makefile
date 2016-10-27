DRAFT = draft-mcquistin-low-latency-transport-services.txt \
        draft-mcquistin-low-latency-transport-services.pdf

all: $(DRAFT)

%.pdf: %.txt
	@echo "Generating PDF..."
	@enscript -q -lc -f Courier11 -M A4 -p - $< | ps2pdf - $@

%.txt: %.xml
	xml2rfc $<
	cp $@ $(shell python bin/get-docname.py $<).txt

clean: 
	rm -f $(DRAFT)

