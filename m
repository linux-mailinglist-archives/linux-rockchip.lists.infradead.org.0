Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1015AE0B0A
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdvOpX4c8N7ZaHFyzg2zJDxrgCvqPgo2BN54x/tJtMc=; b=iCzEjG9ixXeaDQ
	OoKiYVPX8+g4z+9IqWntE86jkpzTEA2DIDTB0HIWDqlJ9CzJRu33vOXYbkgy36ph15fGmaJrdl7rp
	638g4S6klA02Rekqw2ZbvBkoskNiNXKWntpRmlIlmhAFr0ngthA17EfMvoq5MCzMu8sDE5RZMYeWr
	M8jUeNBlbIirYOxMarnIwC+Ur49W0nGsu/OHJ2ypQnyUlkvBPhF2z3+DhelgYcjj+PBhXXI7CtwMb
	2vEgiU6AjKWBjrlmog/YNDyPlxwcUDiEwEhhGR5/hRvTbRKgmAUxfKk2iLommRG+88rGtvDgfEVjH
	2mk/tzjlQo327PxshhHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNg-0006Eg-P6; Tue, 22 Oct 2019 17:55:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNd-0006Cl-KW
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id f14so10378603pgi.9
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zWRJz6rW2RQ3KTi2LD0pRPiuHfQYA+WsBHlu/vU4wOs=;
 b=TCTDvvGex5Tdt23Isv0AZREDTC3hv/OLy1oXjKfv/L1a5CORfVMNbh4jhAdAlGbdcq
 5tRJtsVJiMyS+Hh7uZd1tG9HntP2NbfhT6GaWNlYxzcsM/z3Zoh9EN9vXRmw560/TUPx
 QCArOxMLRKpOlg0HdorLBZ+D2GgoV2rRdy68c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zWRJz6rW2RQ3KTi2LD0pRPiuHfQYA+WsBHlu/vU4wOs=;
 b=Zq80Ypyj0r5ZcstbtRL4CPvDTSNPX2vseD6HqnkUnfYSF1Mw986qUNvzcY05dQ+lt9
 VD2gjSsA8XPtBkfvgAYj4sxuzwiWC2lDUu9rvReEsu9O/3Rrd69TIMM+/6NA2Lp1ExSJ
 oJ0Y1OGvGuf8NcKKdj97oRGmVz/OtYBIxMEvjdki5SKoYaFEtJDCviOl59JBo2uwN2vN
 PRdOEyUWOmeNpvslV7sBI19xeJooWoailk9P8jyNLRUmkDl0q9ZbDSdH+8XXWgy2B22A
 XaKv/lprnYgsjf8jzOJxYca+nSUEkZfvsCfT6r02K50q4llwJLOBUbOOshHqVxBICGcv
 Pv/w==
X-Gm-Message-State: APjAAAXZgq5/xdzyd6uhfrxYypbsNXqgoTQuDtkRys+XB1RoEdpjdQWJ
 GO2GuBdZM/3TEWLv6SZyeTYCSA==
X-Google-Smtp-Source: APXvYqwfqbzdbwRIbc3Ebh1PmLdKFkY6I8DWT0fuoG9F/Dc69Th/pzL2pv/eHy1tpUW6eOVH0hvWnQ==
X-Received: by 2002:a63:eb08:: with SMTP id t8mr5302110pgh.49.1571766936789;
 Tue, 22 Oct 2019 10:55:36 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 5/9] fastboot: rockchip: Select FASTBOOT_FLASH[_MMC_DEV]
Date: Tue, 22 Oct 2019 23:24:54 +0530
Message-Id: <20191022175458.22604-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105537_676966_C7EC80A0 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Select CONFIG_FASTBOOT_FLASH, CONFIG_FASTBOOT_FLASH_MMC_DEV
for rockchip SoC plaforms in fastboot Kconfig file instead
of defined it in board defconfig.

