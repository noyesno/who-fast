

.PHONY: run

run: $(wildcard *.js)
	@for file in $? ; do \
	  echo "----" ; \
	  echo "File:" $$file ; \
	  time node $$file > /dev/null ; \
	done

