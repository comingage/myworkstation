### Generate Key Pair local
`ssh-keygen`
### Copy the Public Key local
`ssh-copy-id user@server_ip`
#### Manualy paste at host
`chmod 700 ~/.ssh`
`chmod 600 ~/.ssh/authorized_keys`
`nano ~/.ssh/authorized_keys`
### Disable Password Authentication
#### Edit /etc/ssh/sshd_config
`PasswordAuthentication no`
`PubkeyAuthentication yes`
`ChallengeResponseAuthentication no`
#### reload SSH deamon
`sudo systemctl reload sshd`