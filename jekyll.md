# Jekyll setup

## Installation

### Mint (or other apt based system)
 
Install system wide dependencies
 
```bash
sudo apt-get install ruby ruby-dev
```

Install jekyll and bundler into locals gem folder

```bash
cd ~/
gem install -i gems jekyll bundler
```

Add gems bin to your path

```bash
cat >> ~/.bashrc <<EOF
export PATH=~/gems/bin:\${PATH}
export GEM_PATH=~/gems/:\${GEM_PATH}
EOF
```

