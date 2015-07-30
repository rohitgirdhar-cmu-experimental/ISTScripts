CODE_PATH=/home/rgirdhar/data/Work/Code/0002_Retrieval/ScalableLSH/DiskE2LSH
nice -n 10 $CODE_PATH/buildIndex.bin \
    -d /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Features/pool5_bg_normed \
    -n /home/rgirdhar/memexdata/Dataset/processed/0004_IST/lists/Images.txt \
    -s /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/bgImg_320bit.index \
    -b 320 \
    -t 7 \
    -a 900 \
    --duplist /memexdata/Dataset/processed/0004_IST/lists/Uniq_sha1.txt
#-l /home/rgirdhar/memexdata/Dataset/processed/0004_IST/Search/indexes/bgImg_300bit.index \
