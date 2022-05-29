#!/bin/sh -l
ruby -v
gem -v
gem install jekyll bundler
jekyll build
cd _site
echo "-------- Configuration start -----------"
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2
aws configure set region $3
echo "-------- Configuration Complete -----------"
echo " "
echo "Uploading....."

aws s3 cp $4 $5 --exclude ".github/*" --exclude ".git/*" $6
echo "Upload complete"