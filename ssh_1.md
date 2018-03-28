### Generate Key Pair local
`ssh-keygen`
### Copy the Public Key local
`ssh-copy-id user@server_ip`
#### Manualy paste at host
`chmod 700 ~/.ssh`<br>
`chmod 600 ~/.ssh/authorized_keys`<br>
`nano ~/.ssh/authorized_keys`
### Disable Password Authentication
#### Edit /etc/ssh/sshd_config
`PasswordAuthentication no`<br>
`PubkeyAuthentication yes`<br>
`ChallengeResponseAuthentication no`
#### reload SSH deamon
`sudo systemctl reload sshd`