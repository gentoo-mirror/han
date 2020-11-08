# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

MY_PV=$(ver_rs 3 - 4 .)
MY_P="${PN}-${MY_PV}"

DESCRIPTION="Coders' typeface, built from code"
HOMEPAGE="https://be5invis.github.io/Iosevka/"
SRC_URI="https://github.com/be5invis/${PN}/releases/download/v${MY_PV}/ttf-${MY_P}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="app-arch/unzip"

S="${WORKDIR}"
FONT_SUFFIX="ttf"
