read -p "Enter username: " username
read -p "Enter password: " -s password

echo $username

export HTTP_PROXY=http://$username:$password@oproxy.fg.rbc.com:8080
export HTTPS_PROXY=http://$username:$password@oproxy.fg.rbc.com:8080
