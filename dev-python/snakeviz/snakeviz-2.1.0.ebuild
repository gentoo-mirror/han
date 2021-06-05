# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit distutils-r1

if [[ ${PV} = 9999* ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jiffyclub/snakeviz"
else
	SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="An in-browser Python profile viewer"
HOMEPAGE="https://jiffyclub.github.io/snakeviz"

LICENSE="BSD"
SLOT="0"
IUSE=""

BDEPEND=""
DEPEND=">=www-servers/tornado-2.0[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
