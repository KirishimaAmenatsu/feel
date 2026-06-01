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
sha256sums=('ff250a1acd4c22ea4f2e4d263bb06654fc572b1c975a26f1f4a44203c1a7c0b8')
validpgpkeys=('28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711')

package() {
    install -Dm755 "${srcdir}/feel" "${pkgdir}/usr/bin/feel"
}
