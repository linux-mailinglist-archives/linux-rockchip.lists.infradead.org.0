Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE2249621
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 01:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XqEa1GnhWoetdRgvbX/wu8mkyGFIhPW+tO6aaALJudg=; b=e4zvsGNmRALeMp
	Uo9aqD3ob7m16+5K7LCfWRsYvz5mOfBOFIDhimpA6rPfPpGSMBq5UM+4pY4YUX0kyJvQNvW4bNsDI
	KmLfv2NNTdTGhtkPIciWFEB0oEh19gv0rLL6Yucx3+boTlfs29hYlO/0O+Jwuhs2Ds0aYFw5K9aO9
	3AsfRZwz8iH40hSQEGzXXGLmh2RGiKVgOv5HoTwd5fni46kMNOOZdL2r0vfk+SUrXj8lXcBLErZYX
	0XMZCyoKt0PYuwLtxsLnBB940zIUP0DtCV2p8hV0Pybdfsuz/iyl7zRw4DD3ZbZtVkeGi6pR6APAp
	3owwyUL3w4bixtiW34SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd1U0-0002IO-3u; Mon, 17 Jun 2019 23:56:16 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd1Tx-0002I4-0R
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 23:56:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so4854452pls.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 16:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dKg8IWpKy6c+Mmm1x/ABv30wGFR4GljyNfxBcgFg2Pw=;
 b=HNkEd08n0fBuvBSUwxcbRfbKKjX+xSbWeqKu4ot+NY2JjAFNZCJ4VapUFaJvf+fMvT
 tqY2DPwXtRBKhQhqcmAzjW4Kc1FuGRWI5p4BuK7xaR1ep2WDotDuthkf2H1DcFzAkg78
 sZu82XOcZnOo7nkSOVbc25g0UmjqDnGri30f0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dKg8IWpKy6c+Mmm1x/ABv30wGFR4GljyNfxBcgFg2Pw=;
 b=L1+VuwJ7c9D3OJDjL3nqPx4SrlOWe4sxM7yUYkmyI1RvcqQrLRsXLSV+SCmNk9okQj
 /m5v4uUvxO56NYaqtIdH78fDsGKHOjOAQi2Mtdl++38QyXmY6gOxcRye5zWotJTPYxZw
 kAkLuw4t2H8/puRCgREYPJPfRJydQopYvgmMBMb93M6UvwewFEB5cL5QuMo4UquAPV7X
 KuBfsOnT0Mky0wUF2FEE5XjwmIpSOlrDosITF3JTlXE/w7mK983C4/Xq5Yno1MM+hIu9
 SsDkLlHovZFN8aZt2wXOYCLEn7rZLjFf+FMRlOUjgd4rEm9uw0aJ/JgmYzkAuSm2pwDl
 QWEg==
X-Gm-Message-State: APjAAAXGMEemCuibSFl+6BvXcUBLE+3Zzmrs1EAa3Shd2jrrCZUw51TS
 /I9OZiltbO7RosMAux26UTY+jw==
X-Google-Smtp-Source: APXvYqwTeHKWWT81BsAjxR2wreRo/dxEMF8gYczQSvkIo0doGPaqaqO4KFYbKGwqMQRYkmwUzOrLlw==
X-Received: by 2002:a17:902:44a4:: with SMTP id
 l33mr31117002pld.174.1560815771850; 
 Mon, 17 Jun 2019 16:56:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id k16sm12661878pfa.87.2019.06.17.16.56.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 16:56:11 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, seanpaul@chromium.org
Subject: [PATCH] drm/bridge/synopsys: dw-hdmi: Handle audio for more clock
 rates
