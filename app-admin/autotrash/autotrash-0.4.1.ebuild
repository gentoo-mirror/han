# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )
DISTUTILS_USE_SETUPTOOLS="rdepend"

inherit distutils-r1

DESCRIPTION="Script to automatically purge old trash"
HOMEPAGE="https://bneijt.nl/pr/autotrash"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/bneijt/${PN}.git"
	BDEPEND="dev-python/setuptools_scm"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="GPL-3+"
SLOT="0"
IUSE=""

src_prepare() {
	# Arrow is listed as a dependency but not actually used
	if [[ ${PV} == 9999 ]]; then
		sed -e "/    arrow >=0.14/d" -i setup.cfg || die
	else
		sed -e "s/'arrow>=0.17.0,<0.18.0'//" -i setup.py || die
	fi

	default
}
