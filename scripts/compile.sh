# REMOVE OLD FILES
rm -rf launcher
rm -rf launcher.zip
rm -rf launcher.py
rm -rf patcher.py

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
mv dist/launcher .
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
mv dist/patcher .
rm -rf dist/