Date: Mon, 17 Jun 2019 16:55:58 -0700
Message-Id: <20190617235558.64571-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_165613_081976_48042673 
X-CRM114-Status: GOOD (  23.34  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jernej.skrabec@siol.net, heiko@sntech.de, narmstrong@baylibre.com,
 David Airlie <airlied@linux.ie>, jonas@kwiboo.se,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Zheng Yang <zhengyang@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Thomas Gleixner <tglx@linutronix.de>, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Let's add some better support for HDMI audio to dw_hdmi.
Specifically:

1. For 44.1 kHz audio the old code made the assumption that an N of
6272 was right most of the time.  That wasn't true and the new table
should give better 44.1 kHz audio for many more rates.

2. The new table has values from the HDMI spec for 297 MHz and 594
MHz.

3. There is now code to try to come up with a more idea N/CTS for
clock rates that aren't in the table.  This code is a bit slow because
it iterates over every possible value of N and picks the best one, but
it should make a good fallback.

4. The new code allows for platforms that know they make a clock rate
slightly differently to pick different N/CTS values.  For instance on
rk3288 we can make 25,176,471 Hz instead of 25,174,825.1748... Hz
(25.2 MHz / 1.001).  A future patch to the rk3288 platform code could
enable support for this clock rate and specify the N/CTS that would be
ideal.

NOTE: the oddest part of this patch comes about because computing the
ideal N/CTS means knowing the _exact_ clock rate, not a rounded
version of it.  The drm framework makes this harder by rounding rates
to kHz, but even if it didn't there might be cases where the ideal
rate could only be calculated if we knew the real (non-integral) rate.
This means that in cases where we know (or believe) that the true rate
is something other than the rate we are told by drm.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 208 +++++++++++++++++-----
 include/drm/bridge/dw_hdmi.h              |   8 +
 2 files changed, 175 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index c6490949d9db..edede21e85e4 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -60,6 +60,75 @@ enum hdmi_datamap {
 	YCbCr422_12B = 0x12,
 };
 
+/*
+ * Unless otherwise noted, entries in this table are 100% optimization.
+ * Values can be obtained from hdmi_compute_n() but that function is
+ * slow so we pre-compute values we expect to see.
+ *
+ * All 32k and 48k values are expected to be the same (due to the way
+ * the math works) for any rate that's an exact kHz.
+ *
+ * If a particular platform knows that it makes a rate slightly
+ * differently then it should add a platform-specific match.
+ */
+static const struct dw_hdmi_audio_tmds_n common_tmds_n_table[] = {
+	/* Doesn't match computations, assumes real clock = 25.2 MHz / 1.001 */
+	{ .tmds = 25175000, .n_32k = 4576, .n_44k1 = 7007, .n_48k = 6864, },
+
+	{ .tmds = 25200000, .n_32k = 4096, .n_44k1 = 5656, .n_48k = 6144, },
+	{ .tmds = 27000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 27027000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+	{ .tmds = 28320000, .n_32k = 4096, .n_44k1 = 5586, .n_48k = 6144, },
+	{ .tmds = 30240000, .n_32k = 4096, .n_44k1 = 5642, .n_48k = 6144, },
+	{ .tmds = 31500000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
+	{ .tmds = 32000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
+	{ .tmds = 33750000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+	{ .tmds = 36000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+	{ .tmds = 40000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
+	{ .tmds = 49500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 50000000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
+	{ .tmds = 54000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+	{ .tmds = 65000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 68250000, .n_32k = 4096, .n_44k1 = 5376, .n_48k = 6144, },
+	{ .tmds = 71000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 72000000, .n_32k = 4096, .n_44k1 = 5635, .n_48k = 6144, },
+	{ .tmds = 73250000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
+
+	/* Doesn't match computations, assumes real clock = 74.25 MHz / 1.001 */
+	{ .tmds = 74176000, .n_32k = 11648, .n_44k1 = 17836, .n_48k = 11648, },
+
+	{ .tmds = 74250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+	{ .tmds = 75000000, .n_32k = 4096, .n_44k1 = 5880, .n_48k = 6144, },
+	{ .tmds = 78750000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
+	{ .tmds = 78800000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
+	{ .tmds = 79500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
+	{ .tmds = 83500000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 85500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 88750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
+	{ .tmds = 97750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
+	{ .tmds = 101000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
+	{ .tmds = 106500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
+	{ .tmds = 108000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+	{ .tmds = 115500000, .n_32k = 4096, .n_44k1 = 5712, .n_48k = 6144, },
+	{ .tmds = 119000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
+	{ .tmds = 135000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 146250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
+
+	/* Doesn't match computations, assumes real clock = 148.5 MHz / 1.001 */
+	{ .tmds = 148352000, .n_32k = 11648, .n_44k1 = 8918, .n_48k = 5824, },
+
+	{ .tmds = 148500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
+	{ .tmds = 154000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
+	{ .tmds = 162000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
+
+	/* For 297 MHz+ HDMI spec has some other rule for setting N */
+	{ .tmds = 297000000, .n_32k = 3073, .n_44k1 = 4704, .n_48k = 5120, },
+	{ .tmds = 594000000, .n_32k = 3073, .n_44k1 = 9408, .n_48k = 10240, },
+
+	/* End of table */
+	{ .tmds = 0,         .n_32k = 0,    .n_44k1 = 0,    .n_48k = 0, },
+};
+
 static const u16 csc_coeff_default[3][4] = {
 	{ 0x2000, 0x0000, 0x0000, 0x0000 },
 	{ 0x0000, 0x2000, 0x0000, 0x0000 },
@@ -518,60 +587,117 @@ static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
 	hdmi_writeb(hdmi, n & 0xff, HDMI_AUD_N1);
 }
 
-static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
+static int hdmi_match_tmds_n_table(struct dw_hdmi *hdmi, unsigned int freq,
+				   unsigned long pixel_clk)
 {
-	unsigned int n = (128 * freq) / 1000;
-	unsigned int mult = 1;
+	const struct dw_hdmi_plat_data *plat_data = hdmi->plat_data;
+	const struct dw_hdmi_audio_tmds_n *tmds_n = NULL;
+	int mult = 1;
+	int i;
 
 	while (freq > 48000) {
 		mult *= 2;
 		freq /= 2;
 	}
 
+	if (plat_data->tmds_n_table) {
+		for (i = 0; plat_data->tmds_n_table[i].tmds != 0; i++) {
+			if (pixel_clk == plat_data->tmds_n_table[i].tmds) {
+				tmds_n = &plat_data->tmds_n_table[i];
+				break;
+			}
+		}
+	}
+
+	if (tmds_n == NULL) {
+		for (i = 0; common_tmds_n_table[i].tmds != 0; i++) {
+			if (pixel_clk == common_tmds_n_table[i].tmds) {
+				tmds_n = &common_tmds_n_table[i];
+				break;
+			}
+		}
+	}
+
+	if (tmds_n == NULL)
+		return -ENOENT;
+
 	switch (freq) {
 	case 32000:
-		if (pixel_clk == 25175000)
-			n = 4576;
-		else if (pixel_clk == 27027000)
-			n = 4096;
-		else if (pixel_clk == 74176000 || pixel_clk == 148352000)
-			n = 11648;
-		else
-			n = 4096;
-		n *= mult;
-		break;
-
+		return tmds_n->n_32k * mult;
 	case 44100:
-		if (pixel_clk == 25175000)
-			n = 7007;
-		else if (pixel_clk == 74176000)
-			n = 17836;
-		else if (pixel_clk == 148352000)
-			n = 8918;
-		else
-			n = 6272;
-		n *= mult;
-		break;
-
+		return tmds_n->n_44k1 * mult;
 	case 48000:
-		if (pixel_clk == 25175000)
-			n = 6864;
-		else if (pixel_clk == 27027000)
-			n = 6144;
-		else if (pixel_clk == 74176000)
-			n = 11648;
-		else if (pixel_clk == 148352000)
-			n = 5824;
-		else
-			n = 6144;
-		n *= mult;
-		break;
-
+		return tmds_n->n_48k * mult;
 	default:
-		break;
+		return -ENOENT;
 	}
+}
+
+static u64 hdmi_audio_math_diff(unsigned int freq, unsigned int n,
+				unsigned int pixel_clk)
+{
+	u64 final, diff;
+	u64 cts;
+
+	final = (u64)pixel_clk * n;
+
+	cts = final;
+	do_div(cts, 128 * freq);
+
+	diff = final - (u64)cts * (128 * freq);
+
+	return diff;
+}
+
+static unsigned int hdmi_compute_n(struct dw_hdmi *hdmi, unsigned int freq,
+				   unsigned long pixel_clk)
+{
+	unsigned int min_n = DIV_ROUND_UP((128 * freq), 1500);
+	unsigned int max_n = (128 * freq) / 300;
+	unsigned int ideal_n = (128 * freq) / 1000;
+	unsigned int best_n_distance = ideal_n;
+	unsigned int best_n = 0;
+	u64 best_diff = U64_MAX;
+	int n;
+
+	/* If the ideal N could satisfy the audio math, then just take it */
+	if (hdmi_audio_math_diff(freq, ideal_n, pixel_clk) == 0)
+		return ideal_n;
+
+	for (n = min_n; n <= max_n; n++) {
+		u64 diff = hdmi_audio_math_diff(freq, n, pixel_clk);
+
+		if (diff < best_diff || (diff == best_diff &&
+		    abs(n - ideal_n) < best_n_distance)) {
+			best_n = n;
+			best_diff = diff;
+			best_n_distance = abs(best_n - ideal_n);
+		}
+
+		/*
+		 * The best N already satisfy the audio math, and also be
+		 * the closest value to ideal N, so just cut the loop.
+		 */
+		if ((best_diff == 0) && (abs(n - ideal_n) > best_n_distance))
+			break;
+	}
+
+	return best_n;
+}
+
+static unsigned int hdmi_find_n(struct dw_hdmi *hdmi, unsigned int freq,
+				unsigned long pixel_clk)
+{
+	int n;
+
+	n = hdmi_match_tmds_n_table(hdmi, freq, pixel_clk);
+	if (n > 0)
+		return n;
+
+	dev_warn(hdmi->dev, "Rate %lu missing; compute N dynamically\n",
+		 pixel_clk);
 
-	return n;
+	return hdmi_compute_n(hdmi, freq, pixel_clk);
 }
 
 static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
@@ -581,7 +707,7 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	unsigned int n, cts;
 	u64 tmp;
 
-	n = hdmi_compute_n(sample_rate, pixel_clk);
+	n = hdmi_find_n(hdmi, sample_rate, pixel_clk);
 
 	/*
 	 * Compute the CTS value from the N value.  Note that CTS and N
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index c402364aec0d..5ee6b0a127aa 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -90,6 +90,13 @@ enum dw_hdmi_phy_type {
 	DW_HDMI_PHY_VENDOR_PHY = 0xfe,
 };
 
+struct dw_hdmi_audio_tmds_n {
+	unsigned long tmds;
+	unsigned int n_32k;
+	unsigned int n_44k1;
+	unsigned int n_48k;
+};
+
 struct dw_hdmi_mpll_config {
 	unsigned long mpixelclock;
 	struct {
@@ -137,6 +144,7 @@ struct dw_hdmi_plat_data {
 	const struct dw_hdmi_mpll_config *mpll_cfg;
 	const struct dw_hdmi_curr_ctrl *cur_ctr;
 	const struct dw_hdmi_phy_config *phy_config;
+	const struct dw_hdmi_audio_tmds_n *tmds_n_table;
 	int (*configure_phy)(struct dw_hdmi *hdmi,
 			     const struct dw_hdmi_plat_data *pdata,
 			     unsigned long mpixelclock);
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
