# controlutil
A companion bash program to aid and assist in running the joycontrol application.

*IMPORTANT NOTE: This MUST be cloned within your home directory, found by typing the following command within a terminal in your VM.

* cd ~

*ANOTHER IMPORTANT NOTE: Please CLONE this repo within your VM or preferred environment. Do not copy paste any of the script information as incompatible DOS lineendings or hidden characters could be added to the file. It makes troubleshooting a pain, and may partially install libraries without smoothly exiting the process.


# Install Steps
1) cd ~
2) git clone https://github.com/Jounreay/controlutil.git
3) chmod +x controlutil/* #This modifies every script within the directory to be executable.
4) sudo controlutil/install_joycontrol.sh

The steps above should 
1) Install all of the necessary libraries to run the joycontrol application
2) Add a shortcut to your .bash_aliases file, and reload your .bashrc for the control.sh file within the controlutil project.
3) Trigger the control command within the script to test the bash program.
