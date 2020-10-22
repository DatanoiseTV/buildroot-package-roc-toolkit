ROC_TOOLKIT_VERSION = 06c7730f6e6cc8d11b24d0c460297d3b2de17bfe
ROC_TOOLKIT_SITE = git://github.com/roc-streaming/roc-toolkit.git
ROC_TOOLKIT_INSTALL_STAGING = YES
ROC_TOOLKIT_INSTALL_TARGET = YES
ROC_TOOLKIT_DEPENDENCIES = host-scons host-pkgconf libuv pulseaudio sox libsoxr libunwind
ROC_TOOLKIT_SITE_METHOD = git

define ROC_TOOLKIT_BUILD_CMDS
        (cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) PKG_CONFIG_PATH=$(TARGET_DIR)/usr/lib/pkgconfig PKG_CONFIG_SYSROOT_DIR="$(TARGET_DIR)" CROSS=$(TARGET_CROSS) \
		$(SCONS) --build-3rdparty=openfec --disable-tests --disable-test --disable-doc --prefix=$(TARGET_DIR))
endef


$(eval $(generic-package))

