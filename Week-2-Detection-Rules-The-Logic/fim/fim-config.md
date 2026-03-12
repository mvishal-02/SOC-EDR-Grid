File Integrity Monitoring (FIM)

Monitored directories:

/etc
/var/www
/home

Configuration file:
/var/ossec/etc/ossec.conf

In Kali agent machine:
Test 1 – Modifying a Critical System File:
A modification was made to the /etc/passwd file to simulate unauthorized system modification.
Command used:
sudo nano /etc/passwd

Test 2 – Simulating a Web Server Attack:
To simulate a web attack scenario, a suspicious file was created in the monitored web directory.
Command used:
sudo touch /var/www/malicious.php

