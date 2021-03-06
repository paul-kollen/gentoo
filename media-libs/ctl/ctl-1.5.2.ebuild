# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="AMPAS' Color Transformation Language"
HOMEPAGE="https://github.com/ampas/CTL"
SRC_URI="${HOMEPAGE}/archive/ctl-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AMPAS"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"

RDEPEND="media-libs/ilmbase:=
	media-libs/openexr:=
	media-libs/tiff:=
	!media-libs/openexr_ctl"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

S="${WORKDIR}/CTL-ctl-${PV}"

PATCHES=( "${FILESDIR}/${P}-Use-GNUInstallDirs-and-fix-PkgConfig-files.patch" )

mycmakeargs=( -DCMAKE_INSTALL_DOCDIR="share/doc/${PF}" )
