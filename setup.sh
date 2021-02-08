echo "Requesting superuser privileges..."
sudo echo "Done"
echo "Copying files..."
mkdir ~/Scripts
mkdir ~/Scripts/clearam
cd setup_files
cp -r clearam.sh ~/Scripts/clearam
cp -r icon.png ~/Scripts/clearam
cp -r Clear.desktop ~/Desktop
sudo cp -r Clear.desktop /usr/share/applications
sudo cp -r Clear.desktop ~/.local/share/applications
sudo chmod +x /usr/share/applications/Clear.desktop
sudo chmod +x ~/.local/share/applications
sudo chmod +x ~/Desktop/Clear.desktop
echo "Done"
sleep 2
