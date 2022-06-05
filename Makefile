# Where to find the compiler... With a trailing / !
BINDIR=
CAMLC=$(BINDIR)ocamlc
CAMLDEP=$(BINDIR)ocamldep
CAMLLEX=$(BINDIR)ocamllex
CAMLYACC=$(BINDIR)ocamlyacc
#COMPFLAGS=-w A-4-6-9 -warn-error A -g
COMPFLAGS=


EXEC = dbl
UTILS = utils.ml filter.ml
SRCS = csv.ml dblast.ml dblsem.ml dblloop.ml
GENERATED = dblparse.ml dbllex.ml
OBJS = $(UTILS:.ml=.cmo) $(GENERATED:.ml=.cmo) $(SRCS:.ml=.cmo)

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CAMLC) $(COMPFLAGS) -cclib -lunix $(OBJS) -o $(EXEC)

.SUFFIXES:
.SUFFIXES: .ml .mli .cmo .cmi .cmx
.SUFFIXES: .mll .mly

.ml.cmo:
	$(CAMLC) $(COMPFLAGS) -c $<

.mli.cmi:
	$(CAMLC) $(COMPFLAGS) -c $<

.mll.ml:
	$(CAMLLEX) $<

.mly.ml:
	$(CAMLYACC) $<

# Clean up
clean:
	rm -f *.cm[io] .cmx
	rm -f dblparse.mli
	rm -f $(OBJS)
	rm -f $(GENERATED)

# Dependencies
depend: $(UTILS) $(GENERATED) $(SRCS)
	$(CAMLDEP) $(UTILS) $(GENERATED) $(SRCS) > .depend

include .depend