Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8FEEE01
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 Nov 2019 23:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dikYD+l6/0/mjLlb16WoL/U4GhWTnkLRGP143u/rWtk=; b=mQ0S8r/BNkINFESTD4Z/c1+yIC
	Vs3nT8bHSNEbDrDsiONM1oJGWlAyd9CFn1IaTpdODfoNg4gC42A18FYFbRipjVSPy4/XXfmvygPj0
	MQJ6nYEd+Z1JCGugSpdfdJYnCZg4dyaNccXjchfK2LC2meXcUxSM8KiAJqu0fXAcaErpO3NjgIJIg
	R1yA9072rbc2k/mJbef2h1StGeYn6eQHqcVKRSHBdF3g9KtnqHyv64mNEPOJFhPWgf9FH6XdOnhmu
	DXQn2k01v22HeofJnMH4M8vEw24EU3dbaeYMKwVDpOMg4WvOTS0yeCtvnDjmsLUxK8URIUWDBFTu9
	drfrCaeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkac-0006wn-Gk; Mon, 04 Nov 2019 22:12:46 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkaV-0006rK-Do
 for linux-rockchip@lists.infradead.org; Mon, 04 Nov 2019 22:12:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 0CE9128BA65
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Date: Mon,  4 Nov 2019 23:12:25 +0100
Message-Id: <20191104221228.3588-2-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104221228.3588-1-andrzej.p@collabora.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_141239_718983_6A0FDA25 
X-CRM114-Status: GOOD (  14.35  )
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

These are useful for other users of afbc, e.g. rockchip.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/gpu/drm/Kconfig     |   8 +++
 drivers/gpu/drm/Makefile    |   1 +
 drivers/gpu/drm/arm/Kconfig |   1 +
 drivers/gpu/drm/drm_afbc.c  | 129 ++++++++++++++++++++++++++++++++++++
 include/drm/drm_afbc.h      |  36 ++++++++++
 5 files changed, 175 insertions(+)
 create mode 100644 drivers/gpu/drm/drm_afbc.c
 create mode 100644 include/drm/drm_afbc.h

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 36357a36a281..ae1ca5e02bfe 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -205,6 +205,14 @@ config DRM_SCHED
 	tristate
 	depends on DRM
 
+config DRM_AFBC
+	tristate
+	depends on DRM
+	help
+	  AFBC is a proprietary lossless image compression protocol and format.
+	  It provides fine-grained random access and minimizes the amount of
+	  data transferred between IP blocks.
+
 source "drivers/gpu/drm/i2c/Kconfig"
 
 source "drivers/gpu/drm/arm/Kconfig"
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 9f1c7c486f88..3a5d092ea514 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -31,6 +31,7 @@ drm-$(CONFIG_OF) += drm_of.o
 drm-$(CONFIG_AGP) += drm_agpsupport.o
 drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
 drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
+drm-$(CONFIG_DRM_AFBC) += drm_afbc.o
 
 drm_vram_helper-y := drm_gem_vram_helper.o \
 		     drm_vram_helper_common.o
diff --git a/drivers/gpu/drm/arm/Kconfig b/drivers/gpu/drm/arm/Kconfig
index a204103b3efb..25c3dc408cda 100644
--- a/drivers/gpu/drm/arm/Kconfig
+++ b/drivers/gpu/drm/arm/Kconfig
@@ -29,6 +29,7 @@ config DRM_MALI_DISPLAY
 	select DRM_KMS_HELPER
 	select DRM_KMS_CMA_HELPER
 	select DRM_GEM_CMA_HELPER
+	select DRM_AFBC
 	select VIDEOMODE_HELPERS
 	help
 	  Choose this option if you want to compile the ARM Mali Display
