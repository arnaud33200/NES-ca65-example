rm -fr generated
rm -f debug

echo -e "\nCompiling..."

mkdir -p generated
ca65 src/example.s -g -o generated/example.o

echo -e "\nLinking..."

mkdir -p debug
ld65 -o example.nes -C src/example.cfg generated/example.o -m generated/example.map -Ln generated/example.labels --dbgfile debug/example.nes.dbg

echo -e "\nGenerating FCEUX debug symbols..."
python3 example_fceux_symbols.py

echo -e "\nSuccess!"
