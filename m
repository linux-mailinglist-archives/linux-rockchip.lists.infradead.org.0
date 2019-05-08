Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177EE17341
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QQnm6VbvHW3envSjTajgqFVk27XeA5vaC/xUVCJspM=; b=IhvLnaW79FItpD
	QkaNh2l7342enAJRuZGA//IakfSQntpft8Cy2/yQAOdicS/zc3Quw5MGX3Rq26VM/bvcnCMErDrpc
	9CMO6Om8Zg027pEvSZSix3XEqgUBF8waCBpsoCjFq3z31Th3cB63lKqBO3WMQ7XpKGdPCZF/b8ZFy
	5Keul4yBnFfPt6MY3wugpIBqBeJM06LAwawcuw3zCiB+GBjztPeG9ooYe4r+xb6ZyNEOBe0P8l994
	CMko4WWqNO+WR6uoZJHG7laPS/SltguVkhF8xl6lbojmfLLD2MdqdWcxFr5tIVWLPGY+RBPqsJYeX
	W2sSVVfbJNnnktnYlCwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHdl-0007UB-34; Wed, 08 May 2019 08:09:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHdh-0007LN-Lz
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:23 +0000
Received: by mail-pg1-x541.google.com with SMTP id h17so3726162pgv.0
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iJdc+LE+goLm9GBcZ8RQa+EHlJZSHEiVDu4uCr02hoI=;
 b=n3/IuhFAgz8feXcEmlmqryodigt42wQi9dE29VtRdtExo7nlV5pQI2RQU5Pq6EBP/+
 2u+CdGJQpOWhH6CJ99H2sif+/Zhl+Z1SfNPF87rEjwEKd5EodTzqPutUInSK2h16sfe4
 xq3VdJyV9lMTkw4PBDuucksdYWYbhvoiSBFuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iJdc+LE+goLm9GBcZ8RQa+EHlJZSHEiVDu4uCr02hoI=;
 b=g+B5DmpK5ROvAGDt13/TKIKXRxyDndsly/ZnPj8tE5WPB5z+8sQBvgqdvtWb7dfeRd
 AoJCO8pE2cbXn+EGDuFOW7iG0B9SG3AHq1zM0FDNl2AcZ6Dlj6/6K7peRfWa+b6yJsZC
 aD+RT7NTDA+MUXE3cuVBIURLonMmEX/QA6HTknJurqmK9FkjxR8TVYRYgq8EbyDHFzoV
 quzBjD9NSReKsZTODbZDOGY8aTzuuggvjcC9ak6V5mcy5XaFKPXew2vE3axJbuLmU7bG
 aaIv2tHUIuYTbqtkCehHdV0cpLOrzYoTrlhcAqBg3gm7PJnEVp1kC8ApuWFjx5fL2fbS
 R1AA==
X-Gm-Message-State: APjAAAUwQ6TtHdggfvgUOfSv5QBjb2/yMYxdm87czPVXBA/29vMvrSvY
 DqiXtEle12Gs9n9Ew/WXP9T0aQ==
X-Google-Smtp-Source: APXvYqzJ07wIUx4Mx7ukY04yOTgrSiPj8KFjM46O/pw91xTCmFDC4v2e4aKgzOh/8s5eRkuNx0dOTg==
X-Received: by 2002:a65:6289:: with SMTP id f9mr7382176pgv.380.1557302961010; 
 Wed, 08 May 2019 01:09:21 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 1/8] board: rk3399: Drop explicit uart enablement in
 spl_board_init
Date: Wed,  8 May 2019 13:38:57 +0530
Message-Id: <20190508080904.1567-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010921_755822_83EBD40E 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
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
