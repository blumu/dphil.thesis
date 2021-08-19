sudo apt-get -y update
sudo apt-get -y install texlive
sudo apt-get -y install texlive-latex-extra --no-install-recommends
sudo apt install -y texlive-binaries
sudo apt-get install -y texlive-latex-base texlive-latex-extra texlive-latex-recommended
sudo apt-get install -y texlive-full

################

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xvzf install-tl-unx.tar.gz
sudo install-tl

################

kpsewhich -var-value TEXMFLOCAL
kpsewhich -var-value TEXMFHOME


sudo tlmgr init-usertree
sudo tlmgr --verify-repo=none install adjustbox
sudo tlmgr --verify-repo=none list 
sudo tlmgr update --all
sudo tlmgr update --self --all
wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh
sh update-tlmgr-latest.sh -- --upgrade


###
export TEXMFLOCAL=/usr/share/texmf/
wget http://mirrors.ctan.org/macros/latex209/contrib/picins/picins.sty
