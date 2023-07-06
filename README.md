# Oracle-VM-Standard-A1-Flex--Webinoly-OneinStack
Đây là phiên bản cài đặt dựa trên lõi của Webinoly, sử dụng cấu hình PHP, Mysql từ OneinStack cho Oracle VM Standard A1 Flex 4 OCPU 24 GB RAM
PHP v7.4.33 
MariaDB v10.11.4 
Nginx v1.24.0
# Webinoly PHP 7.4
PHP v7.4.33, MariaDB v10.11.4, Nginx v1.24.0
1. Login root
2. Update IOS and reboot the system
```shell
sudo apt update && sudo apt upgrade -y && sudo reboot
```
3. Install Webinoly PHP 7.4
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-Optimization/master/webinoly74.sh -O webinoly_mod.sh && sudo chmod +x webinoly_mod.sh && sudo ./webinoly_mod.sh
```
