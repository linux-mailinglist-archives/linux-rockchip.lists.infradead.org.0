Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A76A7FB
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi8iNUTL76PahqbXzoWXxvehnGpUEqZLNBJORNDGjHE=; b=pm1PjTk2LX5iMC
	y7OyRDA67G6a+I5GgQ9hOGMdLlyxsrhTdc3xBg0rsKQtxELLptIHhvc7hk+WTtvaJtMjwt5ADYE66
	yD9NzXlZOu6kKo5WqXSn5zH42vFne70y78Q6usNN/bbajbAK2MJiWgFwq5iFi0+yXRxKDPbd55z2K
	3ScUu3wlS2rFxLTu1Lf9Uumby0fn+zJ5QeJqc/vEnU+bfaGfbsjfPdepaAy4AG55tcY/LDuUGBbpa
	MD+h26mo7G+IgY2MXWU4c1N/o70S3oGl1tM6I8O1/QjCuf2mmaH++gvjLbr6uMZbWMt4WVDYZ13tU
	rpPKcccIY+PWXflwYQzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM99-0007Xc-20; Tue, 16 Jul 2019 12:01:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6x-0004TZ-L1
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id 4so3043334pld.10
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bflvW+JotwkqbODWpg7GKUWBSsmpB52BPlZ06Am3kg0=;
 b=GNUk3RW49P35dCBPtlChDRN6NEusaps/svjS+IsTEDJXNdmTY0BuasA0VDEAztGgFv
 Q3HJ9hLPMg7o702o9pfxg6BETBTJaza8P4hePWTIxFX+1nl1Lx1n5ohQrT6EUiaDkvNV
 sBR/HSxLq/nv1CCFQO8BHsq4dxYsQYq+UfBqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bflvW+JotwkqbODWpg7GKUWBSsmpB52BPlZ06Am3kg0=;
 b=LNPfcFpjg2MVlzpIOG4flG+28mhzTtkpoNlxyZGiE2ftGvsfphj18Yr1c98sDIxV0a
 AhEm/1RLj6W+7VaaybeP8omdCV2nrIW1Bk3YKG+Jz82fGHbj5bLFnr3HP6uuJE0MgP99
 N1vNYCdeUJAEKD2WksYPo6caMAFX8DkVYjAOoVr2YsfEm5jVs1AeUEOJcn24nnJFVIuK
 wIZ3XPYq9PHtNV2jwBskNBu242052LRLVRFBmVXrVgPzQP9Nn71db3HxwwXGflYTuIiX
 VC0y6KLl3cZCqI1RPY6OK/Kz8xjJyN4EyEB9P052tTmp34GD/FXUaY+L97WtHeN6I56i
 HqQg==
X-Gm-Message-State: APjAAAWR6oJpJpKeil2DfXyTPf3B+WBufIQEo8+txYBJR5QuTia+jQ8t
 +uSCCw+bOh78p357lxpdqyZpKQ==
X-Google-Smtp-Source: APXvYqwXHXXMzCJ+WKX1p3R1aci6VH/yS0RFHRTmKFov5ZMcVL9hHITGTv6CfZRWPC+WU5j8W5Tn7A==
X-Received: by 2002:a17:902:2a29:: with SMTP id
 i38mr35055086plb.46.1563278351007; 
 Tue, 16 Jul 2019 04:59:11 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 21/57] ram: rk3399: Add lpddr4 rank mask for ca training
Date: Tue, 16 Jul 2019 17:27:09 +0530
Message-Id: <20190716115745.12585-22-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045911_799285_91AE37CA 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add rank_mask based on the rank number for lpddr4.

This would keep the ca data training loop based on the
desired rank mask value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a49677285d..8ecc3a1b74 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -687,7 +687,10 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	rank_mask = (rank == 1) ? 0x1 : 0x3;
+	if (params->base.dramtype == LPDDR4)
+		rank_mask = (rank == 1) ? 0x5 : 0xf;
+	else
+		rank_mask = (rank == 1) ? 0x1 : 0x3;
 
 	for (i = 0; i < 4; i++) {
 		if (!(rank_mask & (1 << i)))
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
