#!/bin/bash
docker run --rm \
-v $(pwd):/workspace \
-it wenfengand/texlive:2017msfonts
