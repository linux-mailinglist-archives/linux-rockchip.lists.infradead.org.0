Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64C1D1F13
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 05:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YOZmP/v5y5YwdaB0NstLHaWBZnHmYLQzqa1af0UAQUY=; b=e3wD5v/mcNIKXVNWr6qs/fdBY2
	9uRF6XC6PzGUwV/f5W+20UOiySre1gCmKFXvhITcIYF2KBWS4iSv6E4R8TxIa5LONaGwglMmzRESv
	NISJ/EQml/KM52Ib7jufUiBIxsoMchqh1Np3ekw2iQqskaoI+OSpISvF2A4yLzX+AzuiVS9WCivX+
	pZ4fUYkrRGxdrePBgqWVwlbYf8whmSU13YTq9OU9ESyJkqVuyse9wihO4B9PqWsDvYpopIyUFSl0U
	4T2OPsdZUnLKa4OEtlicFOmtBVShJAaw4wgQ3ZylvCJQiP7ztiHt4KpBEBWO+hBSZvY2Le1iCgwog
	iqu4kW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIPO2-0008B2-VJ; Thu, 10 Oct 2019 03:45:10 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIPNy-0007fW-DX
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 03:45:08 +0000
Received: by mail-pl1-f193.google.com with SMTP id d22so2084915pll.7
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2019 20:45:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=amRpcIpCSIzpI9qw9JunLNMzTja2mT7Cd8T4RQ8vtAc=;
 b=I3+JOveEyVLT7ejDyMu0tVXAxngX9eOMWeb52IiB3Bf7yrFrjum5lV1iNy5fXCT+3X
 0bknk4Y5Empsz7w8leNw1Nid+sYU+uhTrRpxBXwSX8zTVxqOp7pGRBcwtC5+mtz8klb3
 uIuJwixpXOMc5uy50N/dnn5TBKboibHPOt+1taYk+l9iRZCJLs97+7BqT64VRNKIXLaD
 j/Oxqj9TWx0Wf1GwdtNzvgLejJusSY1pt0/Kb7WQic0PH5jvzgIP6Lr0KzRXm/LVAw95
 iJpMEIw3A4OyZHUb3gmvjknAcgGAadDW8MwzRFtTV2jucBZLSgGD0xEETcG7JdzxA6+w
 n6jw==
X-Gm-Message-State: APjAAAUmSUw73BLNhkl35kM4Q9hqKWdiQYFyPN/7xF5GReTZQuEgIGOq
 JU9PmYdoySU6pOA8NAKrxRs=
X-Google-Smtp-Source: APXvYqw2GNqZw03SMzQITAg2WvD8DqeOWPJsN6GbPLbca485yPtQMH+MpYuHXiYyGBI2Bl4KbCj0zw==
X-Received: by 2002:a17:902:8c92:: with SMTP id
 t18mr6636599plo.76.1570679105381; 
 Wed, 09 Oct 2019 20:45:05 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id z13sm4552188pfq.121.2019.10.09.20.45.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 20:45:04 -0700 (PDT)
From: Nickey Yang <nickey.yang@rock-chips.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Subject: [PATCH 1/1] drm/rockchip: vop: add the definition of dclk_pol
Date: Thu, 10 Oct 2019 11:44:52 +0800
Message-Id: <20191010034452.20260-2-nickey.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010034452.20260-1-nickey.yang@rock-chips.com>
References: <20191010034452.20260-1-nickey.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_204506_495338_CA499B0A 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (nickey.yang05[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nickey.yang05[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com,
 seanpaul@chromium.org, laurent.pinchart@ideasonboard.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some VOP's (such as px30) dclk_pol bit is at the last.
So it is necessary to distinguish dclk_pol and pin_pol.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 12 +++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  8 +++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 45 ++++++++++++++-------
 3 files changed, 43 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 613404f86668..0d6682ed9e15 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1085,9 +1085,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 		DRM_DEV_ERROR(vop->dev, "Failed to enable vop (%d)\n", ret);
 		return;
 	}
-
-	pin_pol = BIT(DCLK_INVERT);
-	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) ?
+	pin_pol = (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) ?
 		   BIT(HSYNC_POSITIVE) : 0;
 	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC) ?
 		   BIT(VSYNC_POSITIVE) : 0;
