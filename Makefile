# $NetBSD: Makefile,v 1.179 2023/08/14 05:24:46 wiz Exp $

DISTNAME=		getmail-5.16
PKGREVISION=		3
CATEGORIES=		mail
MASTER_SITES=		${HOMEPAGE}old-versions/

MAINTAINER=		schmonz@NetBSD.org
HOMEPAGE=		http://pyropus.ca/software/getmail/
COMMENT=		Secure, flexible, reliable fetchmail replacement
LICENSE=		gnu-gpl-v2

USE_LANGUAGES=		# none

REPLACE_PYTHON=		*.py getmailcore/*.py
PYTHON_VERSIONS_ACCEPTED=	27 # not yet ported as of 4.53.0

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
