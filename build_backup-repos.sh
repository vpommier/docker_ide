docker build -t opencloudlabs/ide:latest ./ide/ \
	&& docker build -t opencloudlabs/ide_plugin_go:latest ./ide_plugin_go/ \
	&& docker build -t opencloudlabs/ide_lang_go:1.4.2 ./ide_lang_go/ \
	&& docker build -t opencloudlabs/ide_backup-repos:0.0.1 ./ide_backup-repos/
