BUILD_PKGS=batteries
TEST_PKGS=batteries,oUnit

BUILD_FLAGS=-use-ocamlfind -pkgs ${BUILD_PKGS} -Is src
TEST_FLAGS=-use-ocamlfind -pkgs ${TEST_PKGS} -Is src -build-dir _build

default: build

build: test

doc:
	ocamldoc -html src/*mli -d docs

test:
	ocamlbuild ${TEST_FLAGS} tests/ex30_test.native --

clean:
	ocamlbuild -clean
	rm -f docs/*
