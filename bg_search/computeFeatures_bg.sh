CODE_PATH=/home/rgirdhar/data/Work/Code/0001_FeatureExtraction/ComputeFeatures/Features/CNN/ver2/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CODE_PATH}/../external/caffe/build/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/srv2/rgirdhar/Software/cpp/zeromq/install/lib/
GLOG_logtostderr=0 nice -n 10 ${CODE_PATH}/computeFeatures.bin \
    -i service \
    -q /home/rgirdhar/memexdata/Dataset/processed/0004_IST/lists/Images.txt \
    -n ${CODE_PATH}/../deploy_memexgpu.prototxt \
    -m /home/rgirdhar/data/Software/vision/caffe/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel \
    -l pool5 \
    --segdir service \
    -o /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Features/pool5_bg_normed \
    -y \
    -t lmdb \
    -s \
    --pool avg \
    --uniquelist /memexdata/Dataset/processed/0004_IST/lists/Uniq_sha1.txt \
    -z 10000000

