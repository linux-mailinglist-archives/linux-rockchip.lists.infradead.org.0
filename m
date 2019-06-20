Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B454D9D4
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QQnm6VbvHW3envSjTajgqFVk27XeA5vaC/xUVCJspM=; b=Qx7Y737BPQ9bIC
	MZrntsK1+oT6NaNQxeWaKjEn1YlQ0WYGyzoPEC4DFPby66V59cNnuHUIY/V+dGHmQERQ4fHnQsjZa
	ObkGotItWYiyin8j5xg+FBKVvqeCqRKt5x/l+j68vCUf5WS4jwv61n0CXV4A6rvtXqrcW4eUbdTf1
	mi459s+0B5YHF8+g0TG+el/msUNovKL+IesWrU2svw3wq6tXnebLu/Ygqghoic3YLvF5VZr64CgH/
	Rd7eU6+Yl+oVVaV8Wzc54d1NZNUr2sN5+Xarxb8A71G5btyAFiczT6Kld3yN0up75irB1BgfNEfDL
	2luikd4/DBSPBVowt43w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2DX-0002ox-9h; Thu, 20 Jun 2019 18:55:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2DT-0002n6-CQ
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id 81so2150343pfy.13
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iJdc+LE+goLm9GBcZ8RQa+EHlJZSHEiVDu4uCr02hoI=;
 b=lh5IPRX3X/If/l6Bn0jHcl1AZh8H6eMoqpNQ8klq8sWjj65UuOWbrhk4eLr2pueJ3G
 A7S4pyPPy68tX/J7sO+29bFRe5fVbbZI0ANfnsZuNqKhdhoDb3xeXWDfhKX7YpZUbati
 Il//sfBH8CXVAk7+F+sJPWF3xoEmKmnSGN7Ic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iJdc+LE+goLm9GBcZ8RQa+EHlJZSHEiVDu4uCr02hoI=;
 b=T+6OzMiSEm5KNbzEV92aJda9eA4okaGIr3+W/LDW5Si7714d0jVc+44eZygV9TyQLt
 Op7sY3cuqUz0mifuNvCAym+JQmr6Yhf9URo9T3SJtpc4tMxs+V3nJDnhTeXcNsQES24d
 XTOC13CMYlvjiD89chHglFXIS5Gfm5pEudS7sHzCeXMPlEpqM1T27c0FG9gdPm8j9QoG
 z4UEa2Kdkh2y764OxZoHoOFejLLXvEmnXB40oe00RnMad4FlrHhC4OMeELV4ov6qM4Ub
 VlXbvsl5JdNzEvXcMdbB6w4d8kzJ27fSGeiiR5/46UXXywKN0oIvtxCoAJLUrmAc/fd6
 2X3w==
X-Gm-Message-State: APjAAAU0KVHIFOIO6mNqIlNgHAS3q+7GvWZ0pu+xw/ksHGlpaoL5msS8
 vg1qWj+uQKGi/syjQUUNBRhygA==
X-Google-Smtp-Source: APXvYqz+L1k6UWHqeqYARj8hU6pjivJYV5tKYRdwW4tW/a+jLsSTR2ca+ylh6UybN8EgNjgyO3sr5A==
X-Received: by 2002:a17:90a:ad93:: with SMTP id
 s19mr1184079pjq.36.1561056922773; 
 Thu, 20 Jun 2019 11:55:22 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 1/8] board: rk3399: Drop explicit uart enablement in
 spl_board_init
Date: Fri, 21 Jun 2019 00:24:59 +0530
Message-Id: <20190620185506.11449-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115523_422519_3B72CAAC 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

preloader_console_init is used for printing SPL boot banner that
usually called from spl_board_init.

The current spl_board_init in evb and rock960 is enabling explicit
pinctrl, debug uart prior to calling preloader_console_init which
eventually not required since board_init_f is already enabled
debug uart.

So, drop those explicit enablement calls from  spl_board_init of
evb, rock960.

Tested this by enabling CONFIG_SPL_BOARD_INIT and adding
u-boot,dm-pre-reloc property for uart node.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 board/rockchip/evb_rk3399/evb-rk3399.c      | 23 +------------------
 board/vamrs/rock960_rk3399/rock960-rk3399.c | 25 +--------------------
 2 files changed, 2 insertions(+), 46 deletions(-)

diff --git a/board/rockchip/evb_rk3399/evb-rk3399.c b/board/rockchip/evb_rk3399/evb-rk3399.c
index bf2ad98c47..769b5d146f 100644
--- a/board/rockchip/evb_rk3399/evb-rk3399.c
+++ b/board/rockchip/evb_rk3399/evb-rk3399.c
@@ -6,7 +6,6 @@
 #include <common.h>
 #include <dm.h>
 #include <dm/pinctrl.h>
-#include <dm/uclass-internal.h>
 #include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
 #include <spl.h>
@@ -68,27 +67,7 @@ out:
 
 void spl_board_init(void)
 {
-	struct udevice *pinctrl;
-	int ret;
-
-	ret = uclass_get_device(UCLASS_PINCTRL, 0, &pinctrl);
-	if (ret) {
-		debug("%s: Cannot find pinctrl device\n", __func__);
-		goto err;
-	}
-
-	/* Enable debug UART */
-	ret = pinctrl_request_noflags(pinctrl, PERIPH_ID_UART_DBG);
-	if (ret) {
-		debug("%s: Failed to set up console UART\n", __func__);
-		goto err;
-	}
-
 	preloader_console_init();
-	return;
-err:
-	printf("%s: Error %d\n", __func__, ret);
 
-	/* No way to report error here */
-	hang();
+	return;
 }
diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 0f5ef3a09a..018e4b55b8 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -5,9 +5,6 @@
 
 #include <common.h>
 #include <dm.h>
-#include <dm/pinctrl.h>
-#include <dm/uclass-internal.h>
-#include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
 #include <spl.h>
 
@@ -24,27 +21,7 @@ int board_init(void)
 
 void spl_board_init(void)
 {
-	struct udevice *pinctrl;
-	int ret;
-
-	ret = uclass_get_device(UCLASS_PINCTRL, 0, &pinctrl);
-	if (ret) {
-		debug("%s: Cannot find pinctrl device\n", __func__);
-		goto err;
-	}
-
-	/* Enable debug UART */
-	ret = pinctrl_request_noflags(pinctrl, PERIPH_ID_UART_DBG);
-	if (ret) {
-		debug("%s: Failed to set up console UART\n", __func__);
-		goto err;
-	}
-
 	preloader_console_init();
-	return;
-err:
-	printf("%s: Error %d\n", __func__, ret);
 
-	/* No way to report error here */
-	hang();
+	return;
 }
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
