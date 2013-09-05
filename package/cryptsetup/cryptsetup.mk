################################################################################
#
# cryptsetup
#
################################################################################

CRYPTSETUP_VERSION = 1.6.2
CRYPTSETUP_SOURCE = cryptsetup-$(CRYPTSETUP_VERSION).tar.bz2
CRYPTSETUP_SITE = http://cryptsetup.googlecode.com/files
CRYPTSETUP_CONF_ENV += LIBGCRYPT_CONFIG=$(STAGING_DIR)/usr/bin/libgcrypt-config
CRYPTSETUP_DEPENDENCIES = lvm2 popt e2fsprogs libgcrypt host-pkgconf
CRYPTSETUP_LICENSE = GPLv2+ (programs), LGPLv2.1+ (library)
CRYPTSETUP_LICENSE_FILES = COPYING COPYING.LGPL

$(eval $(autotools-package))
