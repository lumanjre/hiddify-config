mkdir -p videos
which yt-dlp 
if [[ "$?" != 0 ]];then
pip3 install yt-dlp 
fi
declare -A arr
arr["features"]="https://www.youtube.com/watch?v=-a4tfRUsrNY"
arr["webapp-ios"]="https://youtube.com/shorts/GBywNl2KZMM"
arr["webapp-android"]="https://youtube.com/shorts/LGXBh6Waw4E"
arr["ios-fair"]="https://youtube.com/shorts/Q5HhA0oq4Mc"
arr["ios-stash"]="https://www.youtube.com/watch?v=D0Xv54nRSY8"
arr["ios-shadowrocket"]="https://youtube.com/shorts/5CyktpUePf0"
arr["android-v2rayng"]="https://youtube.com/shorts/ubDpLfZUSIo"
for key in ${!arr[@]}; do
    dst=videos/$key.mp4
    link=${arr[${key}]}
    if [[ ! -f $dst ]];then
        yt-dlp $link -o $dst   
    fi
done
