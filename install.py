import subprocess
import os

def installpkg():
    try:
        # Update package list
        subprocess.run(['sudo', 'apt-get', 'update'], check=True)    

        # Install sendmail
        subprocess.run(['sudo', 'apt-get', 'install', '-y', 'sendmail'], check=True)

        print("sendmail has been installed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    installpkg()