# REMOVE OLD FILES
rm -rf release/
rm -rf middleware.zip

# REMAKE THE DIRECTORY
mkdir release/

# CONVERT NOTEBOOKS TO SCRIPTS
ipynb-py-convert launcher.ipynb launcher.py
ipynb-py-convert patcher.ipynb patcher.py

# ------- LAUNCHER

# COMPILE INTO ONE FILE
pyinstaller --onefile launcher.py

# REMOVE GARBAGE
rm -rf build/
rm -rf __pycache__/
rm -rf launcher.spec
rm -rf launcher.py

# MOVE LAUNCHER FILE & REMOVE DIST DIR
mv dist/launcher release/launcher
rm -rf dist/

# ------- PATCHER

# COMPILE INTO ONE FILE
pyinstaller --onefile patcher.py

# REMOVE GARBAGE
rm -rf build/
rm -rf __pycache__/
rm -rf patcher.spec
rm -rf patcher.py

# MOVE LAUNCHER FILE & REMOVE DIST DIR
mv dist/patcher release/patcher
rm -rf dist/

# COPY CONFIG DIR
cp -r config release/config

# CREATE CHECKSUM FILE
python3 scripts/checksum.py

# ZIP EVERYTHING
zip -j middleware.zip release/launcher release/patcher release/checksums.json

# REMOVE THE CHECKSUM FILE
rm -rf release/checksums.json