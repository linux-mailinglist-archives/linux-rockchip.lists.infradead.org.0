Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0F4EEDFF
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 Nov 2019 23:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5GO6A+/2xW7YWYusAJehfOqSQgKHmkZ8qL7bYZwhiB0=; b=iyOp41IXc+cNDLwSSk1xqGdMYE
	ahH3vrfZYDG1rIY4tk37rHFYF+ojd7ugwgiB4ARbR5ocWlto2O8CMt5w//yopev7Wjcf8rJZ1HyR3
	/J42IFvgEItNqHRqiVQKPIG8aJGRetIlIsjqOIRN42AF5UeRR3xKGagAQ3Bgx4u3LWTXsLXf4Ic2V
	wn+xRTxGx3QRrFkE4heLq64zJQT0sZRwox46ljFBHSgoXre9Vd7XrYMzhCr+eAl8I5M0wUqJFjAKN
	LHlK5eQxsZx1SfMFts0xkNK1VItKSDVCYauiMTMSAsltAimI/CssNC9P39uIvOGz0n4lPrjQ7I/m8
	CcKTnDCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkaZ-0006uA-Nt; Mon, 04 Nov 2019 22:12:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkaV-0006rO-RV
 for linux-rockchip@lists.infradead.org; Mon, 04 Nov 2019 22:12:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id D30DB28BA68
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCHv2 2/4] drm/malidp: use afbc helpers
Date: Mon,  4 Nov 2019 23:12:26 +0100
Message-Id: <20191104221228.3588-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104221228.3588-1-andrzej.p@collabora.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_141240_146783_EF2A625B 
X-CRM114-Status: GOOD (  11.15  )
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
 drivers/gpu/drm/arm/malidp_drv.c | 66 ++++++--------------------------
 1 file changed, 12 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index 37d92a06318e..ab93588cc8eb 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -15,6 +15,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/debugfs.h>
 
+#include <drm/drm_afbc.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
@@ -35,8 +36,6 @@
 #include "malidp_hw.h"
 
 #define MALIDP_CONF_VALID_TIMEOUT	250
-#define AFBC_HEADER_SIZE		16
-#define AFBC_SUPERBLK_ALIGNMENT		128
 
 static void malidp_write_gamma_table(struct malidp_hw_device *hwdev,
 				     u32 data[MALIDP_COEFFTAB_NUM_COEFFS])
@@ -277,24 +276,8 @@ malidp_verify_afbc_framebuffer_caps(struct drm_device *dev,
 					mode_cmd->modifier[0]) == false)
 		return false;
 
-	if (mode_cmd->offsets[0] != 0) {
-		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
-		return false;
-	}
-
-	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
-	case AFBC_SIZE_16X16:
-		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
-			DRM_DEBUG_KMS("AFBC buffers must be aligned to 16 pixels\n");
-			return false;
-		}
-		break;
-	default:
-		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
-		return false;
-	}
-
-	return true;
+	return drm_afbc_check_offset(dev, mode_cmd) &&
+	       drm_afbc_check_size_align(dev, mode_cmd);
 }
 
 static bool
@@ -302,54 +285,29 @@ malidp_verify_afbc_framebuffer_size(struct drm_device *dev,
 				    struct drm_file *file,
 				    const struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	int n_superblocks = 0;
 	const struct drm_format_info *info;
 	struct drm_gem_object *objs = NULL;
-	u32 afbc_superblock_size = 0, afbc_superblock_height = 0;
-	u32 afbc_superblock_width = 0, afbc_size = 0;
 	int bpp = 0;
-
-	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
-	case AFBC_SIZE_16X16:
-		afbc_superblock_height = 16;
-		afbc_superblock_width = 16;
-		break;
-	default:
-		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
-		return false;
-	}
+	u32 w, h;
 
 	info = drm_get_format_info(dev, mode_cmd);
-
-	n_superblocks = (mode_cmd->width / afbc_superblock_width) *
-		(mode_cmd->height / afbc_superblock_height);
-
 	bpp = malidp_format_get_bpp(info->format);
 
-	afbc_superblock_size = (bpp * afbc_superblock_width * afbc_superblock_height)
-				/ BITS_PER_BYTE;
-
-	afbc_size = ALIGN(n_superblocks * AFBC_HEADER_SIZE, AFBC_SUPERBLK_ALIGNMENT);
-	afbc_size += n_superblocks * ALIGN(afbc_superblock_size, AFBC_SUPERBLK_ALIGNMENT);
-
-	if ((mode_cmd->width * bpp) != (mode_cmd->pitches[0] * BITS_PER_BYTE)) {
-		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) "
-			      "should be same as width (=%u) * bpp (=%u)\n",
-			      (mode_cmd->pitches[0] * BITS_PER_BYTE),
-			      mode_cmd->width, bpp);
-		return false;
-	}
-
 	objs = drm_gem_object_lookup(file, mode_cmd->handles[0]);
 	if (!objs) {
 		DRM_DEBUG_KMS("Failed to lookup GEM object\n");
 		return false;
 	}
 
-	if (objs->size < afbc_size) {
-		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
-			      objs->size, afbc_size);
+	if (!drm_afbc_get_superblk_wh(mode_cmd->modifier[0], &w, &h))
+		return false;
+
+	if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
+				    mode_cmd->width, mode_cmd->height, w, h,
+				    objs->size, mode_cmd->offsets[0],
+				    AFBC_SUPERBLK_ALIGNMENT)) {
 		drm_gem_object_put_unlocked(objs);
+
 		return false;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
