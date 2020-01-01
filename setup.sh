#! /bin/bash  -xue

boxFile='centos8-develop.box'
boxName='centos8-develop'

# Account Name of Vagrant Cloud.
vcUser='takahiro-itou'

pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../${boxFile}  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ${vcUser}/${boxName}  ${boxFile}
_EOF_
