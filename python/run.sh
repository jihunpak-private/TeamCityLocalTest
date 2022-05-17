
pip3 install virtualenv
pip3 install wheel

virtualenv .venv

source .venv/bin/activate

ls -al

#python setup.py bdist_wheel
python -m twine upload dist/* -u ARTIFACTORY_USER_NAME -p ARTIFACTORY_USER_PWD

ls -al