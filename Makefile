PROG = start-stop-daemon

start-stop-daemon:
	gcc start-stop-daemon.c -o $(PROG)

install: all
	$(INSTALL) -m 0755 -o root -g root $(PROG) $(prefix)/sbin

clean:
	rm -f $(PROG)
