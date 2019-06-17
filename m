Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38A47B3C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vv6Mm6+/QGuTxHFtHNkgZaKtr9y2QjZkHecWwkOsW7Y=; b=kO6ofRUlgC0BSZ
	vmqlmeJLt46d2Mz3fPUndlTSYmVcdnhbmeM2GIoL0KCDvv4LWIdGJJcYwhVUXrVLxlr7M0j4kzbsu
	xpDgkqYbZhR3IW5zk2PPWShMfI0gMFXX8ukYb9pDek+iZ0begCSsecWA7hds9AHbhUzd4ozNFkFaI
	4dAqFEvhX/5xSvK88kbTug+XB4sondY1ac7y42G3iNVwpNeZpgVU5x9EyAv/DMCA/z2ab/8Iy8VSo
	NaVQ9Rs7VDLGcQViLF8z164TdVHDNDEXTKxoI9IC87jauSHMWH0WxioZmgLVkUU6D09dwI3iV1oJ8
	W+hIQUknT+Ww2OP7xmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDj-0006iU-SW; Mon, 17 Jun 2019 07:38:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDe-0006f1-8h
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id k187so5316069pga.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qo6cHVT+365TgXOCO2NVSQCfWb+COdvyYs5is315K0I=;
 b=mgbiDNESgTZ9zaE3ekUF4IE/c1qpTpwFmiV2q8mGtby87h38yxzLj/jZxkhJCdqVfO
 ztVO302qa+0E1VuBVFQC7eKt+1lis7BjE/7QHSL7tsh9p3Xna0zlS8sitZqt1D6Zjdbx
 UAJTbCjA9X2rrJj6IHfRs4geYFD6AodX1sg7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qo6cHVT+365TgXOCO2NVSQCfWb+COdvyYs5is315K0I=;
 b=h5ZZgQK3o0vWsu8XOHeMsc5UTwRP1gB8UL7YY6nTzrQBechvzMwF/v8jIYjFoREUXU
 J4+WDYUz6Npe7KtF4V6xP977YqgAineGlSLNjN7FgcTaB3kT6ixCX6ETTHBd+pT0mcxn
 kbVSPPXE0DsKm/DqHa/H9w+nOtbSS2Rl2KsSbvFd809Q51ZCp+ksjZTUOHiqIevGobkz
 n5Y70a5U8qym56KnEKn2LRaRJPhn+Am6AwUk3aPthSXaLG0Jy311dOBytzboOMdWi7ky
 38o8UY+wozVabmzg0onc3pkz/Q3uEUJW8ZgXTdtTj/Eczhxl55XBNASCKG29dQ4u2rr4
 vDwQ==
X-Gm-Message-State: APjAAAUV55I9GJnTCrRHGoF4RdpYh76sq2wVyGlYvaY/xkbK9nD1Bq0y
 IcRXKEYAozXw1J9hdUKgTUiglA==
X-Google-Smtp-Source: APXvYqx6rXftx741EqkoRfUWxP4ltRHbvSpZ2ku5fUweiKDmhmgxiYu0/uv00vbeIT1vGHh/MWQlbg==
X-Received: by 2002:a17:90a:cb97:: with SMTP id
 a23mr24247552pju.67.1560757101530; 
 Mon, 17 Jun 2019 00:38:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 36/99] ram: rk3399: Move pwrup_srefresh_exit to dram_info
Date: Mon, 17 Jun 2019 13:01:49 +0530
Message-Id: <20190617073252.27810-37-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003822_318809_CCE395C8 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Add pwrup_srefresh_exit to be part of dram_info so-that
the it can help to support pwrup_srefresh_exit in individual
channels while starting pctl in future.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 313a177417..1362a5bf2d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -49,6 +49,7 @@ struct chan_info {
 struct dram_info {
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
+	u32 pwrup_srefresh_exit;
 	struct chan_info chan[2];
 	struct clk ddr_clk;
 	struct rk3399_cru *cru;
@@ -486,8 +487,8 @@ static int phy_io_config(const struct chan_info *chan,
 	return 0;
 }
 
-static int pctl_cfg(const struct chan_info *chan, u32 channel,
-		    const struct rk3399_sdram_params *params)
+static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
+		    u32 channel, const struct rk3399_sdram_params *params)
 {
 	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 *denali_pi = chan->pi->denali_pi;
@@ -495,7 +496,6 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	const u32 *params_ctl = params->pctl_regs.denali_ctl;
 	const u32 *params_phy = params->phy_regs.denali_phy;
 	u32 tmp, tmp1, tmp2;
-	u32 pwrup_srefresh_exit;
 	int ret;
 	const ulong timeout_ms = 200;
 
@@ -515,7 +515,8 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	writel(params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(params->phy_regs.denali_phy[912], &denali_phy[912]);
 
-	pwrup_srefresh_exit = readl(&denali_ctl[68]) & PWRUP_SREFRESH_EXIT;
+	dram->pwrup_srefresh_exit = readl(&denali_ctl[68]) &
+				    PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
 
 	/* PHY_DLL_RST_EN */
@@ -591,7 +592,7 @@ static int pctl_cfg(const struct chan_info *chan, u32 channel,
 	debug("DRAM (%s): phy locked after %ld ms\n", __func__, get_timer(tmp));
 
 	clrsetbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT,
-			pwrup_srefresh_exit);
+			dram->pwrup_srefresh_exit);
 	return 0;
 }
 
@@ -1175,7 +1176,7 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= params->base.num_channels)
 			continue;
 
-		ret = pctl_cfg(chan, channel, params);
+		ret = pctl_cfg(dram, chan, channel, params);
 		if (ret < 0) {
 			printf("%s: pctl config failed\n", __func__);
 			return ret;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
