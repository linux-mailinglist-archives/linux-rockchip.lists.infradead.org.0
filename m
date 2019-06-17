Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78BB47B59
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MdTF+EtXsjyoYdU2chaC0lDgSQkYM9ei6tL28UKzcU=; b=prNVPPR45uR4tZ
	8Ax0oYxy5wjQd+gJ9JDL9Su2hiHxBA2swi5QdkrAloKfpL4JpwjBaWn9d08IwQSbIQBu1HvxxTe3W
	+ng6U9SFEk50F+ZNa5NzWuCbF09N9tyxm1xNqXQ7Rpot/ow6u/fgCpgtPdW7v1hCt1r7Z90EWmZoh
	XXBxm/rebpJ8DT1Cq1eMBiGmR3o6TD3jpkvayke8lJqcnTpIudVlUhJB4yqlo+a94iISrxCPyH6/L
	8cPyxPLm+BvaFot5PGz7TMBVq99gPkv7E2RCNTuKnF7NJEnyn39XUswa6DG+DvNGZiX+8d8ag6ACD
	+BCG7y7Uf6Sy2asR+YmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEz-00085Q-PG; Mon, 17 Jun 2019 07:39:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEv-000834-NW
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id v9so5288507pgr.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZL2J5s41uHSjPxOrpRc48hqHZUSqQoN6TBo3Y+1rohE=;
 b=cqoxf4GI53ncdSE3hXZzypaZRWsjx+jkgV7AYr+dym8A/s0G3fQa0usjGiZhR7IGzM
 xPy6mLH+PJbEhT3GcSu8qDcg78+GJYkqijZF8R3a5TP+CcDxyXsxy7bI9A4GwnGIYfYd
 RyqJ9tSGfgQALKoWNR4N/FPuA1IanU83sRQ1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZL2J5s41uHSjPxOrpRc48hqHZUSqQoN6TBo3Y+1rohE=;
 b=btlJHPnIfHwRhLJ25fvdWUswQNmNiUTH8Z8T1ubVXxGED2NSUA/7p881uGAIZHTnF2
 TLSFCbGOCXv3B+iM1JGKj4kPBbnXdjMmoredMD6HAe0Tev24tmhF1B8mczMGzMWXUbBB
 vBcHoDuS76Vx/FAPhRxzSwB320rxEK7WHedMfHF6OezakiSq7vqYxqfftgah3ZYaB+Zh
 3k7oz8pQVo/c+Q7tE5dFbuWZ9Nu/5Eh814CsbwF8HS2bCJwJGn+E163PN7XZxykJ8f7R
 LKuCHqcpT0C02oBZreidiprqXnpflA5mqyy340pAjxvZz+z6P8QP3cGdp/L9ZBcQnUM4
 cTPA==
X-Gm-Message-State: APjAAAXrV47rRoLT7iPt3ODxz2GXfwG0zm+zCTj8rulpSjTNk6q8JCd9
 m547+zcI2XKpYR56P012x7sjkA==
X-Google-Smtp-Source: APXvYqyK4Dl7tm9n1YGUrY9tGVP64Fv5we8SrwserTt0x4iEEKAoZYGbr6uNavgKVJTlpx0nQcEmkA==
X-Received: by 2002:a17:90a:20a2:: with SMTP id
 f31mr22770653pjg.90.1560757181262; 
 Mon, 17 Jun 2019 00:39:41 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 60/99] ram: rk3399: Add lpddr4 rank mask for ca training
Date: Mon, 17 Jun 2019 13:02:13 +0530
Message-Id: <20190617073252.27810-61-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003941_807335_07F44127 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Add rank_mask based on the rank number for lpddr4.

This would keep the ca data training loop based on the
desired rank mask value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7f01681a01..d967a602bc 100644
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
