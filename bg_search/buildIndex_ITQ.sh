CODE_PATH=/home/rgirdhar/data/Work/Code/0002_Retrieval/Try/ScalableLSH/DiskE2LSH
GLOG_logtostderr=0 nice -n 10 $CODE_PATH/buildIndex.bin \
    -d /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Features/pool5_bg_normed \
    -n /home/rgirdhar/memexdata/Dataset/processed/0004_IST/lists/Images.txt \
    -s /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/bgImg_ITQ_256bit.index \
    -b 256 \
    -t 1 \
    -a 900 \
    --duplist /memexdata/Dataset/processed/0004_IST/lists/Uniq_sha1.txt \
    --nTrain 700000
#-l /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/bgImg_300bit.index \
