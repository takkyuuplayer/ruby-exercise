.PHONY: test

setup:
	bundle install

lint:
	bundle exec -- rubocop
test:
	bundle exec -- rake test
