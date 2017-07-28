INSTALL := install

PREFIX := /usr/local
BINDIR := $(PREFIX)/bin

.PHONY: all clean install

all:
	cargo build --release

clean:
	rm -rf target/release

install: all
	$(INSTALL) -d $(BINDIR)
	$(INSTALL) target/release/msl_script_dump $(BINDIR)