diff --git a/drivers/gpu/drm/drm_afbc.c b/drivers/gpu/drm/drm_afbc.c
new file mode 100644
index 000000000000..010ca9eb0480
--- /dev/null
+++ b/drivers/gpu/drm/drm_afbc.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * (C) 2019 Collabora Ltd.
+ *
+ * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
+ *
+ */
+#include <linux/module.h>
+
+#include <drm/drm_afbc.h>
+#include <drm/drm_device.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_mode.h>
+#include <drm/drm_print.h>
+
+#define AFBC_HEADER_SIZE		16
+
+bool drm_afbc_check_offset(struct drm_device *dev,
+			   const struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	if (mode_cmd->offsets[0] != 0) {
+		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
+
+bool drm_afbc_check_size_align(struct drm_device *dev,
+			       const struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
+		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
+			DRM_DEBUG_KMS(
+				"AFBC buffer must be aligned to 16 pixels\n"
+			);
+			return false;
+		}
+		break;
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
+		/* fall through */
+	default:
+		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(drm_afbc_check_size_align);
+
+bool drm_afbc_get_superblk_wh(u64 modifier, u32 *w, u32 *h)
+{
+	switch (modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
+		*w = 16;
+		*h = 16;
+		break;
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
+		*w = 32;
+		*h = 8;
+		break;
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
+		/* fall through */
+	default:
+		DRM_DEBUG_KMS("Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
+			      modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
+		return false;
+	}
+	return true;
+}
+EXPORT_SYMBOL_GPL(drm_afbc_get_superblk_wh);
+
+bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
+				u32 w, u32 h, u32 superblk_w, u32 superblk_h,
+				size_t size, u32 offset, u32 hdr_align,
+				u32 *payload_off, u32 *total_size)
+{
+	int n_superblks = 0;
+	u32 superblk_sz = 0;
+	u32 afbc_size = 0;
+
+	n_superblks = (w / superblk_w) * (h / superblk_h);
+	superblk_sz = (bpp * superblk_w * superblk_h) / BITS_PER_BYTE;
+	afbc_size = ALIGN(n_superblks * AFBC_HEADER_SIZE, hdr_align);
+	*payload_off = afbc_size;
+
+	afbc_size += n_superblks * ALIGN(superblk_sz, AFBC_SUPERBLK_ALIGNMENT);
+	*total_size = afbc_size + offset;
+
+	if ((w * bpp) != (pitch * BITS_PER_BYTE)) {
+		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) should be same as width (=%u) * bpp (=%u)\n",
+			      pitch * BITS_PER_BYTE, w, bpp
+		);
+		return false;
+	}
+
+	if (size < afbc_size) {
+		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
+			      size, afbc_size
+		);
+
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL(drm_afbc_check_fb_size_ret);
+
+bool drm_afbc_check_fb_size(u32 pitch, int bpp,
+			    u32 w, u32 h, u32 superblk_w, u32 superblk_h,
+			    size_t size, u32 offset, u32 hdr_align)
+{
+	u32 payload_offset, total_size;
+
+	return drm_afbc_check_fb_size_ret(pitch, bpp, w, h,
+					  superblk_w, superblk_h,
+					  size, offset, hdr_align,
+					  &payload_offset, &total_size);
+}
+EXPORT_SYMBOL(drm_afbc_check_fb_size);
diff --git a/include/drm/drm_afbc.h b/include/drm/drm_afbc.h
new file mode 100644
index 000000000000..b28ae2849f96
--- /dev/null
+++ b/include/drm/drm_afbc.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * (C) 2019 Collabora Ltd.
+ *
+ * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
+ *
+ */
+#ifndef __DRM_AFBC_H__
+#define __DRM_AFBC_H__
+
+#include <linux/types.h>
+
+struct drm_device;
+struct drm_mode_fb_cmd2;
+struct drm_gem_object;
+
+#define AFBC_SUPERBLK_ALIGNMENT		128
+
+bool drm_afbc_check_offset(struct drm_device *dev,
+			   const struct drm_mode_fb_cmd2 *mode_cmd);
+
+bool drm_afbc_check_size_align(struct drm_device *dev,
+			       const struct drm_mode_fb_cmd2 *mode_cmd);
+
+bool drm_afbc_check_fb_size_ret(u32 pitch, int bpp,
+				u32 w, u32 h, u32 superblk_w, u32 superblk_h,
+				size_t size, u32 offset, u32 hdr_align,
+				u32 *payload_off, u32 *total_size);
+
+bool drm_afbc_check_fb_size(u32 pitch, int bpp,
+			    u32 w, u32 h, u32 superblk_w, u32 superblk_h,
+			    size_t size, u32 offset, u32 hdr_align);
+
+bool drm_afbc_get_superblk_wh(u64 modifier, u32 *w, u32 *h);
+
+#endif /* __DRM_AFBC_H__ */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
