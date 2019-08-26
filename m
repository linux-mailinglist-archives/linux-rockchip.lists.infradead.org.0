Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392629D5B6
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5Wdd9bjvDiNCSPioCgBNH5QEu4v3/6tWnYyBH+w+w4=; b=gezZgMEiFVpRrn
	pp7rYha/vnauIDr8/FThlHnWV4RwiHrwBhYmfdE0jijIt6VkOVJzB0dQdJaxlhkf1jeg7dM/3yQrM
	tsd5W9Jk2J4zbCU7PU95Ty+MJ0A/2e9Albc4U0m2hNf1jpLg60bsi4/kFJ3E1J7D3ZM5Cl4HktcqF
	8+YgYBS1IICZ9yU/ie4r1gINyhQprGs55GE+1HwggDygmnSaXCp9Gcm0GRYthv07UWbBGUHhTO/6V
	zGK8MgnEY7HcSXrNtHcPMirW9yykj23IgKn2UZU8Fj7AreyjF4coBIWDEvdAli6YtK8tVuh21E6Em
	VUpEhXbPGa+7sZdY5dGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jck-0001jI-5v; Mon, 26 Aug 2019 18:21:50 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcT-0001Ry-3J
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:34 +0000
Received: by mail-oi1-x243.google.com with SMTP id k22so12850529oiw.11
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=48tbCTA8i+mDb23wmOG8QXjh+G13bWj85edFBbAfgJQ=;
 b=GvsaNMabOTWPOC51tHnKMXIrjShnRR+Lz4yEdMxwGIU2AF5JyIfDeJue3KlVLGpElZ
 suykasXctTIXiyzQI6D0Fb1e3QZBFHnhtn7h7/Ckv/dTjyZYDtWj0kMaUyknHpVN7jRk
 qvWXnm7xu2EL0F6MGZCRxYx/9KWDEKJXXddQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=48tbCTA8i+mDb23wmOG8QXjh+G13bWj85edFBbAfgJQ=;
 b=itRgB7CXLLpsh0CBjjTUFIUZmBTQ1P2ouFtM+G/csMtfmeCDKX5zSu924yfbT6gZGK
 Krq7kFBC7lw5DCoJGckiDCFFVrwzM0b3rLV7kPyhmePl+UyHI/6RWHlcOSfukrsNfdhP
 mnt56BtPHXg4rADDKAPc5IsUtlBi+tMu64Y9T511sajdt2/m0OaqDziBnP6Bvtv6gM19
 xWnWLt5q6cGPUlw4JRVD8lfffuyGepD83QBU8i7fef6hZPxSPrxcYTcr1RCDpRjnzc5F
 XEKjWejog3pxo9QEqWBvrnXt7bToL01iEHMa47T2iPyuQfjiqYRwEy65nntlLSZelrA/
 lurA==
X-Gm-Message-State: APjAAAUoibJXFhi/OgKTtwDDR9EsHphOJaZAyHR+b5Qv0W22Pmvlzhzb
 VFx5//xdiwimY2hi0Y1H+Pu1thYXGRU=
X-Google-Smtp-Source: APXvYqwDaedTA354vWs9CbCQbLulE0vUAJmOqMxsM3FN7ZGQ2JC5MCNCU9IpEU8C87sRxMIJXF2BAA==
X-Received: by 2002:aca:4dd8:: with SMTP id
 a207mr12806037oib.115.1566843691996; 
 Mon, 26 Aug 2019 11:21:31 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 10/16] wdt: Kconfig: Add WDT_DW entry
Date: Mon, 26 Aug 2019 23:51:05 +0530
Message-Id: <20190826182111.30999-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112133_147718_7E6A5E4E 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
 drivers/watchdog/Kconfig     | 8 ++++++++
 scripts/config_whitelist.txt | 1 -
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index a66a9bcbe2..8674633b90 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -90,6 +90,14 @@ config WDT_CDNS
 	   Select this to enable Cadence watchdog timer, which can be found on some
 	   Xilinx Microzed Platform.
 
+config WDT_DW
+	bool "Synopsys DesignWare watchdog"
+	depends on WDT
+	default y if ROCKCHIP_RK3399
+	help
+	  Say Y here if to include support for the Synopsys DesignWare
+	  watchdog timer found in many chips.
+
 config WDT_MPC8xx
 	bool "MPC8xx watchdog timer support"
 	depends on WDT && MPC8xx
diff --git a/scripts/config_whitelist.txt b/scripts/config_whitelist.txt
index 35c56262ed..0618cb9047 100644
--- a/scripts/config_whitelist.txt
+++ b/scripts/config_whitelist.txt
@@ -321,7 +321,6 @@ CONFIG_DEFAULT_IMMR
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
