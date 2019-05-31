#! /bin/sh

dir="/srv/staticfile/"
cd ${dir}
if [ ! -d "${dir}passes.vouche" ];then
    git clone https://github.com/jiabinOu/test.git;
    mv test/passes.voucher .
   if [ ! -d "${dir}passes.vouche.uint "];then
      mv test/passes.voucher.uint .
   fi
fi
ln -s /srv/staticfile/passes.voucher /opt/release;
mkdir /efs/voucher/srv/staticfile/passbook_file;
ln -s /efs/voucher/srv/staticfile/passbook_file /srv/staticfile;
