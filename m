Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464DE3CFA2
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uJVHr7VcqT6VB3trx08NNaavzZ3dn6s8W+si1lpzy8=; b=OL3DieAnyIWAzJ
	0rUH39IwvShnQ6/fIwhGR9KvzmMu53eeLL+aWHWZr7NrAbbimj0+WnfzzhsALKi2cJn+bt0g2zahe
	cVXx3N60IrAKZJeHD92NjMG14v0suFugyKvTdKHU0QYHXRMwmdfz7RTrE/B8E3uv3hyDI1SJcOU52
	vnBIbJ6acEm1rwx+Sm/gaQCXMTY4d+bjHDC1DuF2yspRujZo0HbWmeFVqmJVdRk67MgQy+LJt72z9
	iEDrcQ56t2C/Z0qnqw5pS7fOBbo05NISc9QewSnAUCVkjxNgJGRDa8CLhf7WMvprfAeDRJtz3mVhp
	F/CH0ajjYk41I+ii5vbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAe-0005cT-A8; Tue, 11 Jun 2019 14:54:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAa-0005a0-1M
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so2615543plr.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H4/nKsiczNmGqfi/dZQpnKSiemWR24mun0ufWG0UjA4=;
 b=X7mbBQN414+FlSYBd3owW+jQ4MskeiaEFGkf794sOSff2aYOcbbP+1s6l6+QTSuOfw
 28JKlzdlO0ZyM5IH/1xsVuDgLkKggbY+uGubJ0ixsUj1gMqBsa9Wvqy/5HBNuZTk7coQ
 O2oGygJKLWWhkBm50tzt8/ys+sCAUbsYyPSnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H4/nKsiczNmGqfi/dZQpnKSiemWR24mun0ufWG0UjA4=;
 b=SOQ3BfV6iJkJOXs1hp3ML555lRuOMxlZDVGKXkaOSo0Vt81r951kKXHjZ8yTADeLVx
 7J6zaOitUkV0G6TNK7HM0N36Yu5A6ter12pgAl5VK2JcZfhMbZe+26bchsrsmfPDhJ2U
 QyCRNpUUQaMEtVmejjD/xtsHKYeWWG9BuLkFB2ULbsY02L3/UnC2TUlV/cGrX+OCT2C9
 HSYCW0OoNSwMVDX5XnoYWKnu5wOTREPx6w2xIZWQ3Wpqy+8bqhmP3fVU41P5bxpWRJxs
 dNNgMb4x9X4ZUM0XOpge7JChdjWjRHRyyREzISp5UXUqAdUtSA7zIcuUWOojQpr/eOix
 FuaQ==
X-Gm-Message-State: APjAAAXP1n3zz+Pn2QD0FP0VpsNtI7yJPOZdVLoDDKrBmpgUw3SUPH2y
 gPAYukeBxVjcP5YclQ4E5IISeQ==
X-Google-Smtp-Source: APXvYqyvU38hX2Ofo8uFBXDEhjL6uaycxUEnrij4GaKel0+MBXcx2KFvmNzGyIMhYdMHCsACJi38MQ==
X-Received: by 2002:a17:902:8b8b:: with SMTP id
 ay11mr76266842plb.63.1560264879488; 
 Tue, 11 Jun 2019 07:54:39 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 42/92] ram: rockchip: Add initial Kconfig
Date: Tue, 11 Jun 2019 20:20:45 +0530
Message-Id: <20190611145135.21399-43-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075440_121568_202459EF 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Right now sdram drivers in rockchip SoC are built based
on the SoC configs which may not be an adequate solutions
while adding common or debug driver.

So, add meaningful Kconfig options start with rk3399.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/Kconfig           |  1 +
 drivers/ram/rockchip/Kconfig  | 17 +++++++++++++++++
 drivers/ram/rockchip/Makefile |  2 +-
 3 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 drivers/ram/rockchip/Kconfig

diff --git a/drivers/ram/Kconfig b/drivers/ram/Kconfig
index fbf7d7b20f..568d8f2c6a 100644
--- a/drivers/ram/Kconfig
+++ b/drivers/ram/Kconfig
@@ -54,4 +54,5 @@ config K3_AM654_DDRSS
 	  config add support for the initialization of the external
 	  SDRAM devices connected to DDR subsystem.
 
+source "drivers/ram/rockchip/Kconfig"
 source "drivers/ram/stm32mp1/Kconfig"
diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
new file mode 100644
index 0000000000..995cb487b8
--- /dev/null
+++ b/drivers/ram/rockchip/Kconfig
@@ -0,0 +1,17 @@
+config RAM_ROCKCHIP
+	bool "Ram drivers support for Rockchip SoCs"
+	depends on RAM && ARCH_ROCKCHIP
+	default y
+	help
+	  This enables support for ram drivers Rockchip SoCs.
+
+if RAM_ROCKCHIP
+
+config RAM_RK3399
+	bool "Ram driver for Rockchip RK3399"
+	default ROCKCHIP_RK3399
+	help
+	  This enables ram drivers support for the platforms based on
+	  Rockchip RK3399 SoC.
+
+endif # RAM_ROCKCHIP
diff --git a/drivers/ram/rockchip/Makefile b/drivers/ram/rockchip/Makefile
index 5df196066d..07d4b62a9d 100644
--- a/drivers/ram/rockchip/Makefile
+++ b/drivers/ram/rockchip/Makefile
@@ -9,4 +9,4 @@ obj-$(CONFIG_ROCKCHIP_RK3188) = sdram_rk3188.o
 obj-$(CONFIG_ROCKCHIP_RK322X) = sdram_rk322x.o
 obj-$(CONFIG_ROCKCHIP_RK3288) = sdram_rk3288.o
 obj-$(CONFIG_ROCKCHIP_RK3328) = sdram_rk3328.o
-obj-$(CONFIG_ROCKCHIP_RK3399) = sdram_rk3399.o
+obj-$(CONFIG_RAM_RK3399) += sdram_rk3399.o
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
