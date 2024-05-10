# BEFOREHAND
# install git
# `sudo apt install git`
# clone the repo in home directory
# `git clone https://github.com/royaad/git-credential-oauth.git/`
# run bash file
# `source ~/gitsetup.sh`

# start by updating and upgrading the distro
sudo apt update
sudo apt upgrade

# install git oauth
sudo apt install git-credential-oauth

# do some preliminary git config and oauth
# initial git setup after installation
git config --global user.name "royaad"
git config --global user.email "royaad@live.com"

# oauth is linux only. windows has its own credential manager which is set in the --system
# first, unset all helpers
git config --global --unset-all credential.helper

# second, set the cache to half an hour 1800 second
git config --global --add credential.helper "cache --timeout 1800"

# finally, set the credential manager to oauth. choose -device flag (os without a web browser)
# check https://git-scm.com/doc/credential-helpers for more info
git config --global --add credential.helper "oauth -device"

# instatiate the oauth operation
cd ~/git-credential-oauth
git push

# remove directory after authentication
rm -ri ~/git-credential-oauth