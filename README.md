# Twitch CLI Dockerfile.

Got [tarbombed](http://www.linfo.org/tarbomb.html) by the twitch CLI installer?  Install it in
Docker instead.

Just build with Docker (after reading `install.sh`):

```sh
$ docker build --tag=twitch-cli .
```

And run the image with Docker, passing arguments directly on the end of the run command:

```sh
$ docker run --rm -it twitch-cli version
```

(You did read the install script before running it, right?  Right?!)

