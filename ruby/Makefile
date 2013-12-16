

.PHONY: run

run: $(wildcard *.rb)
	@for file in $? ; do \
	  echo "----" ; \
	  echo "File:" $$file ; \
	  time ruby $$file > /dev/null ; \
	done

