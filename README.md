# Project 01 — EC2 Nginx Auto-Deploy

## What this does
Automated deployment of an Nginx web server with a custom page on AWS EC2 (Ubuntu 22.04), using a shell script pulled from GitHub.

## Architecture
Local machine (write script) → GitHub (version control) → EC2 (clone + run script) → Live webpage

## How to run
1. Launch an Ubuntu 22.04 EC2 instance
2. Security group: allow inbound SSH (22, your IP) and HTTP (80, anywhere)
3. SSH into the instance
4. `git clone https://github.com/YOUR_USERNAME/devops-projects.git`
5. `cd devops-projects/01-ec2-nginx-deploy && chmod +x setup.sh && ./setup.sh`
6. Visit `http://<public-ip>` in a browser

## What I learned
- EC2 instance provisioning and security group configuration
- SSH key management (and why keys should never be committed to Git)
- Shell scripting for server automation
- Debugging connectivity issues (diagnosed a missing security group rule causing ERR_CONNECTION_TIMED_OUT)
- Git/GitHub workflow for infrastructure scripts

## Tools used
AWS EC2, Ubuntu Linux, Nginx, Bash, Git, GitHub