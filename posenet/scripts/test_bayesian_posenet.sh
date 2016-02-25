#!/usr/bin/env sh

python ./posenet/scripts/test_bayesian_posenet.py --model posenet/models/test_bayesian_posenet.prototxt --weights posenet/models/weights_kingscollege.caffemodel --dataset posenet/dataset/posenet_kings_test_lmdb/ --meanfile posenet/dataset/kings_mean.binaryproto
