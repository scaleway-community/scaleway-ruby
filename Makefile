DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-ruby
VERSION =		latest
VERSION_ALIASES =
TITLE =			Ruby
DESCRIPTION =		Ruby
SOURCE_URL =		https://github.com/scaleway/image-app-ruby


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
