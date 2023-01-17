
MODDIR=${0%/*}

usleep 1500000

(while :
do
    sf=$(service list | grep -c "SurfaceFlinger")

    if [ $sf -eq 1 ]
    then
        service call SurfaceFlinger 1008 i32 1
        break
    else
        sleep 2
    fi
done
) &
