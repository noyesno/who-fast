


SUBDIRS = tcl python javascript php ruby

all: run report

     
run:
	@for dir in $(SUBDIRS); do \
          $(MAKE) --no-print-directory -C $$dir; \
        done |& tee report/run.log

.PHONY: report
report: report/run.tim
	@for t in `awk '{print $$3}' $< | sort -u` ; do \
	  echo "==== $$t ====" ; \
	  fgrep $$t $< | sort -n -k 3 ; \
	  echo "" ; \
	done | tee report/run.rpt

report/run.tim: report/run.log bin/run2tim.awk
	@bin/run2tim.awk report/run.log > report/run.tim

