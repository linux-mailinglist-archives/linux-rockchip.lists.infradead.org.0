Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9541FF45C
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 16:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5H3pU2grL7C5uLAoIcvmoQqdIAYH77twc/XeGfJ40+A=; b=LILsINP1dDkNcs
	wJMM+efeTvkEUucjRo/V2s6MgNUSYs7Zo4Bs8HIPAyOlSDT+acUpdj3TP4doWJThZO14Oa5I0R5Cc
	7/PmoGzkGaMQM1u4Q8mutgOK4U1xJMykEDxHFtZ20vJskJQL7Ild2HsHcz2L8NuMTUFS8KqlXT6ew
	+28tpgMpJ9oeA3NSj/5cFlKl2dPkN7YNCL6C/yyR0V2T25YbxebLdJd7AxAUjt5rnPDUZCYB9/2J8
	XLOmpWPikgAwqSejeVJRmYsIOzr19s5DOnOe24gHhWLuSX9T/tBEq0GkVGTsF32NLIQqtUMw5qbM6
	heDaKmcQSvQvKRkp36Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvIG-0007GC-2o; Thu, 18 Jun 2020 14:13:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvIB-0007D5-No
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 14:13:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id h185so2857848pfg.2
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 07:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=90vwOvCco40Gnk0eJo9AhM52bhiGkQhRL/rtXtdVFHU=;
 b=VOMyn24PLs38HyWPxyeRCZc6gREntuUQZYCjlZsHKosCxJLY2uSsSi2TQFiZI8JVcK
 y9e/9gpouAyYD1vDBhAocNpKJoz1IMZ6poUjYGIfXMHEA3BxsQaWqoBrowYZLbuWl5TU
 32Mv4UzpyDFWXPKhgsli32oEop4RgTjQhb+RM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=90vwOvCco40Gnk0eJo9AhM52bhiGkQhRL/rtXtdVFHU=;
 b=tCIFqwRuI0jA2/OhMaWs9Je+bwZFb3nj+7HPOXX5/iI1+apm/DarHL5IYKPb+YNrVR
 y0nIi0PZlS4NL1H7K3aETXgLflMkwWX5+Yxi1aKwd0b4Lsa8q4W2+dcffzTqXFF67INt
 80LuvchExYNYgfGET3QWE/eCU6dDczzIwtIN+vCHYsynp2yHnv/5w00fXyM51kuhY8KS
 Jf1nfWn5C+99gF64ZVd6JkdRBCHIrhcICI0SyCzwkvfK2hTDzP1IDL4LqQvcH+S3zZg/
 FHySbLpdJwEdL7yKAcVu5/AE8ZLITWCoLqU5+9HLYFtj6pwNjE/Chm82CznijgnT6u6E
 VXEg==
X-Gm-Message-State: AOAM5300F1bWoSjHTsZpldJlhxjSif509u+iO6m2WOyKfFDf6CtwUuZK
 LHFt+Pr67VsYsH3zbInHVE1jrQ==
X-Google-Smtp-Source: ABdhPJxppIrL7jvcigiG75PhjQEagCOE7765JOq4VrWmGDiSiOcAg961OwtHy58YoIux1Cb3MDs2Ew==
X-Received: by 2002:a63:e455:: with SMTP id i21mr3545873pgk.23.1592489603145; 
 Thu, 18 Jun 2020 07:13:23 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id p6sm3340540pfb.152.2020.06.18.07.13.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:13:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 4/6] rock-pi-4: Enable HDMI output
Date: Thu, 18 Jun 2020 19:42:57 +0530
Message-Id: <20200618141259.155581-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618141259.155581-1-jagan@amarulasolutions.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071323_784776_7343D9CB 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Enable config options to get HDMI output on RockPI-4 boards.

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
 configs/rock-pi-4-rk3399_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index a4b322074c..98f71a50a5 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -58,6 +58,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_USB_KEYBOARD=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
@@ -65,5 +66,9 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_DM_VIDEO=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
