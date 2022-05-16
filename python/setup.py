import io
from setuptools import find_packages, setup


setup(
    name="jihun-test",
    version="1.1.8",
    author="jihun",
    author_email="pj522h@gmail.com",
    description="Simple Packaging by Python",
    keywords=['test','package'],
    install_requires=[
    'numpy==1.22.3',
    'bleach==5.0.0',
    'certifi==2021.10.8',
    'cffi==1.15.0',
    'charset-normalizer==2.0.12',
    'commonmark==0.9.1',
    'cryptography==37.0.2',
    'docutils==0.18.1',
    'idna==3.3',
    'importlib-metadata==4.11.3',
    'jeepney==0.8.0',
    'keyring==23.5.0',
    'pkginfo==1.8.2',
    'pycparser==2.21',
    'Pygments==2.12.0',
    'readme-renderer==35.0',
    'requests==2.27.1',
    'requests-toolbelt==0.9.1',
    'rfc3986==2.0.0',
    'rich==12.4.1',
    'SecretStorage==3.3.2',
    'six==1.16.0',
    'twine==4.0.0',
    'typing_extensions==4.2.0',
    'urllib3==1.26.9',
    'webencodings==0.5.1',
    'zipp==3.8.0'
],
    packages=find_packages(),
    classifiers=[ 
        "Programming Language :: Python :: 3", 
        "License :: OSI Approved :: MIT License", 
        "Operating System :: OS Independent",],
    python_requires='>=3.6',   
)

