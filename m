Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0201EE6F9
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 16:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rn0dsT8OLbFsw+xMthlcklVufrp3p0P1Fe6/+Pw1kXk=; b=UEbwoka4XVhQSC
	8pKvc182lMH7rTh606Zdr9mCkhnPdhg5iNY0dtHfMB3roEbXA0xn8gCbPbSRiHQ61XqMihnFlKNaj
	qJ0joyt5ZeF8HNjmlc8/2MkpCPNkhkTOmahPn/tw91qbTj2XfHDVvoPI04aFac/X2w/9SAvfXRXy5
	jUr1nOTcYGzO1ecmVe3OQPDmHxsGeaqO35o+qxc+yBBVeBm81YF1RIFW0P5XfGRxi5luveRO9/S8G
	QzNa0umZk0iDSlzEOPqPD6ASScOtCzV52PbMW34K1HYxl2vAzW3qdryB0KwkWDa7bdlEfnitErfBt
	gPm8a/L5EnA9ovOX5v2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrDz-0006hd-FW; Thu, 04 Jun 2020 14:52:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrDv-0006ft-RR
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 14:52:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id o6so3585529pgh.2
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 07:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xOZD5a5BKPNBvSCMbNYcHacgo1bsu/9VtngWLQjb1VE=;
 b=MBtxAHlPx45IWXxlD/d7HKPQRdbKkf7jxrAZ9zamuk5E/Ss9tH9ZK2GxKC0IQYLSvx
 z772LexmwqAb6OCoSUk4P6fANUZJ0AKecVft3BdjxmmEEGWpBeNcaaJn6it4vDnfgH9x
 EGdFFVbCI6DQOQ4DidKV+RO/12fgHDsj/QfP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xOZD5a5BKPNBvSCMbNYcHacgo1bsu/9VtngWLQjb1VE=;
 b=iAf1y9MuKlVlasXEkPz39DGbd8A2KCsgd/4jaRE0319kTh0rEmCVKsTRquwonyHqui
 IpQ2x2rwKMkBz5c6LdYXEK6rtmno50Nxdg6vVnB0ykNUar/OyD7ZLB4bqM7ApSY5laxL
 JAXmO+wiZo7BoxH/gcuOjeBEGOQvYqd6s++BbKjJKe2hsM2ZXiBOE1qqpFuejqKFyy2+
 ysBCXypz/b7/s9I043f8Svywad5DQOrSJcezFcLyhqCf9F09himBvr/fXVAY4TtSTdIE
 6xvgEc9zcqaiNv997UrAStqiurMRfNtgSFcBv1rq9/ZKTT+qkTPlKM1dl471ngjbCxYf
 pFvA==
X-Gm-Message-State: AOAM531RfTpyA+YlE8i8wOr6K1A+LXh6QyKxjiQQl2HgNaQFRpCSij/R
 UpvCJ5Ycs0agGIVEXPoBySE1sQ==
X-Google-Smtp-Source: ABdhPJywOxFpleCfDboJiQipI3uqk0Ulf6GrV0kKi3jIXRZGdCWttyjNDVyfTmwxJ0eQuw4OqROsaA==
X-Received: by 2002:a63:fb14:: with SMTP id o20mr4863896pgh.144.1591282323037; 
 Thu, 04 Jun 2020 07:52:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:41f4:94a8:1af3:a574])
 by smtp.gmail.com with ESMTPSA id 2sm4831283pfz.39.2020.06.04.07.51.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 07:52:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v3 2/4] roc-rk3399-pc: Mark default env from SPI
Date: Thu,  4 Jun 2020 20:21:39 +0530
Message-Id: <20200604145141.356702-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200604145141.356702-1-jagan@amarulasolutions.com>
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075203_897352_004E79F8 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Mark the default U-Boot environment as SPI flash since
this is an on board flash device.

Updated env offset, size in contrast with default since
the U-Boot proper has to start from 384K.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v3:
- updated env settings

 configs/roc-pc-mezzanine-rk3399_defconfig | 6 ++++--
 configs/roc-pc-rk3399_defconfig           | 6 ++++--
 include/configs/roc-pc-rk3399.h           | 4 ----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 1c1539bcb9..3b91c25ff4 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ENV_SIZE=0x6000
+CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
@@ -25,7 +27,7 @@ CONFIG_CMD_TIME=y
 CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc-mezzanine"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
-CONFIG_ENV_IS_IN_MMC=y
+CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 76e76c160e..6edd4a8822 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ENV_SIZE=0x6000
+CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
 CONFIG_NR_DRAM_BANKS=1
@@ -24,7 +26,7 @@ CONFIG_CMD_TIME=y
 CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-roc-pc"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
-CONFIG_ENV_IS_IN_MMC=y
+CONFIG_ENV_IS_IN_SPI_FLASH=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/include/configs/roc-pc-rk3399.h b/include/configs/roc-pc-rk3399.h
index d4cbc3532e..59fe22289c 100644
--- a/include/configs/roc-pc-rk3399.h
+++ b/include/configs/roc-pc-rk3399.h
@@ -13,10 +13,6 @@
 
 #include <configs/rk3399_common.h>
 
-#if defined(CONFIG_ENV_IS_IN_MMC)
-# define CONFIG_SYS_MMC_ENV_DEV		0
-#endif
-
 #define SDRAM_BANK_SIZE			(2UL << 30)
 
 #endif
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
