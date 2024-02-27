.PHONY: default all clean install
DTBO = k26_starter_kits.dtbo
BIN = k26_starter_kits.bit.bin
DFXJSON = shell.json
INSTALL_DIR=$(DESTDIR)/lib/firmware/xilinx/k26-starter-kits/

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
