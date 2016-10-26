DRAFT = draft-mcquistin-low-latency-transport-services.txt

all: $(DRAFT)

%.txt: %.xml
	xml2rfc $<
	cp $@ $(shell python bin/get-docname.py $<).txt

clean: 
	rm -f $(DRAFT)