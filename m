Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFE51F1EDB
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEW3d4iOAqr7zUmqI7M6JcuC9SoSv5Vu1/+vFvsgkxU=; b=R9Hy/vQ/OcngUp
	aLp4eqsewxAHtQVMaO1UBkYyY+1fs3zE7xA+RN7DtGr0DUiV5x0vmd45cWpdnAyQLg91ogK0u06lb
	zMrX1chFSZyMokqbYM27QbE0RTMdlnYfc0RNjVt2JRY5p9kGgBxhIr4+P3Q2hndp1SIH9vpIDsqch
	PE7g8ruMi6y/qAXJjByxxx+9GBoSM9eh0xpLM5NjmWpjYiMPP6sYqDeg6+ypeNmq86ei+nIbHsJjf
	170VL6B2lncGTQ77Kju97ivyxpINicLA1CoblpKDg+LmFka0hCSlOcdGt8yTkGomTbwB/lBIZNi/w
	euGabOOr6kgXu2EGpv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMKz-0002h8-Ub; Mon, 08 Jun 2020 18:17:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMKw-0002fl-Hp
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:17:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id o6so9132909pgh.2
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bQNlycZ9vokq5UGlruxRZJSdM1/o76P/8ylJFTjzz5Y=;
 b=BqSAR8s6Xyp+rWNpCDBKnKmRi+eIbmPkSP820A6gE1fF6//bhjOGJBrMA1hvL6x0g/
 4J24k+przaLVg65w3yQvGNs6k5mB83xfRlOIfMyemEgw1c4GDL/e1Uva3SuPVWLys4Dj
 Eb6GtswWlbaOX+LNHv/SADBqafd5jJo7K5xLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bQNlycZ9vokq5UGlruxRZJSdM1/o76P/8ylJFTjzz5Y=;
 b=aCIv9thEPaExpVR00gLUvNER/TAFLKGWR8FrlphIkbCznMEuai/GE7bmR7tguZo4MZ
 DjYz6/82fNya3SStvje3ZAjcPb6PgDFha7Iu99culgXYPwLCvOTkAQNnPrkm2GluYUMr
 W1aJr0Bz3qhC4Vxu3R8YHwH/eOVcz9k3sSYx+6GACXyQSvkYSk4/5Ru0SbgKayhSMwlA
 7cyVmgpoYrrVqpwHVbOdOurw/g/qOx+FAOzV6eSEH2lxRIT+Znf1Gzx0r6Xi1J2QBulV
 pglgY3khvQbumUuSDPYVcHAdihv2CzG0sZ6vK1mUceeKAsm/N6U9XARIPcuUt1UOvEVc
 6dBw==
X-Gm-Message-State: AOAM533ZvvBlOxp/qvvIzRdIZ+hAxLxOvKb7OVxb04AgS0TwjyQ/f7fQ
 sTCZoezfTcSA/vVvuHY6kv15fg==
X-Google-Smtp-Source: ABdhPJzCP7A7vxDgUsupIbzY9UZ0eK8ynFpJ0tFS+MocyPEuYqmvkwO3iXVuRpS5WOLeGcd+WfIAmw==
X-Received: by 2002:a63:4a1d:: with SMTP id x29mr20750552pga.53.1591640249774; 
 Mon, 08 Jun 2020 11:17:29 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id t7sm180213pju.42.2020.06.08.11.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:17:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 2/4] roc-rk3399-pc: Mark default env from SPI
Date: Mon,  8 Jun 2020 14:17:06 -0400
Message-Id: <20200608181708.17842-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608181708.17842-1-jagan@amarulasolutions.com>
References: <20200608181708.17842-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111730_590745_170997FC 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
the U-Boot proper has starting from 384K.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v4:
- adjust env offset, size

 configs/roc-pc-mezzanine-rk3399_defconfig | 4 +++-
 configs/roc-pc-rk3399_defconfig           | 4 +++-
 include/configs/roc-pc-rk3399.h           | 4 ----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 1c1539bcb9..9c6fd0c98c 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_ENV_SIZE=0x8000
 CONFIG_ENV_OFFSET=0x3F8000
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
index 76e76c160e..b225eb38fe 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_ENV_SIZE=0x8000
 CONFIG_ENV_OFFSET=0x3F8000
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
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
