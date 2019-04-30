include $(TOPDIR)/rules.mk

PKG_NAME:=spi_tft_test
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/spi_tft
	SECTION:=admin
	CATEGORY:=spi_tft
	TITLE:=spi_tft
#	DEPENDS:=+librt +libpthread
endef

define Package/spi_tft/description
	A user-friendly g-steam customization interface for OpenWrt
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/ 
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		$(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CFLAGS)"
endef


define Package/spi_tft/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/spi_tft $(1)/usr/sbin/

endef


$(eval $(call BuildPackage,spi_tft))