This eventually drop the explicit configs defined in
supporting board defconfig files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/evb-rk3036_defconfig      | 2 --
 configs/evb-rk3128_defconfig      | 2 --
 configs/evb-rk3229_defconfig      | 2 --
 configs/evb-rk3288_defconfig      | 2 --
 configs/evb-rk3328_defconfig      | 2 --
 configs/firefly-rk3288_defconfig  | 2 --
 configs/kylin-rk3036_defconfig    | 2 --
 configs/miqi-rk3288_defconfig     | 2 --
 configs/phycore-rk3288_defconfig  | 2 --
 configs/popmetal-rk3288_defconfig | 2 --
 configs/rock64-rk3328_defconfig   | 2 --
 configs/tinker-rk3288_defconfig   | 2 --
 drivers/fastboot/Kconfig          | 4 +++-
 13 files changed, 3 insertions(+), 25 deletions(-)

diff --git a/configs/evb-rk3036_defconfig b/configs/evb-rk3036_defconfig
index c02ef6af4e..ca2ba9d0d8 100644
--- a/configs/evb-rk3036_defconfig
+++ b/configs/evb-rk3036_defconfig
@@ -36,8 +36,6 @@ CONFIG_REGMAP=y
 CONFIG_SYSCON=y
 # CONFIG_SPL_BLK is not set
 CONFIG_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3128_defconfig b/configs/evb-rk3128_defconfig
index a3189638a1..9d81d96e68 100644
--- a/configs/evb-rk3128_defconfig
+++ b/configs/evb-rk3128_defconfig
@@ -22,8 +22,6 @@ CONFIG_SYSCON=y
 CONFIG_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x60800800
 CONFIG_FASTBOOT_BUF_SIZE=0x04000000
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3229_defconfig b/configs/evb-rk3229_defconfig
index e7b813d627..a365931e47 100644
--- a/configs/evb-rk3229_defconfig
+++ b/configs/evb-rk3229_defconfig
@@ -44,8 +44,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_SIZE=0x04000000
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index a6c57dfaa6..a88f391b96 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -44,8 +44,6 @@ CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index c9d056b4b9..d133477e62 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -48,8 +48,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x800800
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=1
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 2de166ae90..4bd81048e9 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -46,8 +46,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/kylin-rk3036_defconfig b/configs/kylin-rk3036_defconfig
index ff20dea0fc..79188c16b7 100644
--- a/configs/kylin-rk3036_defconfig
+++ b/configs/kylin-rk3036_defconfig
@@ -38,8 +38,6 @@ CONFIG_REGMAP=y
 CONFIG_SYSCON=y
 # CONFIG_SPL_BLK is not set
 CONFIG_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index fbafbb857a..1b55008a96 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -46,8 +46,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 70e3bdc621..f44974b191 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -48,8 +48,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 611aff5e1d..af70684045 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -46,8 +46,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/rock64-rk3328_defconfig b/configs/rock64-rk3328_defconfig
index 5e64003dd3..fc9079eb4e 100644
--- a/configs/rock64-rk3328_defconfig
+++ b/configs/rock64-rk3328_defconfig
@@ -51,8 +51,6 @@ CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
 CONFIG_FASTBOOT_BUF_ADDR=0x800800
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=1
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 467065e3ad..a624270aff 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -48,8 +48,6 @@ CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
-CONFIG_FASTBOOT_FLASH=y
-CONFIG_FASTBOOT_FLASH_MMC_DEV=0
 CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/drivers/fastboot/Kconfig b/drivers/fastboot/Kconfig
index d63ecdd27e..34864ca613 100644
--- a/drivers/fastboot/Kconfig
+++ b/drivers/fastboot/Kconfig
@@ -64,7 +64,7 @@ config FASTBOOT_USB_DEV
 
 config FASTBOOT_FLASH
 	bool "Enable FASTBOOT FLASH command"
-	default y if ARCH_SUNXI
+	default y if ARCH_SUNXI || ARCH_ROCKCHIP
 	depends on MMC || (NAND && CMD_MTDPARTS)
 	select IMAGE_SPARSE
 	help
@@ -89,6 +89,8 @@ endchoice
 config FASTBOOT_FLASH_MMC_DEV
 	int "Define FASTBOOT MMC FLASH default device"
 	depends on FASTBOOT_FLASH_MMC
+	default 1 if ROCKCHIP_RK3328
+	default 0 if ARCH_ROCKCHIP
 	default 0 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA = -1
 	default 1 if ARCH_SUNXI && MMC_SUNXI_SLOT_EXTRA != -1
 	help
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
