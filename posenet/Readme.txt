Posenet使用说明：
Author：Alexkendall
Revised by Ruihao




1.  Create new LMDB datasets using the new script(创建LMDB文件)


	python ./posenet/scripts/create_posenet_lmdb_dataset.py



2.   Compute new dataset mean files（创建均值文件）


	build/tools/compute_image_mean posenet/dataset/posenet_kings_train_lmdb/ posenet/dataset/kings_mean.binaryproto

3.   Retest posenet （测试posenet）


	python ./posenet/scripts/test_posenet.py --model ../../Documents/PoseNet/train_kingscollege.prototxt --weights ../../Documents/PoseNet/weights_kingscollege.caffemodel --iter 346

	python ./posenet/scripts/test_posenet.py --model posenet/models/train_posenet.prototxt --weights posenet/models/weights_kingscollege.caffemodel --iter 346


4.   Retest posenet (Bayes) 测试Posenet-Bayes

 	python ./posenet/scripts/test_bayesian_posenet.py --model posenet/models/test_bayesian_posenet.prototxt --weights posenet/models/weights_kingscollege.caffemodel --dataset posenet/dataset/posenet_kings_test_lmdb/ --meanfile posenet/dataset/kings_mean.binaryproto



5.    train new model  训练网络模型参数

	./build/tools/caffe train --solver=posenet/models/solver_posenet.prototxt


	./build/tools/caffe train --solver=posenet/models/solver_bayesian_posenet.prototxt





























