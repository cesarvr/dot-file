echo "blacklist i2c_hid" | sudo tee /etc/modprobe.d/i2c-hid.conf
sudo depmod -a
echo "synaptics_i2c" | sudo tee -a /etc/modules
dracut -fv
