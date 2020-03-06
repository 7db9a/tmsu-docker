# TMSU Docker

Build TMSU from source and use it from a docker container.

## Quick start

#### Build

```
git clone http://github.com/7db9a/tmsu-docker
cd tmsu-docker && chmod +x dockerfile.sh
make TMSU_VERSION=0.7.5
```

#### Alias

```
alias tmsu-docker='docker run \
                  -it \
                  --device /dev/fuse \
                  --cap-add SYS_ADMIN \
                  --security-opt apparmor:unconfined \
                  -v $(pwd):/working tmsu:0.7.5-buster \
                  /bin/bash'
```

#### Start

`tmsu-docker`

## Usage

#### Build any version of TMSU.

`make build TMSU_VERSION=$VERSION`

#### Enter the tmsu-docker container.

```
docker run \
-it \
--device /dev/fuse \
--cap-add SYS_ADMIN \
--security-opt apparmor:unconfined \
-v $(pwd):/working tmsu:$VERSION-buster \
/bin/bash
```

The options device, cap-add, and security-opt are to make docker work with FUSE, which enables `tmsu mount`.

#### TMSU quick tour

https://tmsu.org/
