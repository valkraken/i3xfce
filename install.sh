# updates the system
sudo apt update && sudo apt upgrade -y

# installs i3-gaps, nitrogen and compton
sudo apt install i3-gaps nitrogen compton -y

# adds i3-gaps, nitrogen and comton to autostart
mkdir ~/.config/autostart
echo "W0Rlc2t0b3AgRW50cnldCkVuY29kaW5nPVVURi04ClZlcnNpb249MC45LjQKVHlwZT1BcHBsaWNhdGlvbgpOYW1lPWkzCkNvbW1lbnQ9CkV4ZWM9aTMKT25seVNob3dJbj1YRkNFOwpSdW5Ib29rPTAKU3RhcnR1cE5vdGlmeT1mYWxzZQpUZXJtaW5hbD1mYWxzZQpIaWRkZW49ZmFsc2UKCiAg" | base64 --decode > ~/.config/autostart/i3.desktop
echo "W0Rlc2t0b3AgRW50cnldCkVuY29kaW5nPVVURi04ClZlcnNpb249MC45LjQKVHlwZT1BcHBsaWNhdGlvbgpOYW1lPWNvbXB0b24KQ29tbWVudD0KRXhlYz1jb21wdG9uCk9ubHlTaG93SW49WEZDRTsKUnVuSG9vaz0wClN0YXJ0dXBOb3RpZnk9ZmFsc2UKVGVybWluYWw9ZmFsc2UKSGlkZGVuPWZhbHNlCgogICAg" | base64 --decode > ~/.config/autostart/compton.desktop
echo "W0Rlc2t0b3AgRW50cnldCkVuY29kaW5nPVVURi04ClZlcnNpb249MC45LjQKVHlwZT1BcHBsaWNhdGlvbgpOYW1lPW5pdHJvZ2VuCkNvbW1lbnQ9CkV4ZWM9bml0cm9nZW4gLS1yZXN0b3JlCk9ubHlTaG93SW49WEZDRTsKUnVuSG9vaz0wClN0YXJ0dXBOb3RpZnk9ZmFsc2UKVGVybWluYWw9ZmFsc2UKSGlkZGVuPWZhbHNlCgogICAgICAg" | base64 --decode > ~/.config/autostart/nitrogen.desktop

dbus-send --session --dest=org.xfce.SessionManager --print-reply \/org/xfce/SessionManager org.xfce.Session.Manager.Checkpoint string:""

mv ~/.cache/sessions/xfce4-session-$(hostname):0 ~/.cache/sessions/xfce4-session-$(hostname):0.backup
cat ~/.cache/sessions/xfce4-session-$(hostname):0.backup | grep -v $(grep Program=xfdesktop ~/.cache/sessions/xfce4-session-kali:0.backup | cut -d '_' -f 1) | grep -v $(grep Program=xfwm4 ~/.cache/sessions/xfce4-session-kali:0.backup | cut -d '_' -f 1) > ~/.cache/sessions/xfce4-session-kali:0


echo "CgppMy94ZmNlIGh5YnJpZCBjb25maWd1cmF0aW9uIGNvbXBsZXRlISAKTG9nIG91dCBhbmQgYmFjayBpbiB0byBzdGFydCBhIHNlc3Npb24gaW4geW91ciBuZXcgZW52aW9ybWVudC4KVXNlIG5pdHJvZ2VuIHRvIHNldCB5b3VyIHByZWZlcmVkIHdhbGxwYXBlci4KSG9wZSB5b3UgZW5qb3khCgpCZXN0IHJlZ2FyZHMsCnZhbCA8Mwo=" | base64 --decode

[Session: Default]
Client0_ClientId=2d01c03e1-8020-41b1-b2b7-31a067ca1cb0
Client0_Hostname=local/kali
Client0_CloneCommand=xfsettingsd
Client0_RestartCommand=xfsettingsd,--display,:0.0,--sm-client-id,2d01c03e1-8020-41b1-b2b7-31a067ca1cb0
Client0_CurrentDirectory=/home/val
Client0_DesktopFile=/etc/xdg/autostart/xfsettingsd.desktop
Client0_Program=xfsettingsd
Client0_UserId=val
Client0_Priority=20
Client0_RestartStyleHint=2
Client1_ClientId=2838c357b-21e8-4bdd-b165-8ff27cbc2f02
Client1_Hostname=local/kali
Client1_CloneCommand=xfce4-panel
Client1_RestartCommand=xfce4-panel,--display,:0.0,--sm-client-id,2838c357b-21e8-4bdd-b165-8ff27cbc2f02
Client1_CurrentDirectory=/home/val
Client1_Program=xfce4-panel
Client1_UserId=val
Client1_Priority=25
Client1_RestartStyleHint=2
Client2_ClientId=2853aa7c5-a4ce-4dd6-8d86-567788bdeffc
Client2_Hostname=local/kali
Client2_CloneCommand=Thunar
Client2_DiscardCommand=rm,-f,/home/val/.cache/sessions/Thunar-2853aa7c5-a4ce-4dd6-8d86-567788bdeffc
Client2_RestartCommand=Thunar,--sm-client-id,2853aa7c5-a4ce-4dd6-8d86-567788bdeffc,--daemon
Client2_Program=Thunar
Client2_UserId=val
Client2_Priority=30
Client2_RestartStyleHint=0
Client3_ClientId=2e3218bbd-399a-498b-bd03-6a682686c2a3
Client3_Hostname=local/kali
Client3_CloneCommand=xfce4-power-manager
Client3_RestartCommand=xfce4-power-manager,--restart,--sm-client-id,2e3218bbd-399a-498b-bd03-6a682686c2a3
Client3_CurrentDirectory=/home/val
Client3_DesktopFile=/etc/xdg/autostart/xfce4-power-manager.desktop
Client3_Program=xfce4-power-manager
Client3_UserId=val
Client3_Priority=50
Client3_RestartStyleHint=0
Count=4
Screen0_ActiveWorkspace=0
LastAccess=1615219583
