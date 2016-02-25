#!/usr/bin/env sh

./build/tools/caffe train  --solver=posenet/models/solver_posenet.prototxt  --weights posenet/models/places_googlenet.caffemodel
