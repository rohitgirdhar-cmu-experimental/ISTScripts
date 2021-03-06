BASE_PATH=/home/rgirdhar/data/Work/Code/0001_FeatureExtraction/ComputeFeatures/Features/CNN
CODE_PATH=/srv2/rgirdhar/Work/Code/0002_Retrieval/ScalableLSH/Deploy/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${BASE_PATH}/external/caffe/build/lib/:/home/rgirdhar/data/Software/cpp/zeromq/install/lib/
GLOG_logtostderr=1 ${CODE_PATH}/computeFeatAndSearch.bin \
    -n ${CODE_PATH}/deploy.prototxt \
    -m /home/rgirdhar/data/Software/vision/caffe/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel \
    -l pool5 \
    -i /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/bgImg_300bit.index \
    -s /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Features/pool5_bg_normed \
    -g /srv2/rgirdhar/Work/Code/0005_ObjSegment/scripts/seg_service_scripts_2/temp-dir/result.jpg \
    --imgslist /home/rgirdhar/memexdata/Dataset/processed/0004_IST/lists/Images.txt \
    --duplist /home/rgirdhar/memexdata/Dataset/processed/0004_IST/lists/Uniq_sha1.txt \
    --port-num 5560 \
    --num-output 100