@@ -1096,25 +1094,29 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	switch (s->output_type) {
 	case DRM_MODE_CONNECTOR_LVDS:
-		VOP_REG_SET(vop, output, rgb_en, 1);
+		VOP_REG_SET(vop, output, rgb_dclk_pol, 1);
 		VOP_REG_SET(vop, output, rgb_pin_pol, pin_pol);
+		VOP_REG_SET(vop, output, rgb_en, 1);
 		break;
 	case DRM_MODE_CONNECTOR_eDP:
+		VOP_REG_SET(vop, output, edp_dclk_pol, 1);
 		VOP_REG_SET(vop, output, edp_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, edp_en, 1);
 		break;
 	case DRM_MODE_CONNECTOR_HDMIA:
+		VOP_REG_SET(vop, output, hdmi_dclk_pol, 1);
 		VOP_REG_SET(vop, output, hdmi_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, hdmi_en, 1);
 		break;
 	case DRM_MODE_CONNECTOR_DSI:
+		VOP_REG_SET(vop, output, mipi_dclk_pol, 1);
 		VOP_REG_SET(vop, output, mipi_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, mipi_en, 1);
 		VOP_REG_SET(vop, output, mipi_dual_channel_en,
 			    !!(s->output_flags & ROCKCHIP_OUTPUT_DSI_DUAL));
 		break;
 	case DRM_MODE_CONNECTOR_DisplayPort:
-		pin_pol &= ~BIT(DCLK_INVERT);
+		VOP_REG_SET(vop, output, dp_dclk_pol, 0);
 		VOP_REG_SET(vop, output, dp_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, dp_en, 1);
 		break;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 2149a889c29d..ea1f97a5aa5d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -46,10 +46,15 @@ struct vop_modeset {
 struct vop_output {
 	struct vop_reg pin_pol;
 	struct vop_reg dp_pin_pol;
+	struct vop_reg dp_dclk_pol;
 	struct vop_reg edp_pin_pol;
+	struct vop_reg edp_dclk_pol;
 	struct vop_reg hdmi_pin_pol;
+	struct vop_reg hdmi_dclk_pol;
 	struct vop_reg mipi_pin_pol;
+	struct vop_reg mipi_dclk_pol;
 	struct vop_reg rgb_pin_pol;
+	struct vop_reg rgb_dclk_pol;
 	struct vop_reg dp_en;
 	struct vop_reg edp_en;
 	struct vop_reg hdmi_en;
@@ -294,8 +299,7 @@ enum dither_down_mode_sel {
 enum vop_pol {
 	HSYNC_POSITIVE = 0,
 	VSYNC_POSITIVE = 1,
-	DEN_NEGATIVE   = 2,
-	DCLK_INVERT    = 3
+	DEN_NEGATIVE   = 2
 };
 
 #define FRAC_16_16(mult, div)    (((mult) << 16) / (div))
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index d1494be14471..f92c899d656c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -214,9 +214,11 @@ static const struct vop_modeset px30_modeset = {
 };
 
 static const struct vop_output px30_output = {
-	.rgb_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0xf, 1),
-	.mipi_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0xf, 25),
+	.rgb_dclk_pol = VOP_REG(PX30_DSP_CTRL0, 0x1, 1),
+	.rgb_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0x7, 2),
 	.rgb_en = VOP_REG(PX30_DSP_CTRL0, 0x1, 0),
+	.mipi_dclk_pol = VOP_REG(PX30_DSP_CTRL0, 0x1, 25),
+	.mipi_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0x7, 26),
 	.mipi_en = VOP_REG(PX30_DSP_CTRL0, 0x1, 24),
 };
 
@@ -717,10 +719,14 @@ static const struct vop_win_data rk3368_vop_win_data[] = {
 };
 
 static const struct vop_output rk3368_output = {
-	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 16),
-	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 20),
-	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 24),
-	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 28),
+	.rgb_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 19),
+	.hdmi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 23),
+	.edp_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 27),
+	.mipi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 31),
+	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 16),
+	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 20),
+	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 24),
+	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 28),
 	.rgb_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 13),
 	.edp_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 14),
@@ -764,11 +770,16 @@ static const struct vop_data rk3366_vop = {
 };
 
 static const struct vop_output rk3399_output = {
-	.dp_pin_pol = VOP_REG(RK3399_DSP_CTRL1, 0xf, 16),
-	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 16),
-	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 20),
-	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 24),
-	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 28),
+	.dp_dclk_pol = VOP_REG(RK3399_DSP_CTRL1, 0x1, 19),
+	.rgb_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 19),
+	.hdmi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 23),
+	.edp_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 27),
+	.mipi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 31),
+	.dp_pin_pol = VOP_REG(RK3399_DSP_CTRL1, 0x7, 16),
+	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 16),
+	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 20),
+	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 24),
+	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 28),
 	.dp_en = VOP_REG(RK3399_SYS_CTRL, 0x1, 11),
 	.rgb_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 13),
@@ -872,14 +883,18 @@ static const struct vop_modeset rk3328_modeset = {
 };
 
 static const struct vop_output rk3328_output = {
+	.rgb_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 19),
+	.hdmi_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 23),
+	.edp_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 27),
+	.mipi_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 31),
 	.rgb_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 13),
 	.edp_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 14),
 	.mipi_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 15),
-	.rgb_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 16),
-	.hdmi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 20),
-	.edp_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 24),
-	.mipi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 28),
+	.rgb_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 16),
+	.hdmi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 20),
+	.edp_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 24),
+	.mipi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 28),
 };
 
 static const struct vop_misc rk3328_misc = {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
