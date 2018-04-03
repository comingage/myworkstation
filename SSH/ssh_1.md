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
### Second factor Authentication
`google-authenticator`<br>
`y` for time-based. In mobile Google authenticator app add QR code. Backup key, verification nad emergency codes. <br>
`y` to update `.google_authenticator`.<br>
`y` to `prevent man-in-the-middle attacks`.<br>
`n` to decline `+-4min` unless experience issue.<br>
`y` to `enable rate-limiting` against brute-force.<br>
`sudo nano /etc/pam.d/sshd` add bottom line `auth required pam_google_authenticator.so` (`nullok` can be added to make optional). Then comment out `@include common-auth`.<br>
`sudo nano /etc/ssh/sshd_config` edit `ChallengeResponseAuthentication yes`, add bottom line `AuthenticationMethods publickey,password publickey,keyboard-interactive`.<br>
`sudo systemctl restart sshd.service` (`ssh.service` if `sshd` not found).<br>


