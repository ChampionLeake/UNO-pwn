cd ./assets
make

cd ..
make

cd ./CRC32-Fix
python3 CRC32Fix-SETTINGS.py
python3 CRC32Fix-MATCH.py

pause