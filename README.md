# CodeClub_HPC_Resources
Resources for HPC Introduction Code Club

## Tutorial
Follow along tutorial to add `.bashrc`, `.bash_profiles` and `.inputrc` to Phoenix HPC and Mac Terminal. 

### Note: If you already have a `.bashrc`, `.bash_profile` and `.inputrc` make sure you either back it up since the below will overwrite them, or manually choose the functions and lines you think will be useful for you into your existing files. 

#### Follow Steps 1, 2 and 3 for HPC/Server
#### Follow Steps 2 and 3 for non-HPC/Server environments 

```
# Step 1: Log into HPC/Server 
USER=<USER_NAME>
HOST=<HOST>
ssh ${USER}@${HOST}

# Step 2: Make a dir to clone the github repository 
mkdir -p ~/dev && cd ~/dev 
git clone https://github.com/shyama-mama/CodeClub_HPC_Resources.git && cd CodeClub_HPC_Resources

# Step 3: Copy the .bashrc, .bash_profile and .inputrc to home folder
cp bash_files/.* ~/.
```
