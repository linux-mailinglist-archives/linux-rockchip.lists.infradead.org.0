Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1EC47B34
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXtosxggzfSwU+WebEaxgYSgr7CDhmRrcNU2hWOrr/U=; b=OFYPyLzF6twV4h
	LmWqD3V3205NaqtnT2ghzl+M+GWckJ/NXfR8oAYLI8xYfl9aRm3Kyv8YjWqEZpbKTbT0NbPrKZJkR
	HiD138gxuXCPY60JzUmWo/UNfbhUe/p0DCKvr0M2//OdHALlKpJh3YTtRcenb6sXstAdFLa1qo3hF
	o2Vw5/Zaq88tNxkRT1x4pRKz6hKsTlA5uvnNJ4kh1FjYPnajxp7hKLQoAopJUZO7z8GacNf5N6jDV
	To1ENMSvyzMENv2vEHshHKawVG0OgwcVxjJNyXAFitcf4N1rfLUcfIX7E/l9b7wS7pt1mccrjHcOS
	za6BR902WP/c4WDbiJtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDO-0006Na-Nl; Mon, 17 Jun 2019 07:38:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDD-0006GK-II
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so5177614pfq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iwH0VhI5YwIZ3wm3UnVwDRiky+H+TDOZNsRsXz2tQ1Q=;
 b=IHhwxvmsz3p3gdYUVtz2mcccY7dSvGEmiwP5HqEzD+6JjH2mnZ1z2ygiDi3hAF5Ba/
 cpx9eEr2kM+wuj3q5piI9L3WwkFVIkFcDI14G6R7bEGzOEwHOvyS4IbFz1d8gVQo1/zF
 r8p7Ldl3eWUnQjYRGDSU3qAGoi+2POQuL4BZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iwH0VhI5YwIZ3wm3UnVwDRiky+H+TDOZNsRsXz2tQ1Q=;
 b=GBOeFFWiPCuMRc3hlbuw0cTH/Ycd4lyvot7DkzcFpng5fWBgaalxgbHqgNVRkQPkWz
 ldyl4D63QEs8ol5aiZtfmlObete7vCq05wXMWmklT2xLOdSFoZIDIShNF1TmZvhPCx5J
 B3uKVYskdojIbQCiImxBCvChs2sc8II76qi1v8n0WxRbc/a88kw1ovkrsGxrUglMzszZ
 peSZrPQXThd/H0aBj7HyzSTC+acYEOPzmJt3kinMnJWWDx8CLauzBHIGyUeurlXV7bQL
 7FDMB/yy6iowj9Wdk2JTqKFJpJrZZWvNB7GK5CaOdYOBJrGhc0aEefF9zE5/WgdggO2T
 u0fw==
X-Gm-Message-State: APjAAAXBDGNpIxyljbt9BazuoqAaHD9Cc6y4dEUYtHjoJowkWDdlk453
 joX+ecsPCvODA9aJjtsNA8GLag==
X-Google-Smtp-Source: APXvYqxymeMaPMujvU5s2Fwr8j5wZ1NMTxaVmInXhxgaLfub8c4ofSEwKDxgn1jpuS+jR6Q0Hyxvgg==
X-Received: by 2002:a65:5004:: with SMTP id f4mr49146036pgo.268.1560757074731; 
 Mon, 17 Jun 2019 00:37:54 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 28/99] ram: rk3399: Add DdrMode
Date: Mon, 17 Jun 2019 13:01:41 +0530
Message-Id: <20190617073252.27810-29-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003755_825862_5DC078FA 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add DdrMode structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_rk3399.h    | 17 ++++++++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c             |  2 +-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 924eeb3bac..a191d242f8 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -36,6 +36,21 @@ union noc_ddrtimingc0 {
 	} b;
 };
 
+union noc_ddrmode {
+	u32 d32;
+	struct {
+		unsigned autoprecharge : 1;
+		unsigned bypassfiltering : 1;
+		unsigned fawbank : 1;
+		unsigned burstsize : 2;
+		unsigned mwrsize : 2;
+		unsigned reserved2 : 1;
+		unsigned forceorder : 8;
+		unsigned forceorderstate : 8;
+		unsigned reserved3 : 8;
+	} b;
+};
+
 struct rk3399_msch_regs {
 	u32 coreid;
 	u32 revisionid;
@@ -56,7 +71,7 @@ struct rk3399_msch_timings {
 	u32 ddrtimingb0;
 	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
-	u32 ddrmode;
+	union noc_ddrmode ddrmode;
 	u32 agingx0;
 };
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 787cdc6b52..dc9229ddf3 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1046,7 +1046,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrtimingc0);
 		writel(noc_timing->devtodev0,
 		       &ddr_msch_regs->devtodev0);
-		writel(noc_timing->ddrmode,
+		writel(noc_timing->ddrmode.d32,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
