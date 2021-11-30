LDLIBS=-lpcap

all: tcp-block

tcp-block: ethhdr.o ip.o mac.o tcp-block.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f tcp-block *.o
