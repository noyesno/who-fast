

.PHONY: run

run: $(wildcard *.tcl)
	@for file in $? ; do \
	  echo "----" ; \
	  echo "File:" $$file ; \
	  time tclsh $$file > /dev/null ; \
	done

