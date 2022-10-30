#!/bin/bash
set -eux
ARCH=arm64
PYTHON_VERSION=3.8
curl -fsSL -v -o ~/anaconda.sh -O  "https://repo.anaconda.com/archive/Anaconda3-2022.10-MacOSX-${ARCH}.sh"
chmod +x ~/anaconda.sh
~/anaconda.sh
#rm ~/anaconda.sh
#echo "export PATH=${HOME}/anaconda3/bin:\${PATH}" >> ~/.zshrc
#export PATH=${HOME}/anaconda3/bin:${PATH}
~/anaconda3/bin/conda install -y python=${PYTHON_VERSION} cmake conda-build pyyaml numpy ipython
conda install -y pytorch torchvision torchaudio -c pytorch
pip install --upgrade pip
