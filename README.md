# TMSU Docker

Install.

```
git clone http://github.com/7db9a/tmsu-docker
docker build -t tmsu:0.7.5 tmsu-docker
```

Enter container.

```
docker run \
-it \
--device /dev/fuse \
--cap-add SYS_ADMIN \
--security-opt apparmor:unconfined \
-v $(pwd):/working tmsu:0.7.5 \
/bin/bash
```

The options device, cap-add, and security-opt are to make docker work with FUSE, which enables `tmsu mount`.
