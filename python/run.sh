
pip3 install virtualenv
pip3 install wheel

virtualenv .venv

source .venv/bin/activate

ls

python setup.py bdist_wheel

ls

pip3 freeze > requirements.txt