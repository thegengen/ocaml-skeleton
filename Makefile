default: build
	_obuild/hello_test/hello_test.asm

build:
	ocp-build

clean:
	ocp-build clean
	rm -f *.log
	rm -f *.cache
