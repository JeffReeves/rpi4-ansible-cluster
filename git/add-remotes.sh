#!/bin/bash
# purpose: add all remotes for repo
# author: Jeff Reeves

# define repository's stub for the URL
REPO_STUB='rpi4-ansible-cluster'

# create the repo directory on bridges
ssh git@bridges "mkdir /git/rpi4-ansible-cluster.git && cd /git/rpi4-ansible-cluster.git && git config --global init.defaultBranch main && git init --bare && sed -i 's/master/main/' /git/rpi4-custom-os.git/HEAD"

# add bridges to git remote list
git remote add bridges git@bridges:/git/rpi4-ansible-cluster.git

# add gitlab to git remote list
git remote add gitlab git@gitlab.com:JeffReeves/rpi4-ansible-cluster.git

# add github to git remote list
git remote add github git@github.com:JeffReeves/rpi4-ansible-cluster.git

# update origin to bridges
git remote set-url origin git@bridges:/git/rpi4-ansible-cluster.git

# view all remotes
git remote -v

# open settings for gitlab and github in browser
#explorer.exe "https://gitlab.com/JeffReeves/rpi4-ansible-cluster/-/settings/repository"
#explorer.exe "https://gitlab.com/JeffReeves/rpi4-ansible-cluster/-/branches"
#explorer.exe "https://github.com/JeffReeves/rpi4-ansible-cluster/settings/branches"
#explorer.exe "https://github.com/JeffReeves/rpi4-ansible-cluster/branches"

