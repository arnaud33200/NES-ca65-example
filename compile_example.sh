rm -f example.o
rm -f example.nes
rm -f example.map
rm -f example.labels
rm -f example.nes.ram.nl
rm -f example.nes.0.nl
rm -f example.nes.1.nl
rm -f example.nes.dbg

echo -e "\nCompiling..."

ca65 example.s -g -o example.o

echo -e "\nLinking..."
ld65 -o example.nes -C example.cfg example.o -m example.map -Ln example.labels --dbgfile example.nes.dbg

echo -e "\nGenerating FCEUX debug symbols..."
python3 example_fceux_symbols.py

echo -e "\nSuccess!"
