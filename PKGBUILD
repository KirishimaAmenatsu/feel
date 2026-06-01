# Maintainer: CamelliaTse
# Contributor: CamelliaTse
# GPG Key: 28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711

pkgname=feel
pkgver=1.2.1
pkgrel=1
pkgdesc="记录当前感受的命令行工具"
arch=('any')
url="https://github.com/CamelliaTse/feel"
license=('MIT')
depends=('python')
source=("feel")
sha256sums=('039323375896387968924e22683c4d26d715018c7a62e6356b9c582f5e7bec52')
validpgpkeys=('28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711')

package() {
    install -Dm755 "${srcdir}/feel" "${pkgdir}/usr/bin/feel"
}
