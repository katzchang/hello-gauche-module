GU_PATH=./.vender/gu
GU_REPO=https://gist.github.com/4251773.git

all: test

setup:
	test -d $(GU_PATH) || env git clone $(GU_REPO) $(GU_PATH)

clean:
	rm -rf ./.vender

test: setup
	env gosh -l $(GU_PATH)/gu.scm hellomodule_test.scm
