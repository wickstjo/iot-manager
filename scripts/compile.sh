rm -rf executable.run
rm -rf app.py
ipynb-py-convert app.ipynb app.py
pyinstaller --onefile app.py
rm -rf build/
rm -rf __pycache__/
mv dist/app executable.run
rm -rf dist/
rm -rf app.spec
rm -rf app.py