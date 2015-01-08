#!/bin/bash
FILE=/etc/yum.repos.d/dcs-snapshots.repo

if [ -f $FILE ];
then
   echo "File $FILE exists. Removing"
   rm -f $FILE
fi

FILE=/etc/yum.repos.d/dcs-artifactory.repo
 
if [ -f $FILE ]; 
then 
   echo "File $FILE already exists. " 
   exit 0
fi 

echo "[Artifactory]" > $FILE
echo "name=Artifactory" >> $FILE
echo "baseurl=http://dcs-artifactory.nuance.com:8081/artifactory/dcs/" >> $FILE
echo "gpgcheck=0" >> $FILE
echo "enabled=1" >> $FILE




echo "DCS Artifactory yum Repo installation complete. Please run yum update"





