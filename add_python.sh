#!/bin/zsh
brew install python

pip install numpy
pip install pandas
pip install plotly

// install pytables
pip install cython
brew install hdf5
brew install c-blosc
export HDF5_DIR=/opt/homebrew/opt/hdf5 
export BLOSC_DIR=/opt/homebrew/opt/c-blosc
pip install tables
