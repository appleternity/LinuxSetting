############ 
# vim
# https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
mkdir ~/.vim/colors
cp monokai.vim ~/.vim/colors/
vim +PluginInstall +qall
# Launch vim and run :PluginInstall

#############
# nvim
# 
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
mkdir ~/.config
mkdir ~/.config/nvim
mkdir ~/.config/nvim/colors
cp .vimrc ~/.config/nvim/init.vim
cp monokai.vim ~/.config/nvim/colors/
nvim +PluginInstall +qall

# >> install to user
mkdir ~/.local
mkdir ~/.local/bin
cp nvim ~/.local/bin

############ 
# tmux -V (should be tmux 2.1)
# https://github.com/gpakosz/.tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .


###########
# zsh (zsh have to be installed)
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
sudo apt install zsh

###########
# oh-my-zsh (zsh have to be installed)
# https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#echo 'export LS_COLORS="fi=0:or=0;38;2;0;0;0;48;2;255;74;68:so=0;38;2;0;0;0;48;2;249;38;114:*~=0;38;2;122;112;112:no=0:mi=0;38;2;0;0;0;48;2;255;74;68:di=0;38;2;102;217;239:ex=1;38;2;249;38;114:pi=0;38;2;0;0;0;48;2;102;217;239:ln=0;38;2;249;38;114:*.d=0;38;2;0;255;135:*.z=4;38;2;249;38;114:*.m=0;38;2;0;255;135:*.h=0;38;2;0;255;135:*.p=0;38;2;0;255;135:*.t=0;38;2;0;255;135:*.c=0;38;2;0;255;135:*.a=1;38;2;249;38;114:*.o=0;38;2;122;112;112:*.r=0;38;2;0;255;135:*.py=0;38;2;0;255;135:*.gv=0;38;2;0;255;135:*.rm=0;38;2;253;151;31:*.ko=1;38;2;249;38;114:*.cp=0;38;2;0;255;135:*.gz=4;38;2;249;38;114:*.as=0;38;2;0;255;135:*.js=0;38;2;0;255;135:*.sh=0;38;2;0;255;135:*.go=0;38;2;0;255;135:*.nb=0;38;2;0;255;135:*.jl=0;38;2;0;255;135:*.so=1;38;2;249;38;114:*.cr=0;38;2;0;255;135:*.kt=0;38;2;0;255;135:*.md=0;38;2;226;209;57:*.ui=0;38;2;166;226;46:*.pm=0;38;2;0;255;135:*.xz=4;38;2;249;38;114:*.7z=4;38;2;249;38;114:*.fs=0;38;2;0;255;135:*.mn=0;38;2;0;255;135:*.cs=0;38;2;0;255;135:*.rb=0;38;2;0;255;135:*.ml=0;38;2;0;255;135:*.vb=0;38;2;0;255;135:*.di=0;38;2;0;255;135:*.el=0;38;2;0;255;135:*.pl=0;38;2;0;255;135:*.pp=0;38;2;0;255;135:*.ts=0;38;2;0;255;135:*.hs=0;38;2;0;255;135:*.la=0;38;2;122;112;112:*.hi=0;38;2;122;112;112:*.ex=0;38;2;0;255;135:*css=0;38;2;0;255;135:*.ps=0;38;2;230;219;116:*.rs=0;38;2;0;255;135:*.bz=4;38;2;249;38;114:*.cc=0;38;2;0;255;135:*.lo=0;38;2;122;112;112:*.hh=0;38;2;0;255;135:*.mp3=0;38;2;253;151;31:*.git=0;38;2;122;112;112:*.bin=4;38;2;249;38;114:*.erl=0;38;2;0;255;135:*.gvy=0;38;2;0;255;135:*.awk=0;38;2;0;255;135:*.dll=1;38;2;249;38;114:*.tar=4;38;2;249;38;114:*.ppt=0;38;2;230;219;116:*.lua=0;38;2;0;255;135:*.sxi=0;38;2;230;219;116:*.dpr=0;38;2;0;255;135:*.htm=0;38;2;226;209;57:*.log=0;38;2;122;112;112:*.epp=0;38;2;0;255;135:*.ipp=0;38;2;0;255;135:*.avi=0;38;2;253;151;31:*.php=0;38;2;0;255;135:*.pps=0;38;2;230;219;116:*.ppm=0;38;2;253;151;31:*.bmp=0;38;2;253;151;31:*.tmp=0;38;2;122;112;112:*.fsi=0;38;2;0;255;135:*.hxx=0;38;2;0;255;135:*.kts=0;38;2;0;255;135:*.sty=0;38;2;122;112;112:*.c++=0;38;2;0;255;135:*.exe=1;38;2;249;38;114:*.vim=0;38;2;0;255;135:*.idx=0;38;2;122;112;112:*.fls=0;38;2;122;112;112:*.ogg=0;38;2;253;151;31:*.inl=0;38;2;0;255;135:*hgrc=0;38;2;166;226;46:*.odt=0;38;2;230;219;116:*.bst=0;38;2;166;226;46:*.pid=0;38;2;122;112;112:*.sxw=0;38;2;230;219;116:*.wma=0;38;2;253;151;31:*.htc=0;38;2;0;255;135:*.odp=0;38;2;230;219;116:*.bsh=0;38;2;0;255;135:*.apk=4;38;2;249;38;114:*.xcf=0;38;2;253;151;31:*.sql=0;38;2;0;255;135:*.ltx=0;38;2;0;255;135:*.tcl=0;38;2;0;255;135:*.tsx=0;38;2;0;255;135:*.mov=0;38;2;253;151;31:*.bat=1;38;2;249;38;114:*.rtf=0;38;2;230;219;116:*.ics=0;38;2;230;219;116:*.exs=0;38;2;0;255;135:*.rpm=4;38;2;249;38;114:*.ico=0;38;2;253;151;31:*.mkv=0;38;2;253;151;31:*.mp4=0;38;2;253;151;31:*.mid=0;38;2;253;151;31:*.pod=0;38;2;0;255;135:*.hpp=0;38;2;0;255;135:*.toc=0;38;2;122;112;112:*.iso=4;38;2;249;38;114:*TODO=1:*.pkg=4;38;2;249;38;114:*.svg=0;38;2;253;151;31:*.cxx=0;38;2;0;255;135:*.cfg=0;38;2;166;226;46:*.tml=0;38;2;166;226;46:*.wmv=0;38;2;253;151;31:*.sbt=0;38;2;0;255;135:*.flv=0;38;2;253;151;31:*.otf=0;38;2;253;151;31:*.csx=0;38;2;0;255;135:*.fon=0;38;2;253;151;31:*.mli=0;38;2;0;255;135:*.bcf=0;38;2;122;112;112:*.vob=0;38;2;253;151;31:*.tif=0;38;2;253;151;31:*.dot=0;38;2;0;255;135:*.m4v=0;38;2;253;151;31:*.vcd=4;38;2;249;38;114:*.jar=4;38;2;249;38;114:*.ini=0;38;2;166;226;46:*.bag=4;38;2;249;38;114:*.nix=0;38;2;166;226;46:*.img=4;38;2;249;38;114:*.blg=0;38;2;122;112;112:*.deb=4;38;2;249;38;114:*.tgz=4;38;2;249;38;114:*.xml=0;38;2;226;209;57:*.yml=0;38;2;166;226;46:*.fsx=0;38;2;0;255;135:*.ods=0;38;2;230;219;116:*.clj=0;38;2;0;255;135:*.doc=0;38;2;230;219;116:*.out=0;38;2;122;112;112:*.rar=4;38;2;249;38;114:*.mpg=0;38;2;253;151;31:*.fnt=0;38;2;253;151;31:*.bz2=4;38;2;249;38;114:*.elm=0;38;2;0;255;135:*.bib=0;38;2;166;226;46:*.png=0;38;2;253;151;31:*.pbm=0;38;2;253;151;31:*.pgm=0;38;2;253;151;31:*.dox=0;38;2;166;226;46:*.pro=0;38;2;166;226;46:*.jpg=0;38;2;253;151;31:*.kex=0;38;2;230;219;116:*.aux=0;38;2;122;112;112:*.ilg=0;38;2;122;112;112:*.ttf=0;38;2;253;151;31:*.gif=0;38;2;253;151;31:*.aif=0;38;2;253;151;31:*.h++=0;38;2;0;255;135:*.xlr=0;38;2;230;219;116:*.zsh=0;38;2;0;255;135:*.swf=0;38;2;253;151;31:*.csv=0;38;2;226;209;57:*.rst=0;38;2;226;209;57:*.asa=0;38;2;0;255;135:*.ind=0;38;2;122;112;112:*.pyc=0;38;2;122;112;112:*.swp=0;38;2;122;112;112:*.bak=0;38;2;122;112;112:*.dmg=4;38;2;249;38;114:*.pas=0;38;2;0;255;135:*.tbz=4;38;2;249;38;114:*.xmp=0;38;2;166;226;46:*.txt=0;38;2;226;209;57:*.tex=0;38;2;0;255;135:*.arj=4;38;2;249;38;114:*.xls=0;38;2;230;219;116:*.ps1=0;38;2;0;255;135:*.pdf=0;38;2;230;219;116:*.wav=0;38;2;253;151;31:*.zip=4;38;2;249;38;114:*.bbl=0;38;2;122;112;112:*.cpp=0;38;2;0;255;135:*.cgi=0;38;2;0;255;135:*.com=1;38;2;249;38;114:*.psm1=0;38;2;0;255;135:*.hgrc=0;38;2;166;226;46:*.json=0;38;2;166;226;46:*.rlib=0;38;2;122;112;112:*.less=0;38;2;0;255;135:*.purs=0;38;2;0;255;135:*.psd1=0;38;2;0;255;135:*.html=0;38;2;226;209;57:*.pptx=0;38;2;230;219;116:*.java=0;38;2;0;255;135:*.fish=0;38;2;0;255;135:*.diff=0;38;2;0;255;135:*.flac=0;38;2;253;151;31:*.xlsx=0;38;2;230;219;116:*.epub=0;38;2;230;219;116:*.orig=0;38;2;122;112;112:*.h264=0;38;2;253;151;31:*.jpeg=0;38;2;253;151;31:*.conf=0;38;2;166;226;46:*.dart=0;38;2;0;255;135:*.tbz2=4;38;2;249;38;114:*.lisp=0;38;2;0;255;135:*.make=0;38;2;166;226;46:*.yaml=0;38;2;166;226;46:*.bash=0;38;2;0;255;135:*.toml=0;38;2;166;226;46:*.mpeg=0;38;2;253;151;31:*.docx=0;38;2;230;219;116:*.lock=0;38;2;122;112;112:*.patch=0;38;2;0;255;135:*.cabal=0;38;2;0;255;135:*shadow=0;38;2;166;226;46:*.mdown=0;38;2;226;209;57:*.cache=0;38;2;122;112;112:*.scala=0;38;2;0;255;135:*README=0;38;2;0;0;0;48;2;230;219;116:*.xhtml=0;38;2;226;209;57:*.class=0;38;2;122;112;112:*.swift=0;38;2;0;255;135:*.toast=4;38;2;249;38;114:*.ipynb=0;38;2;0;255;135:*.cmake=0;38;2;166;226;46:*.shtml=0;38;2;226;209;57:*passwd=0;38;2;166;226;46:*.dyn_o=0;38;2;122;112;112:*.flake8=0;38;2;166;226;46:*.dyn_hi=0;38;2;122;112;112:*.matlab=0;38;2;0;255;135:*.ignore=0;38;2;166;226;46:*.gradle=0;38;2;0;255;135:*INSTALL=0;38;2;0;0;0;48;2;230;219;116:*.groovy=0;38;2;0;255;135:*.config=0;38;2;166;226;46:*LICENSE=0;38;2;182;182;182:*TODO.md=1:*COPYING=0;38;2;182;182;182:*.desktop=0;38;2;166;226;46:*.gemspec=0;38;2;166;226;46:*TODO.txt=1:*setup.py=0;38;2;166;226;46:*Doxyfile=0;38;2;166;226;46:*Makefile=0;38;2;166;226;46:*.fdignore=0;38;2;166;226;46:*configure=0;38;2;166;226;46:*.markdown=0;38;2;226;209;57:*COPYRIGHT=0;38;2;182;182;182:*.kdevelop=0;38;2;166;226;46:*.cmake.in=0;38;2;166;226;46:*README.md=0;38;2;0;0;0;48;2;230;219;116:*.rgignore=0;38;2;166;226;46:*Dockerfile=0;38;2;166;226;46:*INSTALL.md=0;38;2;0;0;0;48;2;230;219;116:*CODEOWNERS=0;38;2;166;226;46:*README.txt=0;38;2;0;0;0;48;2;230;219;116:*SConstruct=0;38;2;166;226;46:*.gitconfig=0;38;2;166;226;46:*.scons_opt=0;38;2;122;112;112:*.gitignore=0;38;2;166;226;46:*SConscript=0;38;2;166;226;46:*.travis.yml=0;38;2;230;219;116:*MANIFEST.in=0;38;2;166;226;46:*.gitmodules=0;38;2;166;226;46:*LICENSE-MIT=0;38;2;182;182;182:*Makefile.in=0;38;2;122;112;112:*.synctex.gz=0;38;2;122;112;112:*Makefile.am=0;38;2;166;226;46:*.applescript=0;38;2;0;255;135:*appveyor.yml=0;38;2;230;219;116:*CONTRIBUTORS=0;38;2;0;0;0;48;2;230;219;116:*configure.ac=0;38;2;166;226;46:*.fdb_latexmk=0;38;2;122;112;112:*.clang-format=0;38;2;166;226;46:*LICENSE-APACHE=0;38;2;182;182;182:*CMakeCache.txt=0;38;2;122;112;112:*INSTALL.md.txt=0;38;2;0;0;0;48;2;230;219;116:*CMakeLists.txt=0;38;2;166;226;46:*.gitattributes=0;38;2;166;226;46:*CONTRIBUTORS.md=0;38;2;0;0;0;48;2;230;219;116:*.sconsign.dblite=0;38;2;122;112;112:*requirements.txt=0;38;2;166;226;46:*CONTRIBUTORS.txt=0;38;2;0;0;0;48;2;230;219;116:*package-lock.json=0;38;2;122;112;112"' >> ~/.zshrc
#echo "export EDITOR=vim" >> ~/.zshrc
#echo 'alias vim=nvim' >> ~/.zshrc

###########
# using "vivid" to manage colors (need rust)
# cargo install vivid
# echo 'export LS_COLORS="$(vivid generate molokai)"' >> ~/.zshrc

#############
# add zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/supercrabtree/k.git $ZSH_CUSTOM/plugins/k
git clone https://github.com/b4b4r07/enhancd.git $ZSH_CUSTOM/plugins/enhancd

cat .zshrc >> ~/.zshrc

chsh -s /usr/bin/zsh
