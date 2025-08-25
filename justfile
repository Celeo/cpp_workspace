default: run

source := "main.cpp"
output := "main"

run: build
    @./{{output}}

build:
    @g++ -std=c++23 -Wall -Wextra -Wconversion -Wsign-conversion -Wpedantic -Wsign-conversion -Werror -O0 ./{{source}} -o {{output}}

clean:
    @rm ./{{output}}

release-build:
    @g++ -std=c++23 -O2 -DNDEBUG ./{{source}} -o {{output}}

