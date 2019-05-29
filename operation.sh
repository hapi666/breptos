#!/bin/bash
cd resume #repository name.eg name is resume
git pull
pwd
cd ..
pwd
cd resume
files=$(ls -d */)
for filename in ${files}
do
    m=`git log -1 --pretty='%s'`
    cp -r resume/${filename} ${filename}
    echo ${filename}
    cd ${filename}
    pwd
    git add .
    echo ${m}
    git commit -m ${m}
    git push origin master
    cd ..
done

