# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A minimalistic, lightweight command line client for the Jellyfin media server"
HOMEPAGE="https://github.com/Aanok/jftui"
SRC_URI="https://github.com/Aanok/jftui/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	net-misc/curl
	>=media-video/mpv-0.23:=[libmpv,lua]
	>=dev-libs/yajl-2.0
"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"
