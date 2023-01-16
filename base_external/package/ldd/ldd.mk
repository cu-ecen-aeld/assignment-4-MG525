################################################################################
#
# LDD
#
################################################################################

LDD_VERSION = 'd0432f684736a74f4e49bf11d348be9c0587bf5b'
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-MG525.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0700 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0700 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0700 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0700 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))