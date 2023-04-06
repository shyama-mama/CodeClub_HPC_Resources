# CodeClub_HPC_Resources
Resources for HPC Introduction Code Club

## Tutorial
Follow along tutorial to add `.bashrc`, `.bash_profiles` and `.inputrc` to Phoenix HPC and Mac Terminal. Non-Phoenix Users can use the files in General folder which don't include Phoenix specific lines. 

### Note: If you already have a `.bashrc`, `.bash_profile` and `.inputrc` make sure you either back it up since the below will overwrite them, or manually choose the functions and lines you think will be useful for you into your existing files. 

#### Follow Steps 1, 2 and 3a for Phoenix
#### Follow Steps 2 and 3b for non-Phonix environments 

```
# Step 1: Log into HPC/Server 
USER=<USER_NAME>
HOST=<HOST>
ssh ${USER}@${HOST}

# Step 2: Make a dir to clone the github repository 
mkdir -p ~/dev && cd ~/dev 
git clone https://github.com/shyama-mama/CodeClub_HPC_Resources.git && cd CodeClub_HPC_Resources

# Step 3a: Copy the Phoenix .bashrc, .bash_profile and .inputrc
cp Phoenix/.* ~/.

# Step 3b: Copy General .bashrc, .bash_profile and .inputrc for non-Phoenix environment
cp General/.* ~/.
```
