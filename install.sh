# updates the system
sudo apt update && sudo apt upgrade -y

# installs i3-gaps, nitrogen and compton
sudo apt install i3-gaps nitrogen compton

# adds i3-gaps, nitrogen and comton to autostart
mkdir ~/.config/autostart
echo "W0Rlc2t0b3AgRW50cnldCkVuY29kaW5nPVVURi04ClZlcnNpb249MC45LjQKVHlwZT1BcHBsaWNhdGlvbgpOYW1lPWkzCkNvbW1lbnQ9CkV4ZWM9aTMKT25seVNob3dJbj1YRkNFOwpSdW5Ib29rPTAKU3RhcnR1cE5vdGlmeT1mYWxzZQpUZXJtaW5hbD1mYWxzZQpIaWRkZW49ZmFsc2UKCiAg" | base64 --decode > ~/.config/autostart/i3.desktop
echo "W0Rlc2t0b3AgRW50cnldCkVuY29kaW5nPVVURi04ClZlcnNpb249MC45LjQKVHlwZT1BcHBsaWNhdGlvbgpOYW1lPWNvbXB0b24KQ29tbWVudD0KRXhlYz1jb21wdG9uCk9ubHlTaG93SW49WEZDRTsKUnVuSG9vaz0wClN0YXJ0dXBOb3RpZnk9ZmFsc2UKVGVybWluYWw9ZmFsc2UKSGlkZGVuPWZhbHNlCgogICAg" | base64 --decode > ~/.config/autostart/compton.desktop
echo "W0Rlc2t0b3AgRW50cnldCkVuY29kaW5nPVVURi04ClZlcnNpb249MC45LjQKVHlwZT1BcHBsaWNhdGlvbgpOYW1lPW5pdHJvZ2VuCkNvbW1lbnQ9CkV4ZWM9bml0cm9nZW4gLS1yZXN0b3JlCk9ubHlTaG93SW49WEZDRTsKUnVuSG9vaz0wClN0YXJ0dXBOb3RpZnk9ZmFsc2UKVGVybWluYWw9ZmFsc2UKSGlkZGVuPWZhbHNlCgogICAgICAg" | base64 --decode > ~/.config/autostart/nitrogen.desktop

dbus-send --session --dest=org.xfce.SessionManager --print-reply \/org/xfce/SessionManager org.xfce.Session.Manager.Checkpoint string:""

mv ~/.cache/sessions/xfce4-session-$(hostname):0 ~/.cache/sessions/xfce4-session-$(hostname):0.backup
cat ~/.cache/sessions/xfce4-session-$(hostname):0.backup | grep -v $(grep Program=xfdesktop ~/.cache/sessions/xfce4-session-kali:0.backup | cut -d '_' -f 1) | grep -v $(grep Program=xfwm4 ~/.cache/sessions/xfce4-session-kali:0.backup | cut -d '_' -f 1) > ~/.cache/sessions/xfce4-session-kali:0


echo "CgppMy94ZmNlIGh5YnJpZCBjb25maWd1cmF0aW9uIGNvbXBsZXRlISAKTG9nIG91dCBhbmQgYmFjayBpbiB0byBzdGFydCBhIHNlc3Npb24gaW4geW91ciBuZXcgZW52aW9ybWVudC4KVXNlIG5pdHJvZ2VuIHRvIHNldCB5b3VyIHByZWZlcmVkIHdhbGxwYXBlci4KSG9wZSB5b3UgZW5qb3khCgpCZXN0IHJlZ2FyZHMsCnZhbCA8Mwo=" | base64 --decode
