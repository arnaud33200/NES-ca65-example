<image src="https://s6.gifyu.com/images/ezgif-4-49e9da646b57.gif" width="300px">

This Project is a fork from Brad Smith Project: 
https://github.com/bbbradsmith/NES-ca65-example

I changed it to make it work on Mac / Unix System.

# Compile project

Make sure to have cc65 installed
```bash
brew install cc65
```
Then in the main directory, run this script:
```bash
./compile_example.sh
```
Or run those commands
```bash
mkdir -p generated
mkdir -p debug

ca65 src/example.s -g -o generated/example.o
ld65 -o example.nes -C src/example.cfg generated/example.o 
```

# Tools

View and edit Tiles (chr or nes file): 
- https://github.com/arnaud33200/NES-Tile-Viewer
