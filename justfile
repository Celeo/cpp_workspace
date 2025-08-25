default: run

source := "main.cpp"
output := "main"

run: build
    @./{{output}}

build:
    @g++ -std=c++23 -Wall -Wextra -Wconversion -Wsign-conversion -Wpedantic -Wsign-conversion -Werror -O0 ./{{source}} -o {{output}}

build-watch:
    @ls *.cpp | entr -c just build
    
clean:
    @rm ./{{output}}

release-build:
    @g++ -std=c++23 -O2 -DNDEBUG ./{{source}} -o {{output}}
