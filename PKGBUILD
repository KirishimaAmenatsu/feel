# Maintainer: CamelliaTse
# Contributor: CamelliaTse
# GPG Key: 28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711

pkgname=feel
pkgver=1.0.1
pkgrel=1
pkgdesc="记录当前感受的命令行工具"
arch=('any')
url="https://github.com/CamelliaTse/feel"
license=('MIT')
depends=('python')
source=("feel")
sha256sums=('3ffff68b70feb0bd84e841eada6a1a3c8a2376eb9e237a67425d176529d060ee')
validpgpkeys=('28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711')

package() {
    install -Dm755 "${srcdir}/feel" "${pkgdir}/usr/bin/feel"
}
