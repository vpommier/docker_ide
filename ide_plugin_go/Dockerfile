FROM opencloudlabs/ide:latest
MAINTAINER pommier.v@gmail.com 

USER root

RUN yum install -y \
	ctags \
	mercurial \
	&& yum clean all

# Vim plugins installation 
RUN sed -i -e '/vundle#end()/i\\n" Vim-Go plugin' \
	-e "/vundle#end()/i\Plugin 'fatih\/vim-go'" \
	-e '/vundle#end()/i\\n" Ultisnips plugin' \
	-e "/vundle#end()/i\Plugin 'SirVer\/ultisnips'" \
	-e '/vundle#end()/i\\n" Neocomplete plugin' \
	-e "/vundle#end()/i\Plugin 'Shougo\/neocomplete.vim'" \
	-e '/vundle#end()/i\\n" Tagbar plugin' \
	-e "/vundle#end()/i\Plugin 'majutsushi\/tagbar'" ~/.vimrc \
	&& vim +PluginInstall +qall

# Plugins configuration
COPY ./go.vim /root/.vim/plugin/go.vim
COPY ./neocomplete.vim /root/.vim/plugin/neocomplete.vim
COPY ./tagbar.vim /root/.vim/plugin/tagbar.vim
