
dist: trusty
sudo: required
language: cpp
before_install:  
- sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
- sudo apt-get update -qq

install: 
  # C++14
  - sudo apt-get install -qq build-essential libx11-dev cmake flex bison ctags clang
  - sudo apt-get install -qq g++-6
  - sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 90
  
# safelist
branches:
  only:
  - jeanlego
script: make && make install
cache: bundler
