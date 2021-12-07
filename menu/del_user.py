#/user/bin/env/pythoon

import subprocess

del_user_name=input("Enter User Name To Delete : ")

print(del_user_name)

subprocess.run("userdel " + del_user_name,shell=True)


exit()