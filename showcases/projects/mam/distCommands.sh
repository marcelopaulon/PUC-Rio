rm -f command*.sh
gsplit -da 4 -n r/12 commands.txt command --additional-suffix=".sh"
chmod 777 command*.sh

