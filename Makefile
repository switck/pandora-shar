
INSIDE = example.sh
OUTPUT = pandora.shar

$(OUTPUT): $(PREFIX) $(INSIDE) Makefile
	@echo "#! /bin/sh" > $(OUTPUT)
	@echo "openssl aes-256-ecb -d -a <<^^ | sh" >> $(OUTPUT)
	openssl aes-256-ecb -e -a < $(INSIDE) >> $(OUTPUT)
	@echo '^^' >> $(OUTPUT)
	@chmod +x $(OUTPUT)

