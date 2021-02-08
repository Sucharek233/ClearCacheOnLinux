while true; do

read -p "What do you want to clear? Swap, Cached RAM or both? Answer: S/s, R/r, B/b " yn

case $yn in

[Ss]* ) echo "Clearing swap"; sudo swapoff /swapfile; echo "Turning swap back on"; sudo swapon /swapfile; sudo swapoff /swapfile; sudo swapon /swapfile; echo "Done"; sleep 2; break;;

[Rr]* ) echo "Clearing Cached/Buffed RAM"; sudo su -c "sync && echo 3 > /proc/sys/vm/drop_caches"; echo "Done"; sleep 1; exit;;

[Bb]* ) echo "Clearing swap"; sudo swapoff /swapfile; echo "Turning swap back on"; sudo swapon /swapfile; sudo swapoff /swapfile; sudo swapon /swapfile; echo "Done"; sleep 2; echo "Clearing Cached/Buffed RAM"; sudo su -c "sync && echo 3 > /proc/sys/vm/drop_caches"; echo "Done"; sleep 2; exit;;

* ) echo "Please answer S/s, R/r or B/b";;

esac

done
