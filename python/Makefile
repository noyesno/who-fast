

.PHONY: run

run: $(wildcard *.py)
	@for file in $? ; do \
	  echo "----" ; \
	  echo "File:" $$file ; \
	  time python $$file > /dev/null ; \
	done

