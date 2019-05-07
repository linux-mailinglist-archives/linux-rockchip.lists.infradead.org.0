Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A7016A4D
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=unYekQz+I0M61yAXDJ1K4CW61BnnqtNXqP8bno8MbnU=; b=C7osCCy2ChlriG
	dsNlFzgNaByX4F3WmTYfF2S5hZods3brN/UFp+6576tD5FkKD+Ic0n2kyJTiHcADxrnNSDHosFwyc
	zIixV8oinzlCcGpx+drp4msV9kHn+itYX9EoauqHkv3R434ryOYJZbGn1kvBy2p0Cb1ws9FLczpJn
	eyFucdXnzXALfYOLeUDjUuRH6kbrEO3wrlhZk+3j+L3FALjx28tHLhQF45atoAq8Is6Cl1F5MHO9c
	LAckAJgWf4L8Y8HFcr7fh5YeAZUSZGRYwly9God8wYL68FnM4EtogudhnHSoyO7ehOmGW2hL+3Z8e
	191+4lGe+ugyQ8N/++zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xN-0000zZ-MY; Tue, 07 May 2019 18:36:49 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xJ-0000wR-9P
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:36:47 +0000
Received: by mail-pg1-x535.google.com with SMTP id h17so2755885pgv.0
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+FtkbiE7ILrLDKaXBSUxs5LtSeKhIp9HEJjTT9DD0dA=;
 b=rVCppObwUKhytyQRGODnXqhH5jAgGkxFcxZ8ma307xQ5Hq6D0NnOig9jP5Ba2ncEZf
 V51EMouM1rOFKeXlrDLGERupcCdUfW4OazdjV4sEC+aMT7IspMSkxrc1wfWlEjcjRTce
 pM/q6fURLoXbIM2ZuQbaJEHMKgdf1rUvDhFEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+FtkbiE7ILrLDKaXBSUxs5LtSeKhIp9HEJjTT9DD0dA=;
 b=JCj70kc9PIdji6aD02mCDt7EIVvNbq298yI7dLJ1byX9JVwGfoq+CCUg5H3s0qXfh5
 ZfKzKUeRX0i3RaNbak60rNz6r9REq34lEfBrAtlGoauEvrTQHUUQRq/TgC7AqCE2gRXy
 h5+Xrznh4K83BbjkjSiNhCk/4vdRNX0yFo+79lsXyCiXVmLga8mAqGwPMaz66W6Sp5+W
 PE8zC5bZV8pHWDyjp4gpgMV1C3zY+ySEeQOEgMG/9oFrvzvEdg9vM9/cKq00DmiGEbRk
 gdrzH41xIDzsaSMKGwP/tkz7zbVV1Fshgbw4U7Kp8yHDxVo13lAi6Q/eRcAN2tP3zqGI
 FZ1Q==
X-Gm-Message-State: APjAAAU1eya5PRvUYCLQEM0TpB5M5xhuUjjcHE6J0bKOjS2qGYUuUE0p
 1ZXoGGHtGOtfhxx2QpWyh1x5Mw==
X-Google-Smtp-Source: APXvYqygi/RaQOprJ3P2uOsgV4PY1qr5r4NMQCvV7DD2NSFiUjrpJce9IFyTWR52ypabaxCzlWkEjw==
X-Received: by 2002:a65:5941:: with SMTP id g1mr41411702pgu.51.1557254204438; 
 Tue, 07 May 2019 11:36:44 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.36.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:36:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 02/11] Kconfig: Add default SPL_FIT_GENERATOR for rockchip
Date: Wed,  8 May 2019 00:06:18 +0530
Message-Id: <20190507183625.5983-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507183625.5983-1-jagan@amarulasolutions.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113645_327855_F2B6823A 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add default SPL_FIT_GENERATOR py script for rockchip platforms if
specific target enabled SPL_LOAD_FIT.

So, this would help get rid of explicitly mentioning the default
SPL FIT generator in defconfigs. however some targets, like puma_rk3399
still require their own FIT generator so in those cases the default will
override with defconfig defined generator.

Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Kconfig                           | 1 +
 configs/chromebook_bob_defconfig  | 1 -
 configs/evb-rk3399_defconfig      | 1 -
 configs/ficus-rk3399_defconfig    | 1 -
 configs/firefly-rk3399_defconfig  | 1 -
 configs/orangepi-rk3399_defconfig | 1 -
 configs/rock960-rk3399_defconfig  | 1 -
 7 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/Kconfig b/Kconfig
index 7a5491bd67..91c1082ace 100644
--- a/Kconfig
+++ b/Kconfig
@@ -435,6 +435,7 @@ config SPL_FIT_GENERATOR
 	string ".its file generator script for U-Boot FIT image"
 	depends on SPL_FIT
 	default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
 	help
 	  Specifies a (platform specific) script file to generate the FIT
 	  source file used to build the U-Boot FIT image file. This gets
diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
index ce07a7f0ff..bd836acad5 100644
--- a/configs/chromebook_bob_defconfig
+++ b/configs/chromebook_bob_defconfig
@@ -19,7 +19,6 @@ CONFIG_SPL_SPI_SUPPORT=y
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index 5bb910e8d4..94963e4280 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index 79da86b32f..926d244fbe 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 301b27e3a4..5016fb8993 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index ba13976cc6..22ddd8dce3 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 8d490be18c..48d14ef7d8 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
