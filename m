Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1FC4C2C9
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 23:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8hs5deDqYRzg8WHE2uJVKK+FBmja51O+RRDi4HEGK8=; b=LoV0R9ZjHUZfqE
	eVR73iOcgMvEHNNvobXI8/c2Cgcg2A2tg7//aeqc7o6iJMUj99Ari9YOvOhBPAm5+4XmL5khhL4Rw
	finPP2ttV0LyMPhULNYn+CFRi/8QwSXz8p1ALbyPOQm/dl+hEjOnf31dkAMrJ+LyQ3T+nYALZ4Jzp
	Kb+4Hqr/C7pVWOhdafd7ZOhKydYTHa/FehjG+js5uTiww3+5riUKYHFdi8X/4mpC3zRWI4WRit4Lp
	4CjvxruaZuBD+Tg6l++JAOhvuX1NWfjUccKt7tSm9qjmge3LCJEHLtVCO2/1ZmxYJ/w6sWQq1bf5A
	XQGimORRfpme+TNDTt6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdhs2-0006bp-9k; Wed, 19 Jun 2019 21:11:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdhrz-0006aX-6C
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 21:11:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id a186so319041pfa.5
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 14:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hy05C9mn0/yIf2WjCYd8ymGDA+P844rg5bgddBHlUN8=;
 b=KGpaeoheFWBtMSk4WBMgOkawtt9gRWlcsmiS6qSo8xgzQC0X5za9DjD3rUH7b2a0re
 Tfg2n0jZMP+ZXKpDk2U9LapSmaxrigwOaUBbPePTSX7TI28dHCYv/th/bDTLjH3Bs2tJ
 dt8drzYooa55fn0wXwevkiH+aWBOLbRRBPZMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hy05C9mn0/yIf2WjCYd8ymGDA+P844rg5bgddBHlUN8=;
 b=iN73DYSvC/BYc6Zv1LL4dsmaCKgxDmdVVrPNsyFMuo8B/OjHHd1YsvReCKGwOQpZor
 a8gIt/2krl0F+1kNVAiw59N/2MYW85VW6aK7IsisoM6g9VfpbOOJpqU49DCjhbSaIXoW
 ut3xplQ4gXBk4/ar7731TwpgTPKmvID48ucF4M/NQJVCxshHiPDdnidGfan/c70c6ydw
 B0xrbTqR2E3aUaWOX8+MX7w3poOxQRoL9s15yKy61cFQ3be9KACfxpYHc2TB1UP2CGRi
 z+42CJ9JiuJH06am1MQaPTkO4xE5Qk/TJmelbJdNibF9oEPBmDMpGWRZiJaiRMKxA1Ou
 xQPw==
X-Gm-Message-State: APjAAAWHszX3Np+BoT8dbVi0k1OWNzumm1MNz/VMr8jvr3202miN9xsi
 LOLtjk3r8iq8zJXstAi5EmpU+A==
X-Google-Smtp-Source: APXvYqwXqPl24uyJF3v+5dkgkWEhaRF4Tfy/+nmYhsNEFIVfi0rh/PxJeKfAiWOS6/1USM4Ra2YThw==
X-Received: by 2002:a63:6b46:: with SMTP id g67mr1788869pgc.45.1560978708910; 
 Wed, 19 Jun 2019 14:11:48 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p7sm35319117pfp.131.2019.06.19.14.11.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 14:11:48 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, seanpaul@chromium.org
Subject: [PATCH v2 2/2] drm/bridge/synopsys: dw-hdmi: Allow platforms to
 provide custom audio tables
Date: Wed, 19 Jun 2019 14:07:18 -0700
Message-Id: <20190619210718.134951-2-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190619210718.134951-1-dianders@chromium.org>
References: <20190619210718.134951-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_141151_255870_30E4A509 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 maxime.ripard@bootlin.com, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, jonas@kwiboo.se,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 Zheng Yang <zhengyang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org, jbrunet@baylibre.com,
 Sam Ravnborg <sam@ravnborg.org>, Thomas Gleixner <tglx@linutronix.de>,
 cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On some platforms using dw_hdmi it may not be possible to make an HDMI
pixel clock exactly, but it may be possible to make a rate that is
close enough to be within spec.  For instance on rk3288 we can make
25,176,471 Hz instead of 25,174,825.1748... Hz (25.2 MHz / 1.001).  A
future patch to the rk3288 platform code could enable support for this
clock rate and specify the N/CTS that would be ideal.

NOTE: I haven't yet posted said patch due to complexities with knowing
whether dw_hdmi can control the dynamic PLL on rk3288.  Thus for now
there are no users of this feature yet.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Split out the ability of a platform to provide custom tables.

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 27 ++++++++++++++---------
 include/drm/bridge/dw_hdmi.h              |  8 +++++++
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 7cdffebcc7cb..b6027edf2942 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -60,13 +60,6 @@ enum hdmi_datamap {
 	YCbCr422_12B = 0x12,
 };
 
-struct dw_hdmi_audio_tmds_n {
-	unsigned long tmds;
-	unsigned int n_32k;
-	unsigned int n_44k1;
-	unsigned int n_48k;
-};
-
 /*
  * Unless otherwise noted, entries in this table are 100% optimization.
  * Values can be obtained from hdmi_compute_n() but that function is
@@ -603,6 +596,7 @@ static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
 static int hdmi_match_tmds_n_table(struct dw_hdmi *hdmi, unsigned int freq,
 				   unsigned long pixel_clk)
 {
+	const struct dw_hdmi_plat_data *plat_data = hdmi->plat_data;
 	const struct dw_hdmi_audio_tmds_n *tmds_n = NULL;
 	int mult = 1;
 	int i;
@@ -612,10 +606,21 @@ static int hdmi_match_tmds_n_table(struct dw_hdmi *hdmi, unsigned int freq,
 		freq /= 2;
 	}
 
-	for (i = 0; common_tmds_n_table[i].tmds != 0; i++) {
-		if (pixel_clk == common_tmds_n_table[i].tmds) {
-			tmds_n = &common_tmds_n_table[i];
-			break;
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
 		}
 	}
 
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
