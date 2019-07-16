Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C3D6A7F7
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oVg3axiNrg4C2FC/o4HLC2Z/dnuvgyBTiPAb85+vgc=; b=SplfNTfdTmQzAg
	g4Fi81Hut77ACn394CHMJK8vGrFdgmykBz75JQl7Itq+xFyGF6K6US6dF09wZA+RaQO9m9M+xpvrI
	TNrm9PSA01/PDspFflWzMUJdHRnbK+q4g0UlUQtZLw/So6cTNwmEAB4SSwSmpmJoTiBqXCp5JOLK9
	iUeGsIJrjAqVDOyJwDDTjc1RsFx20cABxeLXIZ2dd9rc5gjkVLs4g4ugF1ScqSnBqFrAGFLAoILrj
	mvwpUyQhbujpzUcNpGVPXtRUYs+PiE3AXdE42JdopqAl8enDTjt/GknRJjlprheRZV0+2MPbNNGYm
	3FlKSUMNhyD1D38AzfkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8y-0007IS-6V; Tue, 16 Jul 2019 12:01:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6j-0004HK-Lp
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so9328586pgv.10
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G9X4zZvYI0+z1juOsggDVzjoWCoJKJscHi2dgdYyHhQ=;
 b=EO/gVMfPMXKQWEHpw3qnFhKk0YeNFWBPhCvgnUKnkAs6BPA2YOqnJi6GSi/bEnDNfM
 zPJMLLH75xIhRjwCsolxHXN9mDbISnplsAgphr0kJrpX/ZaX3yTbU97jylFJ2wlL9l4v
 mXaMKZMh555/VjrwEjDXtLxX2UDh5IZstFB+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G9X4zZvYI0+z1juOsggDVzjoWCoJKJscHi2dgdYyHhQ=;
 b=eIDM//WM5TKnQoTBtoQ7TPQ4vTNWep4E5lRsxb6tbgqBdqUAVxqMCHCqqYFcmCrTNX
 7PTsdKkHsXxLv563tlMxNVk/yu4bU/OdE+OaMZFRBJmABT9d/oHlmpRxPvQCh75kNw3V
 y4zNIaU+7ALQLKUAbRhcJvoeyEcxInCJny36QY7hH2zOqq0uyawZPC6HTeRa5dArMBOt
 gV4yBYP57LnTTakp8AN2SaDy+BDcup6Msi5+2c1pLqO255ffe47qs01UjRJSajavABAU
 poZUpfMwpzZMD1C+cv1dU+jQJTExSOXeHp6imlzAWuEFLpkaIeK/5Q0/j9X4n+FK7BRB
 KYLQ==
X-Gm-Message-State: APjAAAUJwKyTY3tt2QAjkQ2fjgl75LguFaTqAygEKggEiUVPj8Sq71YX
 EUs1vifnLO0RHz1o0w9O93tQGw==
X-Google-Smtp-Source: APXvYqws2dXmMT6zLwOWujiBgBXZbNzeIgFHAwooPCDu3lGbW1Sh9kUyzOsFOZ5lE4EcfL7O9wHhng==
X-Received: by 2002:a17:90a:d998:: with SMTP id
 d24mr8962017pjv.89.1563278337035; 
 Tue, 16 Jul 2019 04:58:57 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 17/57] ram: rk3399: Add ddrtimingC0
Date: Tue, 16 Jul 2019 17:27:05 +0530
Message-Id: <20190716115745.12585-18-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045857_744801_7E41D71D 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add DdrTimingC0 structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 12 +++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c               |  2 +-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 471702f935..7f41a67242 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -18,6 +18,16 @@ struct rk3399_ddr_pi_regs {
 	u32 denali_pi[200];
 };
 
+union noc_ddrtimingc0 {
+	u32 d32;
+	struct {
+		unsigned burstpenalty : 4;
+		unsigned reserved0 : 4;
+		unsigned wrtomwr : 6;
+		unsigned reserved1 : 18;
+	} b;
+};
+
 struct rk3399_msch_regs {
 	u32 coreid;
 	u32 revisionid;
@@ -36,7 +46,7 @@ struct rk3399_msch_regs {
 struct rk3399_msch_timings {
 	u32 ddrtiminga0;
 	u32 ddrtimingb0;
-	u32 ddrtimingc0;
+	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
 	u32 ddrmode;
 	u32 agingx0;
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7f6f7d8a9a..e916448fc0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1110,7 +1110,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrtiminga0);
 		writel(noc_timing->ddrtimingb0,
 		       &ddr_msch_regs->ddrtimingb0);
-		writel(noc_timing->ddrtimingc0,
+		writel(noc_timing->ddrtimingc0.d32,
 		       &ddr_msch_regs->ddrtimingc0);
 		writel(noc_timing->devtodev0,
 		       &ddr_msch_regs->devtodev0);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
