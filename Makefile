.PHONY: test

setup:
	bundle install

test:
	bundle exec -- rake test
