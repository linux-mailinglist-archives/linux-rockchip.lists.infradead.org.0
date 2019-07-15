Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7DB69ADF
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IN2rDz136bW46/A3UlpPHmW+TCVFYIeH3Gp+WnOuTvM=; b=MWZyuII8Tlglhh
	yvli6BA2D7PMXzDUD7Vh8TIlxB4Ye1ltlAn0ZLf7C/ys5JhELp/zJtLhcJlJHEE7edHMSOfjeYlbQ
	agH/RDTt/+YhqM07olCSiEhAST/tMt4Hj6fHIm2PmhGss1cG7jERENZmaABol6KOeNvDm9r6hWhwa
	nq/6SA+Q075y26+F+43RAyNgR5Ksg2RbjTJ1cr4HhOUvkfPk79IQ0SD7vnZDl2bsjtT02X+2f0Tiz
	JaidZCb/NK8alR+SHfM6lIUIw37vtKfbyw6enG53KgsL0rTcTny0tdKRXf+TfMwfH2xHQ+ikwh75I
	kescMoi/C1vufkPyFxsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jf-0001M4-36; Mon, 15 Jul 2019 18:30:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5ja-0001In-3y
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so7819720pfo.1
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AsLLPwLnBovdXkNi9P5ImLX7S8wEFQBRTIIMJmHhUWg=;
 b=Coa1qETYaxDUm8uiAG14zdZbsHjqMda5bm2SHZgWGv/slXP9hsxR481YYp24tsSSc/
 7JBJ2eeyXDoRIsmMgkKWFJG0xN5XmYCOEnlgipbKuYak6TxxWPPg6cRndyfpNsPVNLV9
 QaBciVXMCGlpZoa+IJp3g2CwmZhhjbCMuJBbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AsLLPwLnBovdXkNi9P5ImLX7S8wEFQBRTIIMJmHhUWg=;
 b=QWSxugFc6hYqpnXSqPahxT6ZnV2keiX8mETgMofW+7FFlCxlpui5sQ76WLD/Zhi4Tl
 dwT3HwHbeAA4xOKK6ffro1CWd49nSOYmeisGGg79oKoJbWT+Upd4pXIutLGvEq+SdeVe
 jT81uETSmzxtT60NTc6wd1Q9WyTUL+gIKSDH+0CkGNjnZ1lD/Hfo09tnzKo88+O7fOYI
 VfeTZ0v9dV4xNr53wvKn08pJdYwOEGcDyEvbqoxcNkED9QmPugoWKMls9Dh88+H6IotW
 TtlhrxLyyPfedKaItuM9aC59RKJZn9upAeP7sXcfANbliM2VqTAenw23gk5wyqdHMXxH
 EmIA==
X-Gm-Message-State: APjAAAW7AER7Bk8rDXWgyLJETrAPWp0Y2WAtbzHb9j76se5RyDrbe8hI
 awbgmbeV1+8waOGjqc3yKcqnng==
X-Google-Smtp-Source: APXvYqyBRQMYorqyvfi6aIXugZxyrflH5vgQZzW3mnTdn64P9LtM1GYxU9JiH3WHsIbv3ZZoJ5/suQ==
X-Received: by 2002:a63:4845:: with SMTP id x5mr27631710pgk.155.1563215397471; 
 Mon, 15 Jul 2019 11:29:57 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 14/18] ram: rk3399: Compute stride for 2 channels
Date: Mon, 15 Jul 2019 23:58:52 +0530
Message-Id: <20190715182856.21688-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112958_179843_339F2FEE 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

stride value from sdram timings can be computed dynamically
based on the determined capacity for the given channel.

Right now these stride values are taken as part of sdram timings
via dtsi, but it possible to use same timings dtsi for given
frequency even though the configured board sdram do support
single channel with different size by dynamically detect the
stride value.

Example, NanoPi NEO4 do have DDR3-1866, but with single channel
and 1GB size with dynamic stride detection it is possible to
use existing rk3399-sdram-ddr3-1866.dtsi whose stride,
number of channels and capacity it support is d efferent.

So, add initial support to calculate the stride value for
2 channels sdram, which is available by default on existing
boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 71 ++++++++++++++++++++++++++++-
 1 file changed, 70 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 084c949728..c626ef602c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1183,8 +1183,75 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
+static unsigned char calculate_stride(struct rk3399_sdram_params *params)
+{
+	unsigned int stride = params->base.stride;
+	unsigned int channel, chinfo = 0;
+	unsigned int ch_cap[2] = {0, 0};
+	u64 cap;
+
+	for (channel = 0; channel < 2; channel++) {
+		unsigned int cs0_cap = 0;
+		unsigned int cs1_cap = 0;
+		struct sdram_cap_info *cap_info = &params->ch[channel].cap_info;
+
+		if (cap_info->col == 0)
+			continue;
+
+		cs0_cap = (1 << (cap_info->cs0_row + cap_info->col +
+				 cap_info->bk + cap_info->bw - 20));
+		if (cap_info->rank > 1)
+			cs1_cap = cs0_cap >> (cap_info->cs0_row
+					      - cap_info->cs1_row);
+		if (cap_info->row_3_4) {
+			cs0_cap = cs0_cap * 3 / 4;
+			cs1_cap = cs1_cap * 3 / 4;
+		}
+		ch_cap[channel] = cs0_cap + cs1_cap;
+		chinfo |= 1 << channel;
+	}
+
+	/* stride calculation for 2 channels, default gstride type is 256B */
+	if (ch_cap[0] == ch_cap[1]) {
+		cap = ch_cap[0] + ch_cap[1];
+		switch (cap) {
+		/* 512MB */
+		case 512:
+			stride = 0;
+			break;
+		/* 1GB */
+		case 1024:
+			stride = 0x5;
+			break;
+		/*
+		 * 768MB + 768MB same as total 2GB memory
+		 * useful space: 0-768MB 1GB-1792MB
+		 */
+		case 1536:
+		/* 2GB */
+		case 2048:
+			stride = 0x9;
+			break;
+		/* 1536MB + 1536MB */
+		case 3072:
+			stride = 0x11;
+			break;
+		/* 4GB */
+		case 4096:
+			stride = 0xD;
+			break;
+		default:
+			printf("%s: Unable to calculate stride for ", __func__);
+			print_size((cap * (1 << 20)), " capacity\n");
+			break;
+		}
+	}
+
+	return stride;
+}
+
 static int sdram_init(struct dram_info *dram,
-		      const struct rk3399_sdram_params *params)
+		      struct rk3399_sdram_params *params)
 {
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
@@ -1232,6 +1299,8 @@ static int sdram_init(struct dram_info *dram,
 		set_ddrconfig(chan, params, channel,
 			      params->ch[channel].cap_info.ddrconfig);
 	}
+
+	params->base.stride = calculate_stride(params);
 	dram_all_config(dram, params);
 	switch_to_phy_index1(dram, params);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
