export LFS=/mnt/lfs
mkdir -pv $LFS
mount -v -t ext4 /dev/sda3 $LFS
mkdir -v $LFS/boot
mount -v -t ext4 /dev/sda1 $LFS/boot
/sbin/swapon -v /dev/sda2
mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
curl -L -O github.com/rchallie/ft_linux/raw/master/wget-list