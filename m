Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776F847B4E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HEuPn0VZpd88jSPCN1OrUMLctXTNBoRZbQ6oZJIWaA=; b=VgqCrv3lO4zI5S
	NubNe0dJy1pPybPzkfc7hgJ7Ik4rybz8HTbxobHYSCtcPBnGpQDaN18Tgq0uo6NQdPXCGJFu7TCj/
	oRKOtr8T/sG/REARgYoajyrnwwfGwOjsS3rf3uyld0YwJSIrLwGak7cw8Ulbx4JPX6WzTjkBCVHuo
	pdb0iuxA98BnMZB4OGDn68NVXkQhxAplHfhtHaxgydRKnUzdT22YYjs030c0wo33Ik6TTAcil9J/4
	V/RPFST676fjwhrPfxrfhh3PtyDTHiqhMKpu9eFayz6Q6GDlnTIixk5vWwL2oiXn8QBelWCRbhm70
	BBNIxSN7MnHVTxABomgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmES-0007br-5g; Mon, 17 Jun 2019 07:39:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEL-0007Wo-8i
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so5287612pgr.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RBCV64wyEGkRjSj+SOeXha5NbkhBngESdnqw+b6RGoY=;
 b=RKK0qGlaCbkZTZ2AYgCGUjKfmvTKaYczvPcIvNGKlpUD0wy2UZW5vLCL/f28NPuUJb
 nhVACb5pu1NKED2fKOInGSbvh/ncW0eoQE9LnGQXbPkGGLyZUwLf5kp8J1gFvoiuVwcC
 9C7Eo74leRoKLB7fxPMQfHaIRPmF5yJ0ZtziI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RBCV64wyEGkRjSj+SOeXha5NbkhBngESdnqw+b6RGoY=;
 b=qLghR8DF5xiYNLxtE3CIEyYSyuaCTOAylRCpE9c2FKgbY3au8w0DspcwcFTzt1xH1P
 Vmt9Dt8YrdmAqc8RtT1VSJnnxbrAV0YQQI4y0jTdn6A71ps0d2O80aqkn19c4QQuYSbk
 MNXAIarBy/8/PXjmZW6TBjysFsJ1b6yllRIlAf7ql2DYNFGLbYqRwM9kvq0JFnVL2NzZ
 zx+5WDO4vLm4cTTcPazWnLL22nk4p4JUk/r0KXqb+KoOb7WKUZQGV3f1XfjdlALVVs6o
 0nFTcNYsmV/+OB+eYJ8jQMwKAKV87UUplDg0Gryo7cF4jT5ZB1gcufl29wUm6euYMv+a
 Q98g==
X-Gm-Message-State: APjAAAXDgrMcu71JvH+xPR5/aPogEq/O5mVe63y75jnivCIjdLPMALU1
 Yjn5zfp6MsyDOf03oX+C08A8WQ==
X-Google-Smtp-Source: APXvYqxkOdXApgexcoS0LcdFMq9Iz8qxiMrbnYKoHwS2IZWLv0eKpnHTV2JH1bYbwRKVD1rxm+0HiA==
X-Received: by 2002:a63:68c5:: with SMTP id
 d188mr48898815pgc.429.1560757144661; 
 Mon, 17 Jun 2019 00:39:04 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 49/99] ram: rk3399: Compute stride for 2 channels
Date: Mon, 17 Jun 2019 13:02:02 +0530
Message-Id: <20190617073252.27810-50-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003905_337887_06C292D8 
X-CRM114-Status: GOOD (  16.42  )
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
index 231f69b173..75df469952 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1180,8 +1180,75 @@ static int switch_to_phy_index1(struct dram_info *dram,
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
@@ -1229,6 +1296,8 @@ static int sdram_init(struct dram_info *dram,
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
