.PHONY: default all clean install
DTBO = k24_starter_kits.dtbo
BIN = k24_starter_kits.bit.bin
DFXJSON = shell.json
INSTALL_DIR=$(DESTDIR)/lib/firmware/xilinx/k24-starter-kits/

default all: $(BIN) $(DTBO)

$(BIN):
	bootgen -image $(subst .bit.bin,.bif,$@) -arch zynqmp -o $@ -w

$(DTBO):
	dtc -I dts -O dtb -o $@ $(subst .dtbo,.dtsi,$@)


install: all
	mkdir -p $(INSTALL_DIR)
	install -D -m 644 $(DTBO) $(INSTALL_DIR)
	install -D -m 644 $(BIN) $(INSTALL_DIR)
	install -D -m 644 $(DFXJSON) $(INSTALL_DIR)

uninstall:
	rm -rf $(INSTALL_DIR)

clean:
	rm -f *.bin *.dtbo

distclean: clean
