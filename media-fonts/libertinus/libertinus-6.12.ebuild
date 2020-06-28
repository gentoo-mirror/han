# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

if [[ ${PV} = 9999* ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/alif-type/libertinus.git"
else
	SRC_URI="https://github.com/alif-type/libertinus/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="A fork of the Linux Libertine and Linux Biolinum fonts"
HOMEPAGE="https://github.com/alif-type/libertinus"

LICENSE="OFL-1.1"
SLOT="0"
IUSE=""

FONT_SUFFIX="otf"
DOCS="AUTHORS.txt CONTRIBUTORS.txt FONTLOG.txt README.md *.linuxlibertine.txt"

# We don't want to actually compile anything despite the Makefile being present
src_compile() {
	:
}
