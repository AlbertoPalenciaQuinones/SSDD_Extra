Format: 3.0 (quilt)
Source: zeroc-ice
Binary: libzeroc-ice-dev, libzeroc-ice3.7-java, libzeroc-ice-java, libzeroc-ice3.7, libzeroc-icestorm3.7, php-zeroc-ice, python-zeroc-ice, python3-zeroc-ice, zeroc-glacier2, zeroc-ice-all-dev, zeroc-ice-all-runtime, zeroc-ice-compilers, zeroc-ice-slice, zeroc-ice-utils, zeroc-icegridgui, zeroc-ice-utils-java, zeroc-icebox, zeroc-icegrid, zeroc-icepatch2, zeroc-icebridge
Architecture: any all
Version: 3.7.10-1
Maintainer: José Gutiérrez de la Concha <jose@zeroc.com>
Uploaders: Ondřej Surý <ondrej@debian.org>
Homepage: https://zeroc.com
Standards-Version: 4.1.3
Vcs-Browser: https://github.com/zeroc-ice/ice-debian-packaging.git
Vcs-Git: https://github.com/zeroc-ice/ice-debian-packaging.git
Build-Depends: debhelper (>= 9), dh-exec, dh-php (>= 0.20), dh-python, dh-systemd (>= 1.3), javahelper, libbluetooth-dev [!hurd-i386 !kfreebsd-i386 !kfreebsd-amd64], libbz2-dev, libdbus-1-dev [!hurd-i386 !kfreebsd-i386 !kfreebsd-amd64], libedit-dev, libexpat1-dev, liblmdb-dev, libmcpp-dev, libssl-dev, libsystemd-dev, locales-all, maven-repo-helper (>= 1.8), openssl, php-all-dev, php-cli, python, python-dev, python-passlib, python-setuptools, python3, python3-dev, python3-setuptools
Build-Depends-Indep: default-jdk, gradle (>= 2), gradle-ice-builder-plugin (>= 1.3.13), libjgoodies-forms-java (>= 1.6.0), libjgoodies-looks-java (>= 2.5.2), openjfx
Package-List:
 libzeroc-ice-dev deb libdevel optional arch=any
 libzeroc-ice-java deb oldlibs optional arch=all
 libzeroc-ice3.7 deb libs optional arch=any
 libzeroc-ice3.7-java deb java optional arch=all
 libzeroc-icestorm3.7 deb net optional arch=any
 php-zeroc-ice deb php optional arch=any
 python-zeroc-ice deb python optional arch=any
 python3-zeroc-ice deb python optional arch=any
 zeroc-glacier2 deb net optional arch=any
 zeroc-ice-all-dev deb devel optional arch=all
 zeroc-ice-all-runtime deb net optional arch=all
 zeroc-ice-compilers deb devel optional arch=any
 zeroc-ice-slice deb devel optional arch=all
 zeroc-ice-utils deb admin optional arch=any
 zeroc-ice-utils-java deb oldlibs optional arch=all
 zeroc-icebox deb net optional arch=any
 zeroc-icebridge deb net optional arch=any
 zeroc-icegrid deb net optional arch=any
 zeroc-icegridgui deb admin optional arch=all
 zeroc-icepatch2 deb net optional arch=any
Checksums-Sha1:
 7809185729b064e09889f2264eda34aad9bf810a 10381677 zeroc-ice_3.7.10.orig.tar.gz
 465c6a36750e1b7c0b705799ce2a896577af8937 31193 zeroc-ice_3.7.10-1.debian.tar.gz
Checksums-Sha256:
 166906eb5147157ae6a127c7923d70b1996daa4e457fa3576483d034aaec1ac4 10381677 zeroc-ice_3.7.10.orig.tar.gz
 c736ddc8a0ddb1f76249d9d85fa12ba9b73a5865bd5ca4c9c474e6b21b82e2c7 31193 zeroc-ice_3.7.10-1.debian.tar.gz
Files:
 796a3a54faa23da0bd04165e15972c07 10381677 zeroc-ice_3.7.10.orig.tar.gz
 310475549087efc62a8ca7a35410712b 31193 zeroc-ice_3.7.10-1.debian.tar.gz
