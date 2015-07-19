docker build -t opencloudlabs/ide:latest ./ide/ \
	&& docker build -t opencloudlabs/ide_plugin_go:latest ./ide_plugin_go/ \
	&& docker build -t opencloudlabs/ide_lang_goappengine:1.9.23 ./ide_lang_goappengine/
