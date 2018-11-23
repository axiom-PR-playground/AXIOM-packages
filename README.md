# AIOM Arch Linux Packages

A collection of all the Arch Linux packages AXIOM maintained; currently the packages are all in a single group `axiom-beta`.
To find the download links, please go to the release tab.

This repo on GitHub is also a host for Package Mirror Server of ArchLinux packages for AXIOM devices.

# Add a new package
1. Create a sub-folder in `./repo`
2. Create a PKGBUILD file for maintaining the package; [example](https://github.com/axiom-PR-playground/AXIOM-packages/blob/master/repo/platform-support/PKGBUILD) / [document](https://wiki.archlinux.org/index.php/PKGBUILD)
3. Build the package and add it into the package databse by running `./build.sh ./repo/{YOUR_PKG}`.
4. Publish to releases `./publish.sh -v ${VER_NUM} -t ${GITHUB_TOKEN} -r axiom-PR-playground/AXIOM-packages`

# LICENSE
TBA
