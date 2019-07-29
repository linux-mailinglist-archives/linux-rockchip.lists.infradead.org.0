Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E9786A1
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsyByLcRrK/+lNnQeoUwJbn8lVtknzOvrDKZoAlzKVc=; b=eMgY2nGBc2MsMn
	C5aUlFBK9RdREIVRZYeQRJQvcncNG7BYPeffpi95gR+yLjaDadH5b3pbR5+RhFDdUb9/TQ4Hox9yN
	uKKr7BcXTIo6UciYB07EccrJ0a8oj4aBDixu5F/c5sbMfXmKLadQFBvfZfN36PtvZrrfwKHjmsB5O
	T26YSFrFoVDjiRM1AbXma/ADh959vTeZ9f+fMPBUs+u7UfXBGDyIxxr5zwa59uRhKrqQQLGDbj2va
	bvlraapqHDuGFuKzbHjH9aU/enSx33dYC5zSVZcsg5TYeV6wV4S3TAIal00AtuQnFLaq4x0su6rkP
	gfwuZUPbr7I4mDpsrdgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0OA-0002aa-IY; Mon, 29 Jul 2019 07:48:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0O6-0002PC-Qj
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so27808207pgi.6
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w/x1ZiOCvrLzZkcwYiaPJMQ1HnVFDjCbF32VbqVbBMU=;
 b=hNnQNwS+ajw9+D1H7wHZAtdfL5SMbBkU/Qgs28PaoSrgqRGfEu6Ax4g44UaOnP+5Xt
 k0al4FTF/WZUBqwUFz8X+D99vi+8u3O6/sSM9TV9uTMVrEatA0B7WxfxOWAzctWa7Ghh
 k4/rhQEF4ewYcmQqQM8ndtVjt+CbYu5ADrh0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w/x1ZiOCvrLzZkcwYiaPJMQ1HnVFDjCbF32VbqVbBMU=;
 b=HbOYoDcnWdxsyn8SEOkyFBU6uzY/ap9gwHkAYyk4ddZEu/aFr1HdWSgX3SjwQZL0/y
 faOjZVMBb74NSHmLvVSk9+0tM9KW/+66iy3+loUX6gVgOdZ3ewSgE+gT9PJYnbO0l9Dz
 au/YOpvxi+0ZbqtE7Bi866+2PXn0ojkWlkxrKMjW7tOZMxXg/9RoWejB7+SlYW1E4Cui
 ACD0aESBVZBmvLG3+T3arDvXb5RFHz69+5TQDehW0aAfwqpKNZbQjF7lclV7ylXOp42F
 TczVgCeQffUuA/TgQ1d8CKNW2IBjQIIlZxXIbhTJGMG8oWwQ8M3HPEEYIo7vWPNQqfi6
 IP8Q==
X-Gm-Message-State: APjAAAWj4CiUTJGRSxAYyUPkHKwirv6fgq9pZLfStMaVlQc8TvygO75g
 gNWv2yV0TSSmk429NvWRTd3nAg==
X-Google-Smtp-Source: APXvYqxv7cFXQ1ZgceANlFkUet/grzfVRxMDJSC2bH5U7+FGvV1jqlql6Ub5rLS7VVcPZCwAqh0hPQ==
X-Received: by 2002:a17:90a:ac14:: with SMTP id
 o20mr112030960pjq.114.1564386486303; 
 Mon, 29 Jul 2019 00:48:06 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.48.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:48:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 11/15] wdt: Kconfig: Add WDT_DW entry
Date: Mon, 29 Jul 2019 13:17:07 +0530
Message-Id: <20190729074711.16988-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004806_893251_245AADE2 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add Kconfig entry for CONFIG_WDT_DW, and it indeed
depends on DM WDT.

So, it can be avialable on particular board defconfig
only if they switch to use DW driver model code.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/watchdog/Kconfig     | 9 +++++++++
 scripts/config_whitelist.txt | 1 -
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index ee0ddffe73..0b64298016 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -100,6 +100,15 @@ config WDT_CDNS
 	   Select this to enable Cadence watchdog timer, which can be found on some
 	   Xilinx Microzed Platform.
 
+config WDT_DW
+	bool "Synopsys DesignWare watchdog"
+	depends on WDT
+	default y if ROCKCHIP_RK3399
+	imply WATCHDOG
+	help
+	  Say Y here if to include support for the Synopsys DesignWare
+	  watchdog timer found in many chips.
+
 config WDT_MPC8xx
 	bool "MPC8xx watchdog timer support"
 	depends on WDT && MPC8xx
diff --git a/scripts/config_whitelist.txt b/scripts/config_whitelist.txt
index f2453728c6..47e42e680a 100644
--- a/scripts/config_whitelist.txt
+++ b/scripts/config_whitelist.txt
@@ -323,7 +323,6 @@ CONFIG_DEFAULT_IMMR
 CONFIG_DEF_HWCONFIG
 CONFIG_DELAY_ENVIRONMENT
 CONFIG_DESIGNWARE_ETH
-CONFIG_WDT_DW
 CONFIG_DEVELOP
 CONFIG_DEVICE_TREE_LIST
 CONFIG_DFU_ALT
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
