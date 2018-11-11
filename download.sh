#/bin/bash
if [ $# == 0 ];then
	echo "please input url"
elif [ $# == 1 ];then
	echo "please input video num"
else
	wget $1 -O html
	url=$(grep -o "http.*mp4" html)
	echo $url
	wget $url -qbO $2.mp4
fi
