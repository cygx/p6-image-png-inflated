PROVE = prove
PERL6 = perl6
CC = gcc
RM = rm -rf
CHMOD-X = chmod -x

export PERL6LIB = lib

png: pngcheck
	$(PERL6) examples.p6
	./pngcheck *.png
	@$(CHMOD-X) *.png

pngcheck: pngcheck.c
	$(CC) -o $@ $<

clean:
	$(RM) *.png pngcheck
