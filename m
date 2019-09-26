Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7C3BED5E
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Sep 2019 10:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vvJbTXrN3dVneBpbwL0SM9h3Ah7DYTeF3Aps31C25t4=; b=VEZhhVXqpN31QvjdvQW9s4jNq3
	oQnd4hoQjkuPfuJF85qvhW2Fyv4SpddhI0h1WjAU129LZOJwaq1OsZDgrJf6LpQt7KCx0BrMIcnEq
	aaNmqhuS/gHjODILNL1olBJ2ANvoI1W7QnyYRA+bdh1pc6H3BII6kGYFKF7sntJGsN0X/KzAlh1T7
	LN3FW9qHoHfxeKnE1svlwEIxiIW11NxUsdk2BZBBHirNccdoJHc4eDtHekQ1Yc4tVUU/aRN70ilIa
	EtngDLAa24evljzDk9oLaK0foi6ZvYy8CDx/JSUNg2WMvgn5uXh4Zq1NSXCzKclX+aAICwoo/3CXL
	lZzUYfsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDP7F-0000vn-5B; Thu, 26 Sep 2019 08:27:09 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDP5Y-0000Om-Qx; Thu, 26 Sep 2019 08:25:27 +0000
Received: from localhost (unknown [192.168.167.193])
 by lucky1.263xmail.com (Postfix) with ESMTP id 8A99668135;
 Thu, 26 Sep 2019 16:25:07 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24701T140118476191488S1569486296531843_; 
 Thu, 26 Sep 2019 16:25:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1af4b4c1788e9f87dccb81098897a452>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 2/3] drm/rockchip: Add rockchip_vop_get_offset to get offset
Date: Thu, 26 Sep 2019 16:24:48 +0800
Message-Id: <1569486289-152061-3-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569486289-152061-1-git-send-email-hjc@rock-chips.com>
References: <1569486289-152061-1-git-send-email-hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_012525_296470_4F5DB337 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add rockchip_vop_get_offset to get offset, this can compatible legacy
and block_h/w format describe.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 61 ++++++++++++++++++++++++-----
 1 file changed, 52 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 2f821c5..ce74218 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -249,6 +249,56 @@ static bool has_rb_swapped(uint32_t format)
 	}
 }
 
+static u32 rockchip_vop_get_offset(struct drm_plane_state *state, u8 plane)
+{
+	const struct drm_format_info *info;
+	struct drm_rect *src = &state->src;
+	struct drm_framebuffer *fb = state->fb;
+	u32 format = fb->format->format;
+	u8 h_div = 1, v_div = 1;
+	u32 block_w, block_h, block_size, block_start_y, num_hblocks;
+	u32 sample_x, sample_y;
+	u32 offset;
+
+	info = drm_format_info(format);
+	if (!info || plane >= info->num_planes)
+		return 0;
+
+	if (plane > 0) {
+		h_div = fb->format->hsub;
+		v_div = fb->format->vsub;
+	}
+
+	switch (format) {
+	case DRM_FORMAT_NV12_10:
+	case DRM_FORMAT_NV21_10:
+	case DRM_FORMAT_NV16_10:
+	case DRM_FORMAT_NV61_10:
+	case DRM_FORMAT_NV24_10:
+	case DRM_FORMAT_NV42_10:
+		block_w = drm_format_info_block_width(fb->format, plane);
+		block_h = drm_format_info_block_height(fb->format, plane);
+		block_size = fb->format->char_per_block[plane];
+
+		sample_x = (src->x1 >> 16) / h_div;
+		sample_y = (src->y1 >> 16) / v_div;
+		block_start_y = (sample_y / block_h) * block_h;
+		num_hblocks = sample_x / block_w;
+
+		offset = fb->pitches[plane] * block_start_y;
+		offset += block_size * num_hblocks;
+
+		break;
+	default:
+		offset = (src->x1 >> 16) * fb->format->cpp[plane] / h_div;
+		offset += (src->y1 >> 16) * fb->pitches[plane] / v_div;
+
+		break;
+	}
+
+	return offset;
+}
+
 static enum vop_data_format vop_convert_format(uint32_t format)
 {
 	switch (format) {
@@ -832,8 +882,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
 	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
 
-	offset = (src->x1 >> 16) * fb->format->cpp[0];
-	offset += (src->y1 >> 16) * fb->pitches[0];
+	offset = rockchip_vop_get_offset(state, 0);
 	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
 
 	/*
@@ -857,16 +906,10 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 		    (state->rotation & DRM_MODE_REFLECT_X) ? 1 : 0);
 
 	if (is_yuv) {
-		int hsub = fb->format->hsub;
-		int vsub = fb->format->vsub;
-		int bpp = fb->format->cpp[1];
-
 		uv_obj = fb->obj[1];
 		rk_uv_obj = to_rockchip_obj(uv_obj);
 
-		offset = (src->x1 >> 16) * bpp / hsub;
-		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
-
+		offset = rockchip_vop_get_offset(state, 1);
 		dma_addr = rk_uv_obj->dma_addr + offset + fb->offsets[1];
 		VOP_WIN_SET(vop, win, uv_vir, DIV_ROUND_UP(fb->pitches[1], 4));
 		VOP_WIN_SET(vop, win, uv_mst, dma_addr);
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
