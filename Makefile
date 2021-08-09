# Makefile

MODULEDIRS=			\
	ap			\
	ar			\
	co			\
	gl			\
	pa			\
	common		\
	inv			\
	$(EMPTY)

all: modules

modules:
	@for i in $(MODULEDIRS); do \
		(echo "in $$i"; cd 2>/dev/null $$i && make --no-print-directory || (echo "Module $$i build failed"; exit 1;) ) || exit 1; \
    done
