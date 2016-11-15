sudo apt-get install libllvm3.7 llvm3.7 llvm-3.7-tools llvm-3.7-dev llvm-3.7-runtime clang-3.7 libclang-3.7-dev
sudo apt-get install python-levenshtein
mkdir -p ~/Code
cd ~/Code
git clone https://github.com/llvm-mirror/clang.git
cd clang
git checkout release_37
sudo ln -s /usr/bin/clang-3.7 /usr/bin/clang
