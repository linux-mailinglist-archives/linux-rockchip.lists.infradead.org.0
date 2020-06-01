Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE93E1EB063
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 22:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTRFEayd0jPhSRwrKw9cP5MVeK55woBplgYbzjJsAqw=; b=Ze5Lr4OCnxdMTV
	ROYZTLZnTTgJQFzUdc+6Gbp4pbgLbjpvInthVHGBrqQOM3O360KLrwBuJtNWMt/0hyhtMEt0unkFS
	rE8SiQyqb8ty/LmCHVPkWBZ281fLSHcUgL/zYYXqwA7rtNeTdsinHRfEm2rV1eHgFIUK2j4FdKYJ1
	m0EXeiKyArizb3tRf8KrCTTQUGG27IIlun+pp1FQk7+nSxPuOgqMTbRVQG36zQLwPG96TwGoYlkAp
	JfNBWfQCncY84+PtNzZCuA1LXmRijrsjyEDngH8rtjy0sZMWydRwmAcH6/12u7zIUeNau5+NugA3c
	n44wXNEPJyGU46uMsCxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrGf-0002R7-7v; Mon, 01 Jun 2020 20:42:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrGc-0002Q1-Is
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 20:42:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id p30so4012787pgl.11
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2020 13:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1663iTZ5e5aTWKWbP4uDTDzqUziSAFV8rcNoh8d/2XY=;
 b=YVRUBa8VLFcring4Q9OTAcifWRq5ezx9f0FriaaHlzT/si0ndG5Kr7cLm5D3ZgpGDn
 fwO8b7iG/P4W6qFt6tI85yb5gGsr1FG8Gda6nx3wFKpTiVuPCU6I3PhpCbKynprLKBvd
 2Y1emgn9cfGd6Qlr+f/AyNX+5abzQymAksOeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1663iTZ5e5aTWKWbP4uDTDzqUziSAFV8rcNoh8d/2XY=;
 b=PQJ5TWefYHKAkuM9NnYO1UmR2YqOUlVXbvGLc7hIOcMij80AC7sOipjYque1LFIE63
 gl+49EJCq07jHpVLgN1iPKH1gwhh52ndE+x+WixvkWmFCrsfRJVz1DtHLtvjsbwEfcFs
 93P3POfNUcnNMGusur6OZbPgi3RedViUHE8RR5ORnhcj2TjSwHOPMYU1ZdqZqb3lCcKP
 kWaB9V3klkQroCei9Uu9YHpRJYfybUBdzM4QkJ2XsRDkWPsNOOU/9QJPPO9NqL1JeFR+
 rjeJuT+qDXTGxGkLUUcq8C39EdIcxrZDgnssZcD/859i4CN1SGKQWl6YcrDQzBus9M/w
 QS/w==
X-Gm-Message-State: AOAM5319QysZhEykksDhFixJ6jk/PnJmKSFNP+kArWRMLS5kc/kNdWUl
 4HMn7C4hEcYmlCjV1x/qxawC8A==
X-Google-Smtp-Source: ABdhPJxe4dPxUS5yrnZ66P8Rk0EWTAnZfjkj4n6po76yv47vCBCNFifOoTE6KuUTjVI0zC72xtDeuA==
X-Received: by 2002:a62:1a45:: with SMTP id a66mr9533075pfa.54.1591044161735; 
 Mon, 01 Jun 2020 13:42:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:658b:ecbc:7ea4:1996])
 by smtp.gmail.com with ESMTPSA id k7sm283581pga.87.2020.06.01.13.42.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 13:42:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 2/4] roc-rk3399-pc: Mark default env from SPI
Date: Tue,  2 Jun 2020 02:12:11 +0530
Message-Id: <20200601204213.466120-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601204213.466120-1-jagan@amarulasolutions.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_134242_627117_D2C55B60 
X-CRM114-Status: UNSURE (   9.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/roc-pc-rk3399_defconfig | 3 ++-
 include/configs/roc-pc-rk3399.h | 4 ----
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 76e76c160e..18c343f9f9 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARM=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_ENV_SIZE=0x8000
 CONFIG_ENV_OFFSET=0x3F8000
 CONFIG_ROCKCHIP_RK3399=y
 CONFIG_TARGET_ROC_PC_RK3399=y
@@ -24,7 +25,7 @@ CONFIG_CMD_TIME=y
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
