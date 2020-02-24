Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A12116A0E5
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Feb 2020 09:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+SWQCqTsXKoCcVnx/pLbUA5XtfdI7K8zPsPiZ7XGqw=; b=NbZUfycfQSqYaJ
	EQHLHTgYsyeKEgEOLhJR4U9OFqYur5ubn65I19vsgUDSyRnFU/cbmWGoM3JoPgUTeltUjBfIWPMhD
	ZqK60auLFXRy6DGLWXT3RzvCEX2EXcq2FtFe8dR3BOHhrOwJkjchUUbDIvyfhgSzJWk2OOoSNSmWt
	jhBk2Cou9WMvz0gJUEO2app+hVF13BSld/rxSdEAzCcqO/6Ap6IVJByBXsMVKQ/R7kbsqgFmCEhM4
	URztnbtOuZNnIprvRp6vRtf/hBsw+3P5/tPpWLtNuojh0CyL40rYALiNcBkvBVki+wvQT1iDuGRh0
	BTeGqPrKL5tdD0zkw3Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69Zd-0004yS-SK; Mon, 24 Feb 2020 08:58:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69VB-0007X7-SM; Mon, 24 Feb 2020 08:54:13 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4262A2173E;
 Mon, 24 Feb 2020 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582534449;
 bh=xrrfTjqUA3ZASNnw1o4uS2gmW3iXWsgg3RblIOSWWqI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A5iZmhTRmUn/EPy32nqLlSWM5WfQttuKqn4dbBy8VG02OxsrjPuaD+8W4A6q5F9DM
 FZ2FOcmPYjlGCraRdBnSQi97CVacB1XRy4LwwP2A+nkfH9aWiXmQw3g8kSwgc/6IVW
 J6CH/BqFSwYKOHGgISLqxhlzEzGahYBe36/Sk1UU=
From: Leon Romanovsky <leon@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next v1 16/18] net/aquantia: Delete module version
Date: Mon, 24 Feb 2020 10:53:09 +0200
Message-Id: <20200224085311.460338-17-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_005411_033112_2922E10B 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Thor Thayer <thor.thayer@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Igor Russkikh <irusskikh@marvell.com>, Andreas Larsson <andreas@gaisler.com>,
 Chris Snook <chris.snook@gmail.com>, David Dillow <dave@thedillows.org>,
 Jes Sorensen <jes@trained-monkey.org>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-acenic@sunsite.dk,
 Andy Gospodarek <andy@greyhouse.net>, Arthur Kiyanovski <akiyano@amazon.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Lino Sanfilippo <LinoSanfilippo@gmx.de>, Veaceslav Falico <vfalico@gmail.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Jay Cliburn <jcliburn@gmail.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Maxime Ripard <mripard@kernel.org>, Leon Romanovsky <leonro@mellanox.com>,
 Don Fry <pcnet32@frontier.com>, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ion Badulescu <ionut@badula.org>,
 Netanel Belgazal <netanel@amazon.com>, Mark Einon <mark.einon@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

There is no need to keep module and driver versions in in-tree
kernel code.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/aquantia/atlantic/aq_cfg.h     |  4 ----
 drivers/net/ethernet/aquantia/atlantic/aq_common.h  |  1 -
 drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c |  1 -
 drivers/net/ethernet/aquantia/atlantic/aq_main.c    |  1 -
 drivers/net/ethernet/aquantia/atlantic/ver.h        | 12 ------------
 5 files changed, 19 deletions(-)
 delete mode 100644 drivers/net/ethernet/aquantia/atlantic/ver.h

diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h b/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h
index f0c41f7408e5..7560f5506e55 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_cfg.h
@@ -9,8 +9,6 @@
 #ifndef AQ_CFG_H
 #define AQ_CFG_H

-#include <generated/utsrelease.h>
-
 #define AQ_CFG_VECS_DEF   8U
 #define AQ_CFG_TCS_DEF    1U

@@ -85,7 +83,5 @@
 #define AQ_CFG_DRV_AUTHOR      "aQuantia"
 #define AQ_CFG_DRV_DESC        "aQuantia Corporation(R) Network Driver"
 #define AQ_CFG_DRV_NAME        "atlantic"
-#define AQ_CFG_DRV_VERSION	UTS_RELEASE \
-				AQ_CFG_DRV_VERSION_SUFFIX

 #endif /* AQ_CFG_H */
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_common.h b/drivers/net/ethernet/aquantia/atlantic/aq_common.h
index 42ea8d8daa46..c8c402b013bb 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_common.h
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_common.h
@@ -12,7 +12,6 @@
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
 #include <linux/if_vlan.h>
-#include "ver.h"
 #include "aq_cfg.h"
 #include "aq_utils.h"

diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
index 7b55633d2cb9..0bdaa0d785b7 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c
@@ -132,7 +132,6 @@ static void aq_ethtool_get_drvinfo(struct net_device *ndev,
 	regs_count = aq_nic_get_regs_count(aq_nic);

 	strlcat(drvinfo->driver, AQ_CFG_DRV_NAME, sizeof(drvinfo->driver));
-	strlcat(drvinfo->version, AQ_CFG_DRV_VERSION, sizeof(drvinfo->version));

 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "%u.%u.%u", firmware_version >> 24,
diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_main.c b/drivers/net/ethernet/aquantia/atlantic/aq_main.c
index 538f460a3da7..9fcab646cbd5 100644
--- a/drivers/net/ethernet/aquantia/atlantic/aq_main.c
+++ b/drivers/net/ethernet/aquantia/atlantic/aq_main.c
@@ -19,7 +19,6 @@
 #include <linux/udp.h>

 MODULE_LICENSE("GPL v2");
-MODULE_VERSION(AQ_CFG_DRV_VERSION);
 MODULE_AUTHOR(AQ_CFG_DRV_AUTHOR);
 MODULE_DESCRIPTION(AQ_CFG_DRV_DESC);

diff --git a/drivers/net/ethernet/aquantia/atlantic/ver.h b/drivers/net/ethernet/aquantia/atlantic/ver.h
deleted file mode 100644
index 597654b51e01..000000000000
--- a/drivers/net/ethernet/aquantia/atlantic/ver.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * aQuantia Corporation Network Driver
- * Copyright (C) 2014-2017 aQuantia Corporation. All rights reserved
- */
-
-#ifndef VER_H
-#define VER_H
-
-#define AQ_CFG_DRV_VERSION_SUFFIX "-kern"
-
-#endif /* VER_H */
--
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
