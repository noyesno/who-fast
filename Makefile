


SUBDIRS = tcl python javascript php ruby

all: version run report


version:
	@uname -a | awk '{$$2="";print}'
	@echo -n "Tcl " ; echo "puts [info patch]" | tclsh
	@echo -n "Node.js "; node -v
	@php -v | head -1
	@python -V
	@ruby -v
     
run:
	@for dir in $(SUBDIRS); do \
          $(MAKE) --no-print-directory -C $$dir; \
        done |& tee report/run.log

.PHONY: report
report: report/run.tim
	@for t in `awk '{print $$3}' $< | sort -u` ; do \
	  echo "==== $$t ====" ; \
	  fgrep $$t $< | sort -n -k 5 ; \
	  echo "" ; \
	done | tee report/run.rpt

report/run.tim: report/run.log bin/run2tim.awk
	@bin/run2tim.awk report/run.log > report/run.tim

