import io
from setuptools import find_packages, setup


setup(
    name="jihun-test",
    version="1.1.4",
    author="jihun",
    author_email="pj522h@gmail.com",
    description="Simple Packaging by Python",
    keywords=['test','package'],
    install_requires=[
    'numpy==1.22.3'
],
    packages=find_packages(),
    classifiers=[ 
        "Programming Language :: Python :: 3", 
        "License :: OSI Approved :: MIT License", 
        "Operating System :: OS Independent",],
    python_requires='>=3.6',   
)

