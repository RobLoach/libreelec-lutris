PKG_NAME="lutris"
PKG_VERSION="v0.4.4.1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://lutris.net"
PKG_URL="https://github.com/lutris/lutris/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="gtk+"
PKG_SECTION="apps"
PKG_SHORTDESC="Lutris Gaming Platform"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  mkdir -p $PKG_BUILD
}

# TODO: python3: can't open file 'setup.py': [Errno 2] No such file or directory
make_target() {
  python3 setup.py install
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
}
