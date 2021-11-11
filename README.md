# controlutil
A companion bash program to aid and assist in running the joycontrol application.

NOTE: This MUST be cloned within your home directory, found by typing the following command within a terminal in your VM
cd ~

# Install Steps
1) cd ~
2) git clone https://github.com/Jounreay/controlutil.git
3) chmod +x controlutil/* #This modifies every script within the directory to be executable.
4) sudo controlutil/install_joycontrol.sh

The steps above should 
A) Install all of the necessary libraries to run the joycontrol application
B) Add a shortcut to your .bash_aliases file, and reload your .bashrc for the control.sh file within the controlutil project.
C) Trigger the control command within the script to test the bash program.
