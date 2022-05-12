
pip3 install virtualenv
pip3 install wheel

virtualenv .venv

source .venv/bin/activate

ls -al

python setup.py bdist_wheel

ls -al