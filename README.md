![plot](https://raw.github.com/niklas-heer/speed-comparison/master/.github/plot_v1.5.png "Speed comparison of programming languages")

---

# Speed comparison of programming languages

This projects tries to compare the speed of different programming languages.
In this project we don't really care about getting a precise calculation of pi. We only want to see how fast are the programming languages doing.

It uses an implementation of the [Leibniz formula for π](https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80) to do the comparison.

Here is a video which explains how it works: [Calculating π by hand](https://www.youtube.com/watch?v=HrRMnzANHHs)

## Disclaimer

I'm no expert in all these languages, so take my results with a grain of salt.<br>
Also the findings just show how good the languages can handle floating point operations, which is only one aspect of a programming language.

You are also welcome to contribute and help me make fix my possible misuse of some languages. :smile:

## Languages used in this comparison

- [Julia](http://julialang.org/) - JIT
- [R](https://www.r-project.org/) - interpreted
- [Python](https://www.python.org/) - interpreted (CPython)
- [Ruby](https://www.ruby-lang.org/) - interpreted
- [Swift](https://swift.org/) - compiled (in this test interpreted due to Linux Swift limitations)
- [Java](http://www.oracle.com/technetwork/java/index.html) - compiled, VM
- [Rust](https://www.rust-lang.org/)  - compiled
- [Javascript](https://www.ecma-international.org/publications/standards/Ecma-402.htm) using [Node.js](https://nodejs.org/) - interpreted, JIT
- [Lua](https://www.lua.org/) - interpreted
- [Nim](https://nim-lang.org/) - compiled
- [PHP](https://secure.php.net/) - interpreted
- [C++](https://isocpp.org/) - compiled
- [Crystal](https://crystal-lang.org/) - compiled
- [Go](https://golang.org/) - compiled
- [C](https://en.wikipedia.org/wiki/C_(programming_language)) - compiled

## Results

```text
======= Comparison =======
Iterations: 10000000

> Julia
Version: julia version 1.1.0
Speed (all): 1253ms, 1287ms, 1300ms, 1282ms, 1342ms, 1300ms, 1285ms, 1257ms, 1290ms, 1314ms
Speed (best): 1253ms
Speed (worst): 1342ms
Speed (median): 1288.5ms
Result: 

> Python 3 (CPython)
Version: Python 3.7.3
Speed (all): 2663ms, 2602ms, 2663ms, 2637ms, 2590ms, 2708ms, 2562ms, 2667ms, 2517ms, 2504ms
Speed (best): 2504ms
Speed (worst): 2708ms
Speed (median): 2619.5ms
Result: 3.1415927535897814

> R
Version: R version 3.6.0 (2019-04-26) -- "Planting of a Tree"
Speed (all): 1893ms, 1876ms, 1876ms, 1879ms, 1911ms, 1886ms, 1886ms, 1894ms, 1876ms, 1898ms
Speed (best): 1876ms
Speed (worst): 1911ms
Speed (median): 1886.0ms
Result: 3.1415925535898115

> Ruby
Version: ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]
Speed (all): 1229ms, 1236ms, 1225ms, 1328ms, 1222ms, 1211ms, 1277ms, 1228ms, 1371ms, 1382ms
Speed (best): 1211ms
Speed (worst): 1382ms
Speed (median): 1232.5ms
Result: 3.1415925535898115

> Java
Version: 8
Speed (all): 145ms, 138ms, 130ms, 123ms, 130ms, 127ms, 124ms, 131ms, 137ms, 134ms
Speed (best): 123ms
Speed (worst): 145ms
Speed (median): 130.5ms
Result: 3.1415927535897814

> Lua
Version: Lua 5.3.5  Copyright (C) 1994-2018 Lua.org, PUC-Rio
Speed (all): 801ms, 871ms, 828ms, 777ms, 870ms, 816ms, 777ms, 853ms, 832ms, 863ms
Speed (best): 777ms
Speed (worst): 871ms
Speed (median): 830.0ms
Result: 3.1415925535898115

> Rust
Version: rustc 1.34.1
Speed (all): 432ms, 426ms, 428ms, 425ms, 428ms, 424ms, 425ms, 425ms, 424ms, 427ms
Speed (best): 424ms
Speed (worst): 432ms
Speed (median): 425.5ms
Result: 3.1415927535897814

> JS (node)
Version: v11.15.0
Speed (all): 123ms, 115ms, 116ms, 114ms, 117ms, 114ms, 120ms, 128ms, 123ms, 113ms
Speed (best): 113ms
Speed (worst): 128ms
Speed (median): 116.5ms
Result: 3.1415927535897814

> PHP 7
Version: PHP 7.3.5 (cli) (built: Apr 30 2019 21:05:09) ( NTS )
Speed (all): 452ms, 447ms, 447ms, 448ms, 446ms, 443ms, 456ms, 473ms, 448ms, 444ms
Speed (best): 443ms
Speed (worst): 473ms
Speed (median): 447.5ms
Result: 3.1415927535897814

> Python 3 (pypy)
Version: 7.1.1-1
Speed (all): 255ms, 158ms, 157ms, 152ms, 161ms, 154ms, 167ms, 161ms, 153ms, 151ms
Speed (best): 151ms
Speed (worst): 255ms
Speed (median): 157.5ms
Result: 3.1415927535897814

> Nim
Version: 0.18.0-1
Speed (all): 481ms, 453ms, 430ms, 427ms, 421ms, 423ms, 425ms, 424ms, 426ms, 423ms
Speed (best): 421ms
Speed (worst): 481ms
Speed (median): 425.5ms
Result: 3.1415925535898115

> C++
Version: g++ (GCC) 8.3.0
Speed (all): 42ms, 35ms, 34ms, 34ms, 37ms, 35ms, 34ms, 34ms, 38ms, 35ms
Speed (best): 34ms
Speed (worst): 42ms
Speed (median): 35.0ms
Result: 3.1415927535897814

> Crystal
Version: Crystal 0.28.0 (2019-04-17)
Speed (all): 59ms, 38ms, 42ms, 37ms, 39ms, 38ms, 36ms, 38ms, 40ms, 37ms
Speed (best): 36ms
Speed (worst): 59ms
Speed (median): 38.0ms
Result: 3.1415925535898115

> C
Version: gcc (GCC) 8.3.0
Speed (all): 37ms, 39ms, 35ms, 33ms, 33ms, 33ms, 33ms, 33ms, 34ms, 33ms
Speed (best): 33ms
Speed (worst): 39ms
Speed (median): 33.0ms
Result: 3.1415927535897814

> Go
Version: go version go1.12.4 linux/amd64
Speed (all): 41ms, 19ms, 18ms, 18ms, 19ms, 18ms, 19ms, 18ms, 17ms, 17ms
Speed (best): 17ms
Speed (worst): 41ms
Speed (median): 18.0ms
Result: 3.1415927535897814
```

## Run it yourself

Everything is run by a Docker container and a bash script which envokes the programs.

To measure the execution time a [python package](https://pypi.python.org/pypi/lauda/1.2.0) is used.

### Requirements

- `Docker`
- `Makefile` support

### Run measurement

Just run: `make`

### Print plot

`make plot`

### Run cli

`make cli`

## FAQ

> Why do you also count reading a file and printing the output?

Because I think this is a more realistic scenario to compare speeds.

> Are the compile times included in the measurements?

No they are not included, because when running the program in the real world this would also be done before.

## TODO

- [x] Add C++
- [x] Add run pypy for Python
- [x] Produce graphic with results
- [x] Add Java
- [x] Add Swift
- [x] Add R
- [ ] Add Php 5.6
- [ ] Add phpv8js
- [ ] Add python2
- [ ] Add Smalltalk
- [ ] Add C#
- [ ] Add Perl
- [ ] Add Kotlin
- [ ] Add Haskell
- [ ] Add Elixir
- [ ] Add Lisp
- [ ] Add Ada
- [ ] Add COBOL

## Thanks

This projects takes inspiration from [Thomas](https://www.thomaschristlieb.de) who did a similar comparison [on his blog](https://www.thomaschristlieb.de/performance-vergleich-zwischen-verschiedenen-programmiersprachen-und-systemen/).
