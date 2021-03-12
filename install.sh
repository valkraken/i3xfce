# updates the system
sudo apt update && sudo apt upgrade -y

# installs i3-gaps, nitrogen and compton
sudo apt install i3-gaps nitrogen compton

# adds i3-gaps, nitrogen and comton to autostart
exo-desktop-item-edit --create-new --type Application --name i3 --command i3 ~/.config/autostart/
exo-desktop-item-edit --create-new --type Application --name nitrogen --command "nitrogen --restore" ~/.config/autostart/
exo-desktop-item-edit --create-new --type Application --name compton --command compton ~/.config/autostart/

echo "CgppMy94ZmNlIGh5YnJpZCBjb25maWd1cmF0aW9uIGNvbXBsZXRlISAKTG9nIG91dCBhbmQgYmFjayBpbiB0byBzdGFydCBhIHNlc3Npb24gaW4geW91ciBuZXcgZW52aW9ybWVudC4KVXNlIG5pdHJvZ2VuIHRvIHNldCB5b3VyIHByZWZlcmVkIHdhbGxwYXBlci4KSG9wZSB5b3UgZW5qb3khCgpCZXN0IHJlZ2FyZHMsCnZhbCA8Mwo=" | base64 --decode
