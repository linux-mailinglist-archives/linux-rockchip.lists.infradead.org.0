Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0186A69ACE
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA1/KJy7M6sGH3Hmo38yfkgB8SiSEzoxG0dMrO7jeUQ=; b=tmzCRdR01jrOz8
	u7Ek1T2WsgQ8YQfMP3twASH7AHxCUYCF+t16uv4KQbMMiAX8GChB2H1EK8Y0NJQDsKiDVTjDPw9kL
	Cj61JTDTlj9WdszqC3BMn+IleBLRMkY4hxsIvJxFzvhZSBwPeizpwz19xmkHsiTOksUpAUTtCZkVn
	AoThox8WAKvT74GI9sjiyNNzCSmivsFz4MJ8dhtymp++Z+E1qageslHfJqgHamfFtacmsFuHBeZxv
	roAgLufHtiwu1O/cxhclcl3r1wrH0dwFfo5lQrSCdF8rDQa/y5PZ1sEl8x72IHzElzjJZU0kZDmqG
	QZ09jT0lqpafwky6aWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5j2-0000rg-3n; Mon, 15 Jul 2019 18:29:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5iy-0000pI-TV
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id m4so8126875pgk.0
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6YcwdqbfN/fN4UE6eAEHodKdaNOFzJ1BoEfhJmEKtss=;
 b=U6sp09yQROlfxGcBxmLg/OVMiIy9cCKTHFDGroLkoDxMPBJvTrj4nm5IluSNV61huT
 rA9t/Cb4U08T246yMfRx9PcRMBOkygThuTwsQxwMLMUDae5dsAik8w6NG3Rq+bh2toQQ
 Z//uQ9eg1dZ3gxeTx2OM/0bW3MISFCQRD1dyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6YcwdqbfN/fN4UE6eAEHodKdaNOFzJ1BoEfhJmEKtss=;
 b=Qyut+7neoT8kxwH8PffXEveof0VbeO+7puiqiVfrZo1mbtTsyjgO4QC2nVdtdQG9pe
 3VqijEiFgVMB2M4zKlur1/Tqn63Yabbj/wgHj3ji7kCn2pu8EoUP25XFYwM2jsVu3k7d
 rAJv34KTQJ7E2FqvzHpS4s/v/FMDufnlGRoxpzLnaVco2eejPMwVZQP+2JeA72r++r3a
 rUcPgBEB4kb83UhBkutsV7YRioYcuxbuPREP+qzXF9Z8gR8yrwuJXMIRG0XVHyBsOu2e
 pn2QeSgSbDQ/fj6HsWIFOLWPQuDDS/Bx6/wDNZiubdxh2aXyqF+dXn3XSvJ2+XOw/i9X
 RPMw==
X-Gm-Message-State: APjAAAWZfP7Fb1KS2docD1KUonC7EPmLx22CqJ9xNeinvpACmOllSc0E
 ar7A0KklUnA8tahbjwI+BgIZmg==
X-Google-Smtp-Source: APXvYqxCnl2bLJAe9azA/V8kvtW9F0VN/Kchjs2sYYRhaHinXIyZB9V9fg3QxAjqL6hLOOo6KYWtTQ==
X-Received: by 2002:a63:e24c:: with SMTP id y12mr27612919pgj.81.1563215359423; 
 Mon, 15 Jul 2019 11:29:19 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 03/18] ram: rk3399: Use rank mask in ca data training
Date: Mon, 15 Jul 2019 23:58:41 +0530
Message-Id: <20190715182856.21688-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112920_964637_9FACCAD5 
X-CRM114-Status: GOOD (  10.77  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add rank_mask based on the rank number, this would keep
the ca data training loop based on the desired rank mask
value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index fe26144f27..b98df20fa5 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -626,11 +626,17 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
 	u32 rank = params->ch[channel].cap_info.rank;
+	u32 rank_mask;
 
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	for (i = 0; i < rank; i++) {
+	rank_mask = (rank == 1) ? 0x1 : 0x3;
+
+	for (i = 0; i < 4; i++) {
+		if (!(rank_mask & (1 << i)))
+			continue;
+
 		select_per_cs_training_index(chan, i);
 
 		/* PI_100 PI_CALVL_EN:RW:8:2 */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
