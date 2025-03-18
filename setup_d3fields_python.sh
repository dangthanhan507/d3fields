#!/bin/bash
conda env create -f env.yaml
conda activate d3fields

mkdir third-party
cd third-party

git clone git@github.com:IDEA-Research/GroundingDINO.git
cd GroundingDINO
python3 setup.py install
cd ../..
conda install gxx_linux-64