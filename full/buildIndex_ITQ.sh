CODE_PATH=/srv2/rgirdhar/Work/Code/0002_Retrieval/Try/ScalableLSH/DiskE2LSH
$CODE_PATH/buildIndex.bin \
    -d /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Features/pool5_normed \
    -n /home/rgirdhar/memexdata/Dataset/processed/0004_IST/lists/Images.txt \
    -l /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/fullImg_ITQ_256bit.index \
    -s /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/fullImg_ITQ_256bit.index \
    -b 256 \
    -t 1 \
    -a 900 \
    --duplist /memexdata/Dataset/processed/0004_IST/lists/Uniq_sha1.txt \
    --nTrain 300000
