################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="lutris"
PKG_VERSION="v0.4.4.1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/lutris/lutris"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain gtk+ zlib"
PKG_SECTION="apps"
PKG_SHORTDESC="Lutris Gaming Platform"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  git clone --branch $PKG_VERSION git@github.com:lutris/lutris.git $PKG_BUILD
}

make_target() {
  python3 setup.py build
}

post_makeinstall_target() {
  python3 setup.py install --user
}
