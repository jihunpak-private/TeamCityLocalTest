from setuptools import find_packages, setup


setup(
    name="jihun-test",
    version="1.2.5",
    author="jihun",
    author_email="pj522h@gmail.com",
    description="Simple Packaging by Python, jihun",
    keywords=['test', 'package'],
    install_requires=['numpy==1.20.0'],
    packages=find_packages(),
    classifiers=["Programming Language :: Python :: 3",
                 "License :: OSI Approved :: MIT License",
                 "Operating System :: OS Independent"],
    python_requires='>=3.6'
)
