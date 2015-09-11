DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-ruby
VERSION =		latest
VERSION_ALIASES =
TITLE =			Ruby
DESCRIPTION =		Ruby
SOURCE_URL =		https://github.com/scaleway-community/scaleway-ruby
VENDOR_URL =		https://www.ruby-lang.org/

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Ruby

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
