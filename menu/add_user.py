#/user/bin/env/pythoon

import subprocess

ssh_user_name=input("Enter Username : ")

print(ssh_user_name)

subprocess.run("useradd " + ssh_user_name,shell=True)
subprocess.run("passwd " + ssh_user_name,shell=True)

exit()