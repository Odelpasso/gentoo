# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

if [[ "${PV}" != "9999" ]]; then
	DIST_VERSION=xxxxxx # change this when released
	DIST_AUTHOR=AMBA
	inherit perl-module
	KEYWORDS="~amd64"
else
	EGIT_REPO_URI="https://github.com/amba/Lab-Zhinst.git"
	EGIT_BRANCH="master"
	inherit perl-module git-r3
fi

DESCRIPTION="Perl bindings to the LabOne API of Zurich Instruments"
HOMEPAGE="https://github.com/amba/Lab-Zhinst/"

SLOT="0"
IUSE=""

RDEPEND="sci-electronics/labone"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
