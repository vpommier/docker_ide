## Description
An ide for Amazon Web Services based on [vpommier/ide_base container](https://hub.docker.com/r/vpommier/ide_base/).

## Features
* git
* zsh
* xterm
* tmux
* tmuxinator
* vim
* awscli

## Build
To build the docker container from sources:

```bash
make build
```

## Run
### Run it with xterm:
On linux:
```bash
docker run -it \
	--name ide-aws \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=unix$DISPLAY \
	vpommier/ide_aws:latest xterm	
```

On Windows and OSX:
```bash
docker run -d \
	--name ide-aws \
	-e DISPLAY=<display addr of your X11 server> \
	vpommier/ide_aws:latest	xterm
```

### Or run it directly in your terminal
```bash
docker run -it \
	--name ide-aws \
	vpommier/ide_aws:latest zsh	
```
