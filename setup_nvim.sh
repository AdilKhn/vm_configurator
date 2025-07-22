sudo apt-get install -y build-essential cmake
cd neovim
git clone https://github.com/neovim/neovim.git
git checkout release-0.11
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
