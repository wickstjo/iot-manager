# REMOVE OLD FILES
rm -rf launcher
rm -rf launcher.zip
rm -rf app.py

# CONVERT NOTEBOOK TO SCRIPT
ipynb-py-convert app.ipynb app.py

# COMPILE INTO ONE FILE
pyinstaller --onefile app.py

# REMOVE GARBAGE
rm -rf build/
rm -rf __pycache__/
rm -rf app.spec
rm -rf app.py

# MOVE LAUNCHER FILE & REMOVE DIST DIR
mv dist/app launcher
rm -rf dist/