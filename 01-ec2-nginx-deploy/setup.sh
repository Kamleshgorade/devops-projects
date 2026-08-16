#!/bin/bash

echo ">>> Step 1: Updating packages"
sudo apt update -y

echo ">>> Step 2: Installing nginx"
sudo apt install -y nginx

echo ">>> Step 3: Starting nginx"
sudo systemctl start nginx
sudo systemctl enable nginx

echo ">>> Step 4: Deploying custom webpage"
sudo bash -c 'cat > /var/www/html/index.html' << 'EOF'
<!DOCTYPE html>
<html>
<head><title>My DevOps Project</title></head>
<body>
  <h1>Deployed by Kamlesh - AWS EC2 + Nginx + Shell Script + GitHub</h1>
  <p>This page was deployed using a shell script pushed from GitHub.</p>
</body>
</html>
EOF

echo ">>> Done! Nginx is live with custom page."