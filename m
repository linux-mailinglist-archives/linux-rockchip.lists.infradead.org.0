Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBA71FF460
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 16:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrEuL7geY3Y53AdnWPvp1MIRyht1R2pvP+VFS672AO8=; b=rkMQcNhcW4e7eR
	oYUhOPnLygejiAgyV+tb52wTmddkeq1X3TRUExCO5BLvkgVSkiFqxW6OmdKzvACGvttiHPIoJARvD
	AkVn9ykOC0kASolZ/wlnQEjx6seoqxFNoEYA7pBUvCNTuAlOk6mM42po0iOBwGblGyQqRLvaqscCd
	dRSnvQrp0CA02j6LnsFP7Cmgi99X7OLXSVecGQXz+5JABugfnTR+PpWyWCE7HbRSEokY1myTQDHmK
	CPPSu4MOP0YDeooqJ5RrZixvrLvkCKQRF3R0YGSsfg2pWhu+QFx0z/6kH1oFLpt4zYeQ08tNym9r/
	JviSmS16DoFlsDOA8QzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvIO-0007MV-QT; Thu, 18 Jun 2020 14:13:36 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvIK-0007Kl-UC
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 14:13:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id g12so2481066pll.10
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 07:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aXo79YsDlYiUwbb10I7rIRjM4i7XWuzplBzXYRC5D7k=;
 b=Io2072NDuT7c66vZ1n6FndjQgELtMFGDIwFzi5lL+4iPvEr+QTiBiaCxHG9DDQeUan
 D/ZX2zYRmDoQuairl5i/4w7rVydpLC5Uf+MogmSXTL4begWYraTZNNWsjtt7xCdAqZh2
 6Mttt606jQ6fxncWu9APaW+0pK+BNpH8WuIhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aXo79YsDlYiUwbb10I7rIRjM4i7XWuzplBzXYRC5D7k=;
 b=XfZTKvP7laSf505LOkvUbPA2JvntCoW/0yNkuYBv8ciuK8YtzHVDffqbd9X+LVG6LN
 APYYgXwwDCgXt4lGz72TjhMLg91OAvCxA/o1ifEe7Cd5Z8qMagAXRmvGZxY9/+s4Bcc1
 VIItCKzNmpJc/JY33ZvsAIlyPDjJylah8Bdeu6kROP3Q56YBdM416TSQO8a5kJS2gaKW
 ifvCjtCRXcfkHEvwtdiv2bYcRarvEQ21D9rs2WnWvcuIJuXqUAztj1WEU+mwJo2qnfrO
 l6caVZIIOXvzXmZRP8w56YCXmBvK3jfLFIiqQbL+8MMsi4K7JvZEwk1Z4dCRBy+mQNS6
 X9TA==
X-Gm-Message-State: AOAM5309F4rij7+jSbeRy4cyWaE26cd//JEV6KUlAJVicmkbzMFmhnkv
 8i70oiT73uhXCC7Vw904bkeqbQ==
X-Google-Smtp-Source: ABdhPJwbMkprPUXP6XpL59HOS/fjraOo38UJ03WsVQhXJLeZ4DYsSegRJNcoQvRY7QRfos7Xl6jF6Q==
X-Received: by 2002:a17:90a:dc0f:: with SMTP id
 i15mr4315734pjv.221.1592489612365; 
 Thu, 18 Jun 2020 07:13:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id p6sm3340540pfb.152.2020.06.18.07.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:13:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 6/6] roc-rk3399-pc: Update ENV offset, size
Date: Thu, 18 Jun 2020 19:42:59 +0530
Message-Id: <20200618141259.155581-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618141259.155581-1-jagan@amarulasolutions.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071332_987544_B6414327 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Adjust the ENV offset, size to fit into all images
on 16MB flash.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- rebase on master

 configs/rock-pi-4-rk3399_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 0d86fdc895..2487872219 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_ENV_IS_IN_MMC=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MISC=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
@@ -35,11 +36,14 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++--
 configs/roc-pc-rk3399_defconfig           | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 7906948374..595f052cb7 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_SIZE=0x6000
-CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SIZE=0x8000
+CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 046fb73858..1c4db3443f 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
-CONFIG_ENV_SIZE=0x6000
-CONFIG_ENV_OFFSET=0x460000
+CONFIG_ENV_SIZE=0x8000
+CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ENV_SECT_SIZE=0x1000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
