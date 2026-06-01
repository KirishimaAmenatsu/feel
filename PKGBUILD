# Maintainer: CamelliaTse
# Contributor: CamelliaTse
# GPG Key: 28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711

pkgname=feel
pkgver=1.1.1
pkgrel=1
pkgdesc="记录当前感受的命令行工具"
arch=('any')
url="https://github.com/CamelliaTse/feel"
license=('MIT')
depends=('python')
source=("feel")
sha256sums=('251df347e37e95afc54c7247f5d61f26484e75d3f10b854e600ae5c610b3cb4d')
validpgpkeys=('28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711')

package() {
    install -Dm755 "${srcdir}/feel" "${pkgdir}/usr/bin/feel"
}
