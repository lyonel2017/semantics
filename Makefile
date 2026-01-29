all: Makefile.coq
	+make -f Makefile.coq all

clean: Makefile.coq
	+make -f Makefile.coq clean

Makefile.coq:
	$(COQBIN)rocq makefile -f _CoqProject -o Makefile.coq

%: Makefile.coq
	+make -f Makefile.coq $@

.PHONY: all clean
