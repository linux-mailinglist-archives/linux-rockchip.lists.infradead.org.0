Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9023CFDA
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GI9bg63BJ67vvnpOpGGjbLof7J0V+4i4GYyWG7Z++E=; b=pFDhZ13y/HA3xf
	4fFpyu4rtUm4/IF6iQu6a0sMtk4BzyxgL6PjUVPo+VlX1m0KVM8j+dI8VJgZ1jfz4W1zr6YW1nCCY
	JYWz4H0+rOlUvFPP3x3uZlexiuuGRhWJy4zV03SxJqc74PjcuTGHXDxWNhYwRdAPqmebi0sDQrlgJ
	gxpga3cM+lX0Zk8pz/gwzpOudRnsnAo1f6yQdCzB86rmUHHXMQuaTKzhe5Gvn4PrGgbzuf47aZLh9
	gXZRzjHBzEtNWkDG0l0XT3xAfxjxv5vfXVU7sa8d3ox15PDMrnOgaeCOnkPWxBsU4i+vJfF73Eh+E
	PVddlKEfvTrqQPa7Rp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCS-0008E8-R5; Tue, 11 Jun 2019 14:56:36 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCP-0008C6-5a
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so5221320plb.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8c4S0X3iJtmuWtriTLrvafldLxCMegBBSbIDtgfjMO4=;
 b=i4tr6oM5Rr332gPecrAN6qf8zVFBrw/dYxohF+a/L92sBUPWYrKOGYnUFv//QUdHNN
 FZCbumZ8H78IR2GruNlVxPlo+lDsu8kbLBnnqqWN7lTvfbvj4mSkzmoXggElyfLdix5S
 LE4H6jwrw33itc56v/PjCLsLlYsV4oUhtyGf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8c4S0X3iJtmuWtriTLrvafldLxCMegBBSbIDtgfjMO4=;
 b=rtS/2XCQ019FApYGNIo/0EJlm+UfJgZF6058j5AQtc3sx0qr/aKcsZwUizWCzvj9bD
 RhLKQvNvq13ZNTy/0jjK8Bd8FGoD01vPPxUSQHoQfbXSMJB45oBU3TbTxnbctUTm9Yju
 kFXbG0g3NrpySedz6EC0L9BaPx9A0HFU2KI9+5dojUP8Bdm96O3AMuwlhnfYjruDHSok
 KLbhzxLyPtpaqmmc0keG5LgDHtIwTQqjC4y/Mio/IS1Xs9PW+kuxENFHBVfL3SNC86F6
 cKKoAKwI15cjrR5DphtA84OrAZndnINItZcRlRpKhoao4dYWvHpGqfd/j7gfPwwhQUpl
 JyLA==
X-Gm-Message-State: APjAAAWhjSZrmm30DaQVnYHzxzH6L3ZIRI6oJ7qNh0znF9OtspdM9S6L
 WhFGyVauWt4W1wES6Rf13neOqw==
X-Google-Smtp-Source: APXvYqzqu9oxSH0LhGCJdm6LL2oEIt/sGA0FteyQ64VIcr+R2wIxLt54If5iWP9/ZqyhL+kUGX2Jgw==
X-Received: by 2002:a17:902:e306:: with SMTP id
 cg6mr46243669plb.341.1560264992549; 
 Tue, 11 Jun 2019 07:56:32 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 71/92] ram: sdram: Configure lpddr4 tsel rd,
 wr based on IO settings
Date: Tue, 11 Jun 2019 20:21:14 +0530
Message-Id: <20190611145135.21399-72-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075633_270850_93B04F0C 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Now we have IO settings available for all supported sdram
frequencies, so retrieve these IO settings and make used
for LPDDR4 ds odt configuration.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 42 ++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 5db7cbe116..6385df5600 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -184,6 +184,33 @@ struct io_setting {
 	},
 };
 
+/**
+ * phy = 0, PHY boot freq
+ * phy = 1, PHY index 0
+ * phy = 2, PHY index 1
+ */
+static struct io_setting *
+lpddr4_get_io_settings(const struct rk3399_sdram_params *params, u32 mr5)
+{
+	struct io_setting *io = NULL;
+	u32 n;
+
+	for (n = 0; n < ARRAY_SIZE(lpddr4_io_setting); n++) {
+		io = &lpddr4_io_setting[n];
+
+		if (io->mr5 != 0) {
+			if (io->mhz >= params->base.ddr_freq &&
+			    io->mr5 == mr5)
+				break;
+		} else {
+			if (io->mhz >= params->base.ddr_freq)
+				break;
+		}
+	}
+
+	return io;
+}
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
@@ -525,7 +552,7 @@ static int phy_io_config(const struct chan_info *chan,
 }
 
 static void set_ds_odt(const struct chan_info *chan,
-		       const struct rk3399_sdram_params *sdram_params)
+		       const struct rk3399_sdram_params *sdram_params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
 
@@ -534,19 +561,22 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_select_n, tsel_rd_select_n;
 	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
+	struct io_setting *io = NULL;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
+		io = lpddr4_get_io_settings(sdram_params, mr5);
+
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_rd_select_n = io->rd_odt;
 
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_p = io->wr_dq_drv;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
 
-		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = io->wr_ca_drv;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -728,7 +758,7 @@ static void pctl_start(struct dram_info *dram,
 }
 
 static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
-		    u32 channel, const struct rk3399_sdram_params *sdram_params)
+		    u32 channel, struct rk3399_sdram_params *sdram_params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -812,7 +842,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	copy_to_reg(&denali_phy[512], &params_phy[512], (549 - 512 + 1) * 4);
 	copy_to_reg(&denali_phy[640], &params_phy[640], (677 - 640 + 1) * 4);
 	copy_to_reg(&denali_phy[768], &params_phy[768], (805 - 768 + 1) * 4);
-	set_ds_odt(chan, sdram_params);
+	set_ds_odt(chan, sdram_params, 0);
 
 	/*
 	 * phy_dqs_tsel_wr_timing_X 8bits DENALI_PHY_84/212/340/468 offset_8
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
