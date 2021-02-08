echo "Requesting superuser privileges..."
sudo echo "Done"
echo "Clearing Cached/Buffed RAM..."
sudo su -c "sync && echo 3 > /proc/sys/vm/drop_caches"
echo "Done"
sleep 2
