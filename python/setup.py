import io
from setuptools import find_packages, setup
from pip._internal.req import parse_requirements


setup(
    name="jihun-test",
    version="1.0.0",
    author="jihun",
    author_email="pj522h@gmail.com",
    description="Simple Packaging by Python",
    keywords=['test','package'],
    install_requires=['attrs==21.4.0',
    'distlib==0.3.4',
    'filelock==3.6.0',
    'iniconfig==1.1.1',
    'packaging==21.3',
    'platformdirs==2.5.2',
    'pluggy==1.0.0',
    'py==1.11.0',
    'pyparsing==3.0.9',
    'pytest==7.1.2',
    'six==1.16.0',
    'toml==0.10.2',
    'tomli==2.0.1',
    'tox==3.25.0',
    'virtualenv==20.14.1'
],
    packages=find_packages(),
    classifiers=[ 
        "Programming Language :: Python :: 3", 
        "License :: OSI Approved :: MIT License", 
        "Operating System :: OS Independent",],
    python_requires='>=3.6',   
)

