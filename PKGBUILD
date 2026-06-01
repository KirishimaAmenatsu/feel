# Maintainer: CamelliaTse
# Contributor: CamelliaTse
# GPG Key: 28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711

pkgname=feel
pkgver=1.0.0
pkgrel=1
pkgdesc="记录当前感受的命令行工具"
arch=('any')
url="https://github.com/CamelliaTse/feel"
license=('MIT')
depends=('python')
source=("feel")
sha256sums=('b2a3a3d13446dcfc77b59c69c20224949930b4ecb4b099687c44501b75a3bc30')
validpgpkeys=('28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711')

package() {
    install -Dm755 "${srcdir}/feel" "${pkgdir}/usr/bin/feel"
}
