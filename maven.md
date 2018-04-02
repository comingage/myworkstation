### Download from official website
`https://maven.apache.org/download.cgi`<br>
Download binary and extract to `/opt/maven`.<br>
`sudo nano /etc/profile.d/maven.sh`<br>
`sudo chmod +x /etc/profile.d/maven.sh`<br>
add lines:<br>
`export M2_HOME=/opt/maven`<br>
`export MAVEN_HOME=/opt/maven`<br>
`export PATH=${M2_HOME}/bin:${PATH}`<br>
save, logout and login.
