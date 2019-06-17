Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036A147B67
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5k18ErnLpnTcGA1oxph2k9VXesWj6It16K/HRWzwQLg=; b=CgN9QmZnkc2ViC
	M+0gkH+8AV+9j584+kHeDsN/MQjIe3F7lge8QWoK0cvZ/3CnMtjztCyoRrCe9czUewujpgqC31QMQ
	o5sphEoCsDAV2xqomFAylOoUTAkfliGTZp94Emh+cD0h2o9QpB9Rbpjd4lv6gpoN6LL26J8+je5Dm
	FGK/sGNvpDvKSN4iTmklEw7oZRoMTbfqYEt7goEQnANXwalv6IaWbm5cw4XkNcrhzwixxMJ7v8A0B
	JtKzbZwTgx/12No1IgLKKfGZTs4SzeVBTzuO0c0Cnw894UFEV21TtuZAYjjKH/IIgK3LAq0NMqokB
	XPIl7iQPVw8+oJLRfqGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFb-0001IE-16; Mon, 17 Jun 2019 07:40:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFV-0001Fg-Ed
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so5210622pfq.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lvq7XoR1Ix45f8hq3+WTfHQFFNcm7BVHJc5pM7f8ftQ=;
 b=JjGc2KIq616oLl0jQynPFRqkE/AZsl0cUVPFwMyyUn5jPHZgdK+uDYuBeCK5aaEfUn
 Hq0REDPAi06/S0lUiWH1GX1YBhXJXR1ufln6tvLcggWFFL1jHbOxknZ6T38go6Wu9wA9
 lJs8CIqit8PYqauS+uf7ppHy+avX8UmUQzl/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lvq7XoR1Ix45f8hq3+WTfHQFFNcm7BVHJc5pM7f8ftQ=;
 b=unW/DXmqR1cLC2ipUsAfOnNkQLRf0Ym+xwPcNbpKZ6vXhUeEccAup+6BBJvZTq1qDj
 4xjpthC4Eg2QuNI6zEvY+1FTWCPFGK2Fqam7ty4MFrUpO4IYXKwl4qXJJU+sJaHilXVC
 1tF7K9udnwfLRA1oON+qDpFLLmNnbDJPisbjxVBuVskES3fkWGY8nZNXveVFyLxzztTc
 suGP6HSRahxsQJNXFv54sdiapLXiaPcV2UFqtozcqAQnrpWtiz4h7TMUJJ9T/bOzgDqA
 xPNzNmwRj1HuYp2DeoGr/ZRjlkV2TSjRJqCeWi6OsqyICFC5EdMWg8BYIz1i04z1bqoW
 mDFg==
X-Gm-Message-State: APjAAAVMnsn1q4eK1zH3pE+Hl2qDuSHcB/BtzVdXtuIQCE/OM1sqawoS
 uTcz0RBFx65suc7Bm7jtUIpDhA==
X-Google-Smtp-Source: APXvYqyxDgRIv9MG6/dCYoL9X0BcwBEqJbsMmKDfPzWO+m7RVaBGIV4VcRnk6Fj8UnMu7PCPmWFGXg==
X-Received: by 2002:a17:90a:d151:: with SMTP id
 t17mr24712621pjw.60.1560757216913; 
 Mon, 17 Jun 2019 00:40:16 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 71/99] ram: rk3399: Don't disable dfi dram clk for lpddr4,
 rank 1
Date: Mon, 17 Jun 2019 13:02:24 +0530
Message-Id: <20190617073252.27810-72-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004017_513401_3EF6391C 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

The hardware for LPDDR4 with
- CLK0P/N connect to lower 16-bits
- CLK1P/N connect to higher 16-bits

and usually dfi dram clk is configured via CLK1P/N, so
disabling dfi dram clk will disable the CLK1P/N as well.

So, add patch to not to disable dfi dram clk for lpddr4,
with rank 1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 41dd19a9e6..d1b3aeef47 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1226,8 +1226,18 @@ static void dram_all_config(struct dram_info *dram,
 		writel(noc_timing->ddrmode.d32,
 		       &ddr_msch_regs->ddrmode);
 
-		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (params->ch[channel].cap_info.rank == 1)
+		/**
+		 * rank 1 memory clock disable (dfi_dram_clk_disable = 1)
+		 *
+		 * The hardware for LPDDR4 with
+		 * - CLK0P/N connect to lower 16-bits
+		 * - CLK1P/N connect to higher 16-bits
+		 *
+		 * dfi dram clk is configured via CLK1P/N, so disabling
+		 * dfi dram clk will disable the CLK1P/N as well for lpddr4.
+		 */
+		if (params->ch[channel].cap_info.rank == 1 &&
+		    params->base.dramtype != LPDDR4)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
