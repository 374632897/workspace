# workspace

### usage
As first, you should have docker installed, and then , and then, execute `./run.sh b` to build the image.

After the image built, you can use `./run.sh` to start a container based on the image you build just now. The container will mount the data directory of current directory to the `/root/data` of container, so you can share data between the container and your host pc.

Some personal configuration like aliases, package managers and etc, is based with the project of [dotfiles](https://github.com/paulirish/dotfiles), I forked it and made some useful changes to make it more available for me .

The supported editor is vim, The first time you use vim , need to run the command `PlugInstall` to install some vim plugins.
