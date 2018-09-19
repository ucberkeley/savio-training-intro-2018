# Logging in
ssh kmishra9@hpc.brc.berkeley.edu

# Password = PIN + OTP

# SCP to Savio, while on your local machine
scp bayArea.csv kmishra9@dtn.brc.berkeley.edu:~/
scp bayArea.csv kmishra9@dtn.brc.berkeley.edu:~/SavioDemo/newName.csv
scp bayArea.csv kmishra9@dtn.brc.berkeley.edu:/global/scratch/kmishra9/bayArea.csv

# from Savio, while on your local machine
scp kmishra9@dtn.brc.berkeley.edu:~/SavioDemo/newName.csv ~/"F18 Savio Demo"/bayArea.csv

# Box lftp Demo
ssh kmishra9@dtn.brc.berkeley.edu
lftp ftp.box.com
set ssl-allow true
user kmishra9@berkeley.edu

# NOT the same as your CalNet password or Savio Login Password -- you need to set this up seperately from within your Box Account Settings!

lpwd # on Savio
ls # on box
!ls # on Savio
cd ~/ # on box
lcd ~/ # on savio
put parallel-multi.R # Savio to box
get bayAreaBox.csv # Box to Savio

# to download a directory from Box to Savio
cd ~/ # on box
mirror SavioDemoBox ~/

# Software Modules
module list  # what's loaded?
module avail  # what's available
