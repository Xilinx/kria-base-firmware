.PHONY: default all clean install

default all:
	$(MAKE) -C k26_starter_kits
	$(MAKE) -C k24_starter_kits

install: all
	$(MAKE) -C k24_starter_kits $@
	$(MAKE) -C k26_starter_kits $@

clean:
	$(MAKE) -C k24_starter_kits $@
	$(MAKE) -C k26_starter_kits $@

distclean: clean
