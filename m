Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F002EEE00
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 Nov 2019 23:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P/ua8U/yoTHUeHWAuGxbE6Uv3DgyUBRYIyijPAUOmgE=; b=LbWYRusKmA8RAn0H4w8cs/KrW8
	aGCDvuNaoRB5U57Wpi6pW7G5DGUzb26n4g+/6TuGUUwGTN1Z2OK1CLDgqYbve8TnJ3gT4YbJusnuQ
	2ZxXKdF3Gt6kyLj//xlccwaYSRCDvs3YGG1gx8EItGw/9QeqQjnBN/wfoWvZxHlwJXsULUtcA6xwJ
	kdwEBaQoFWSn1+RXSKjlnxxiHH7onAzKooMbKteHLl4gCuUvwjv8mvM7h2tMVhz/nNK6wWoieC9RI
	dVn8xWbQ+/lLbL6x4OcSUTX1UN5V11o0kRU2ZSGBFaDtck+zplYVdYbAUjs/d4p6iCeVcjbsxnz2a
	CHrITtFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkaZ-0006tb-3V; Mon, 04 Nov 2019 22:12:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkaV-0006rS-E4
 for linux-rockchip@lists.infradead.org; Mon, 04 Nov 2019 22:12:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A420228BA72
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCHv2 3/4] drm/komeda: use afbc helpers
Date: Mon,  4 Nov 2019 23:12:27 +0100
Message-Id: <20191104221228.3588-4-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104221228.3588-1-andrzej.p@collabora.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_141239_729928_141C2538 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org,
 James Wang <james.qian.wang@arm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There are afbc helpers available.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 .../arm/display/komeda/komeda_format_caps.h   |  1 -
 .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
 2 files changed, 17 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
index 32273cf18f7c..607eea80e60c 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
@@ -33,7 +33,6 @@
 
 #define AFBC_TH_LAYOUT_ALIGNMENT	8
 #define AFBC_HEADER_SIZE		16
-#define AFBC_SUPERBLK_ALIGNMENT		128
 #define AFBC_SUPERBLK_PIXELS		256
 #define AFBC_BODY_START_ALIGNMENT	1024
 #define AFBC_TH_BODY_START_ALIGNMENT	4096
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
index 1b01a625f40e..e9c87551a5b8 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
@@ -4,6 +4,7 @@
  * Author: James.Qian.Wang <james.qian.wang@arm.com>
  *
  */
+#include <drm/drm_afbc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_gem.h>
@@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
 	struct drm_framebuffer *fb = &kfb->base;
 	const struct drm_format_info *info = fb->format;
 	struct drm_gem_object *obj;
-	u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
-	u64 min_size;
+	u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
 
 	obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
 	if (!obj) {
@@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
 		return -ENOENT;
 	}
 
-	switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
-	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
-		alignment_w = 32;
-		alignment_h = 8;
-		break;
-	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
-		alignment_w = 16;
-		alignment_h = 16;
-		break;
-	default:
-		WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
-		     fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
-		break;
+	if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
+		return -EINVAL;
+
+	if ((alignment_w != 16 || alignment_h != 16) &&
+	    (alignment_w != 32 || alignment_h != 8)) {
+		DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
+			      alignment_w, alignment_h);
+
+		return -EINVAL;
 	}
 
 	/* tiled header afbc */
@@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
 		goto check_failed;
 	}
 
-	n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
-	kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
-				    alignment_header);
-
 	bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
-	kfb->afbc_size = kfb->offset_payload + n_blocks *
-			 ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
-			       AFBC_SUPERBLK_ALIGNMENT);
-	min_size = kfb->afbc_size + fb->offsets[0];
-	if (min_size > obj->size) {
-		DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
-			      obj->size, min_size);
+
+	if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
+				    mode_cmd->width, mode_cmd->height,
+				    alignment_w, alignment_h,
+				    obj->size, mode_cmd->offsets[0],
+				    AFBC_SUPERBLK_ALIGNMENT))
 		goto check_failed;
-	}
 
 	fb->obj[0] = obj;
 	return 0;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
