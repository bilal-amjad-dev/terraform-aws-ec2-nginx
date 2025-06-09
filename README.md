This guide covers:


👉 create security group using terraform

👉 create ec2 using terraform 

Changes: 
- paste your access key
- paste your secret key
- paste your ami


Prerequisites:
- access key and secret key
- terraform installed
- vs code

Note: My region is 'ap-south-1a', so you can choose of your choice.

We have open 2 ports of security group, 22 for ssh and 80 for nginx. 

```bash
sudo apt update
sudo apt install -y nginx
echo "<html><body><h1>Bilal Amjad</h1></body></html>" | sudo tee /var/www/html/index.html
sudo systemctl start nginx
sudo systemctl enable nginx
```



  
