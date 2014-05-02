# Makefile for Fbs - FrameBuffer Splash
#

DESTDIR?=

install:
	mkdir -p $(DESTDIR)/etc $(DESTDIR)/sbin
	mkdir -p $(DESTDIR)/usr/share/fbs
	install -m 0644 fbs.conf $(DESTDIR)/etc
	install -m 0755 fbs $(DESTDIR)/sbin
	cp -a themes/* $(DESTDIR)/usr/share/fbs
	
