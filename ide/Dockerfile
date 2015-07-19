FROM fedora:21
MAINTAINER pommier.v@gmail.com 

USER root
WORKDIR /root/

RUN yum install -y \
	git \
	zsh \
	ruby \
	tmux \
	tmuxinator \
	vim-enhanced \
	patch \
	&& yum clean all

# OhMyZsh installation
RUN curl -L http://install.ohmyz.sh | sh

# ZSH configuration 
RUN sed -i -e "s/^\(ZSH_THEME=\).*/\1\"linuxonly\"/" \
	-e "s/^\(plugins=\).*/\1(git tmux tmuxinator)/" \
	-e "/EDITOR='vim'/s/^#//" \
	-e '/CASE_SENSITIVE=/s/^#\s*//' \
	-e '/DISABLE_AUTO_UPDATE=/s/^#\s*//' \
	-e '/^#\s*User\s*configuration/a\export TERM="screen-256color"' ~/.zshrc

# Commentaire d'une ligne provoquant une erreur dans le theme linuxonly d'OhMyZsh.
RUN sed -i 's/^\(local foopath=$(perl \/home\/scp1\/bin\/foopath)\)$/#\1/' ~/.oh-my-zsh/themes/linuxonly.zsh-theme

# Vim configuration
COPY ./vimrc /root/.vimrc
RUN mkdir -p ~/.vim/plugin; \
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
	&& vim +PluginInstall +qall

# Tmux configuration
COPY ./tmux.conf /root/.tmux.conf

CMD ["/bin/zsh"]
