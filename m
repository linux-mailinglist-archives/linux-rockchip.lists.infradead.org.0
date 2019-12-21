Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B67128805
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiW+G1fz71RBt99DRFt7WZzb4PUBMEmxW4vSZInH2pI=; b=XwvOXx7etvDarq
	b/Gpkd/V+gB40Yd0+68GlAk1VPRJS2tzNfeVON+R5D2lyV2RL4of+7R8QTY2/6r/l3bYCBhLHNm8L
	lZ+cUHK3hm/HT87o+QEJo6ZzCcWV8vUumQyNIMHOW4X1XZaVomJK9SK6VU87eEVG94HmTeHurGXO4
	kgWvGLPQ9v/IuleAnpo744MqONGaZgrera7HcKnt1zYZmoZRBvSLb4z+ueelLwN1RA6isuxUrvyHU
	q8oudXvrnh1DH/QP27aVZo/eGVRUTMVRh5TP7+SE85tXHFoywKX7/26R4/GtCjue2I7n1YU6Ht5Tv
	SxwykZzzX1VY/2b1vVVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbn-0006xb-PC; Sat, 21 Dec 2019 07:55:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbf-0006q4-85
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id z124so6124932pgb.13
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=23zjubrNc7IltllaEclaYRxJEAN8c0zQDSXNZ1bkeFg=;
 b=K42a2wG3RaXCTaK52dJ+0s8bFxspqbeo7KZB+CfiiDSpW4DgGGLM103fpw5qhA/K+M
 EmTz9lmzrY1voLuDPG86fSg64XfE3JscCiZShQ07Ced7mZ7aIol9TSnR76y1kQzJEZUV
 wyevO8HexbYhP4+EcqJEbDqYF/Sl6zot3X63A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=23zjubrNc7IltllaEclaYRxJEAN8c0zQDSXNZ1bkeFg=;
 b=dmbBPbRau157DRUPlyqAmySdnRaliydZATmDU4lsA5jtAzc8BV40/jXgV7G9qS+u3k
 YY12tqo9WwEjaI73a/Bt7b9bcHZZz1XJt9CxBULcqW4c9D++cYskBf/0soPWmIOtBpyg
 IrWsvrcKuJ7o5SpTk98TYkU9EKzvbGJSB8pbfU4LyvW2b0ecqkZ4klEwqPBBa0WM38kh
 imS8r8SyI9mdi+izXbqTyDy5amWv20jlAUdRxHT6cfKOl/IGZK9kgHoXFshmBJ0Xvm1D
 ISki6H795qJgWz5HxcQ8dxkmlAaRbHrm8c1BrD7zT2tamiIb6Fu7iNMZNzUNleIneVz5
 GjGQ==
X-Gm-Message-State: APjAAAVnWw8S4NIKIBuSye4rYfH5Mkl4qAh2qDQ07DS+i00lBm7Zgh7t
 Nt//5eDvYz7Y6yEqz6F+j8X61g==
X-Google-Smtp-Source: APXvYqwV+EeJlDZjSJsQ4Y0h3rrQEnRs66/rc3zcQYalOZ3qI2xLRp3TC+2loFNXWecWtxPXa6TlPQ==
X-Received: by 2002:a63:7045:: with SMTP id a5mr19924750pgn.49.1576914921951; 
 Fri, 20 Dec 2019 23:55:21 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:21 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
Date: Sat, 21 Dec 2019 13:24:40 +0530
Message-Id: <20191221075440.6944-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235523_397131_4BDDEBE8 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add SPI boot support for ROC-RK3399-PC board.

This would add separate config file for SPI along
with dts changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi | 12 ++++-
 board/rockchip/evb_rk3399/MAINTAINERS  |  2 +
 configs/roc-pc-rk3399-spi_defconfig    | 62 ++++++++++++++++++++++++++
 3 files changed, 75 insertions(+), 1 deletion(-)
 create mode 100644 configs/roc-pc-rk3399-spi_defconfig

diff --git a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
index 5746442981..6e43c7c71b 100644
--- a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
@@ -11,8 +11,18 @@
 		spi0 = &spi1;
 	};
 
+	config {
+		u-boot,spl-payload-offset = <0x40000>; /* @ 256KB */
+	};
+
 	chosen {
-		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
+		u-boot,spl-boot-order = "same-as-spl", &spi_flash, &sdhci, &sdmmc;
+	};
+};
+
+&spi1 {
+	spi_flash: flash@0 {
+		u-boot,dm-pre-reloc;
 	};
 };
 
diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
index eab4c4c525..8de6ec88f1 100644
--- a/board/rockchip/evb_rk3399/MAINTAINERS
+++ b/board/rockchip/evb_rk3399/MAINTAINERS
@@ -57,8 +57,10 @@ F:	arch/arm/dts/rk3399-orangepi-u-boot.dtsi
 
 ROC-RK3399-PC
 M:	Levin Du <djw@t-chip.com.cn>
+M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
 F:	configs/roc-pc-rk3399_defconfig
+F:	configs/roc-pc-rk3399-spi_defconfig
 F:	arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
 
 ROCK-PI-4
diff --git a/configs/roc-pc-rk3399-spi_defconfig b/configs/roc-pc-rk3399-spi_defconfig
new file mode 100644
index 0000000000..1fdfb10101
--- /dev/null
+++ b/configs/roc-pc-rk3399-spi_defconfig
@@ -0,0 +1,62 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_ROCKCHIP_RK3399=y
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xFF1A0000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+# CONFIG_SPL_MMC_SUPPORT is not set
+CONFIG_SPL_SPI_FLASH_SUPPORT=y
+CONFIG_SPL_SPI_SUPPORT=y
+CONFIG_SPL_SPI_LOAD=y
+CONFIG_SPL_TEXT_BASE=0xff8c2000
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_SPI_FLASH=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM_RK3399_LPDDR4=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_SYSRESET=y
+CONFIG_SPI_FLASH_WINBOND=y
+CONFIG_ROCKCHIP_SPI=y
+CONFIG_USB=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_DWC3=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_HOST_ETHER=y
+CONFIG_USB_ETHER_ASIX=y
+CONFIG_USB_ETHER_ASIX88179=y
+CONFIG_USB_ETHER_MCS7830=y
+CONFIG_USB_ETHER_RTL8152=y
+CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
