#!/bin/bash
echo "setup authorized_keys"
cat >> ~/.ssh/authorized_keys << 'EOF'
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAqZfmKx0EHQWEPcbSdft0ViDUdS3T0j89B6pp22XHfdzjdPrcc1IyglgXkyjUu5cunPadTZlDpoAlY38NqZ0/+3Zwr70es13OLSUu82DLcJstrXc6r0+5kL4JcrdM5F/TmcvHE+CeoUfcp61F3bFDxba8kiA54LaC/f9d+QnFBlR44+gy8pLtzLBmpo0WwgdwsAN0VgTT9ut/HExAyB3V6fK0VmzlZ8gX6fVz2Lq0C7In02YZ4jcJSmtJbt70rpRlWNvY4ULPuAnzUjcaejXc9j2xfuhT278xj8YE3KihJRj6QpaDwIlGPy+FyryGpOulqSesZo7UlUCHuqQN+QYKyw==
EOF
chmod 600 ~/.ssh/authorized_keys
sudo service sshd restart
echo done
