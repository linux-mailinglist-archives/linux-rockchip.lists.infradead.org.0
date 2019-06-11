Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B987E3CFA8
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCy6JFK1qB/P94AtEIIlHyh1sGxuveHNNeuRbxdGouI=; b=mhTzuM5GysFKUz
	02RUjALSc3m6qG6l2hnlE7knnl8eqq4IJDfiFj3sMz82WD8tWqFQU+Q3KKxu10tVCUPr1q+GAXsLb
	5jL5E+WxNYALc0lo5wTFHNHcclJMvcNVzc80bCcwFiZtJMk5h9nT9LUbnjpDlLctxryagynGjniF1
	cbf+OeD3NmEe/suDa+hv5FijZNR2YD3Av2nAW/wUt+W08youmjvw5cufDVkX7text50c8fPdKqFQL
	KlUvU4zkdJIMQEGLTEPPgJEwgk8dZv/taMB1rOA+C8F3JyGRwsYD/5AIA03CUhJ4EyN+K/t+ie2Tk
	7edd4352quAKfHDeNmSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiB2-0006Jd-IH; Tue, 11 Jun 2019 14:55:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAx-0005yD-Nj
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id d126so7604361pfd.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q9WmmKSiG6PRsHUFUAVRH5Oq8xmXKYOkeIJI7ZtLjSw=;
 b=WnwtPCWuW2aVi9Q5IUPjCASprnBKOhTDr/I4/CLqIeWw4j8Rp9143C4UYPEYs0w7De
 ssvei//y2TxkFlh5Myz45D8QnJ4PLV3aAzgeXB0Hrbk3kS4Hc+1meKUeg70BDAuRACcf
 pPKNMb6jTx2SdeNMpdrIMVb7+shRVMg16kDYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q9WmmKSiG6PRsHUFUAVRH5Oq8xmXKYOkeIJI7ZtLjSw=;
 b=kvV7l/zclgeQ2NgvfIb+XiP7fe7Dy33XLgTQgyMo/IF3CFIRm6BoAjx0wgZZYzHvVG
 VxBSuMzfLQ2c2Z83QPZPtmwaCrUCMMNL16cqZSb5QV1fRO3c5LmdPgEgKWaKa/d0gokU
 coJ7/JYaWK7lWC8mSqPJEqEdytAqWRlp88MTTEYvxZMuBLPGXXhmKj4l+f7KEraPogU/
 WikfYIyD1mUczxzQbHb/fNAHYmaNrDN8/n5uhdUNpk8gK3lElIL7hw37E9EJLgJ9a6xf
 mzGg+9IK95eWXltLMaayOz9W06cglRMA/RwCg/aQsKK3buhfIZclsjYVvg6M/PrhGcbA
 iLpg==
X-Gm-Message-State: APjAAAUQUGx4kxaP1zE5NJ/SHYQUL9ctA3Eg6jXc3jJdsKRDmWIhsNCd
 NqXtvmNzHARxd/Ar6AtIHPLWCQ==
X-Google-Smtp-Source: APXvYqzWXgsJpGGFSwem1gWsd36L4j7JyMPkAZGRsQjQaZD7YLIftXRYEdRb9pb1ylpkZTGvCOuJ1Q==
X-Received: by 2002:a17:90a:2430:: with SMTP id
 h45mr28194841pje.14.1560264903013; 
 Tue, 11 Jun 2019 07:55:03 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 48/92] ram: rk3399: Compute stride for 2 channels
Date: Tue, 11 Jun 2019 20:20:51 +0530
Message-Id: <20190611145135.21399-49-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075503_851009_E1C61D8B 
X-CRM114-Status: GOOD (  15.46  )
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
 drivers/ram/rockchip/sdram_rk3399.c | 72 ++++++++++++++++++++++++++++-
 1 file changed, 71 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1acf9efe9c..5985c37f08 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1185,8 +1185,76 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
+static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
+{
+	unsigned int stride = sdram_params->base.stride;
+	unsigned int channel, chinfo = 0;
+	unsigned int ch_cap[2] = {0, 0};
+	u64 cap;
+
+	for (channel = 0; channel < 2; channel++) {
+		unsigned int cs0_cap = 0;
+		unsigned int cs1_cap = 0;
+		struct sdram_cap_info *cap_info =
+			&sdram_params->ch[channel].cap_info;
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
-		      const struct rk3399_sdram_params *sdram_params)
+		      struct rk3399_sdram_params *sdram_params)
 {
 	unsigned char dramtype = sdram_params->base.dramtype;
 	unsigned int ddr_freq = sdram_params->base.ddr_freq;
@@ -1235,6 +1303,8 @@ static int sdram_init(struct dram_info *dram,
 		set_ddrconfig(chan, sdram_params, channel,
 			      sdram_params->ch[channel].cap_info.ddrconfig);
 	}
+
+	sdram_params->base.stride = calculate_stride(sdram_params);
 	dram_all_config(dram, sdram_params);
 	switch_to_phy_index1(dram, sdram_params);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
