#!/bin/bash

# run this from the notebook root directory
docker run -it --rm -p 8888:8888 -v "$(pwd)":/home/jovyan/app viewscad-sp
