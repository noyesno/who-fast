

.PHONY: run

run: $(wildcard *.php)
	@for file in $? ; do \
	  echo "----" ; \
	  echo "File:" $$file ; \
	  time php -q $$file > /dev/null ; \
	done

