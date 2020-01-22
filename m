Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F089145C43
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 Jan 2020 20:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C6xIFPO/BGEgJvMa1rDGZHEA/XUMMgCZdXTQe9u4Ea0=; b=ZqcxF9y12W1A4Z
	jkh/Qk4iiG17i4A3EHzXmI3ZElQDkqC+7FReDLHIsp3nRYOw8/oBuTP6nqgzNy/OZA4x3zZdF4DYX
	86OHBcmN8ntZIhaUZPmnsEHDrd/s5F3ytB5OQ2j7dUO/R4/I3cBm/rNohqsPB9JlouVrFaY9Gdjs2
	/242j71fTovpJA/GMma3e1otctwIvQ8j0M9NoVtNKx49HjkxLWajYR5UbgynffaCokIU4g7H/g0b3
	HqpUSgO+0lGwpZSR2KsSO/piVxTs0+aBQdSK5j9CxyX6gQ/xlVL+DdO5lJrA0qMS0krbHo6j3pnnS
	nLcrc9T4J7MJTKtY8d8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuLNa-0002u9-IT; Wed, 22 Jan 2020 19:09:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuLNK-0002kM-3w; Wed, 22 Jan 2020 19:09:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 57FAF28FD19
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH] drm/rockchip: Add GEM create ioctl support
Date: Wed, 22 Jan 2020 16:08:55 -0300
Message-Id: <20200122190855.20385-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_110914_534971_ABD08218 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Mark Yao <mark.yao@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Mark Yao <mark.yao@rock-chips.com>

Add driver-specific GEM create/offset ioctls, to allow users
to create objects of arbitrary size.

These are required to allocate buffers to be shared with
video decoder block, with hardware-specific needs such as
macroblock alignment and extra room for motion vectors.

Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 11 ++++
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 21 +++++++
 drivers/gpu/drm/rockchip/rockchip_drm_gem.h | 13 +++++
 include/uapi/drm/rockchip_drm.h             | 61 +++++++++++++++++++++
 4 files changed, 106 insertions(+)
 create mode 100644 include/uapi/drm/rockchip_drm.h

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index ca12a35483f9..bd35a0b1aa5a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -22,6 +22,7 @@
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
+#include <drm/rockchip_drm.h>
 
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_fb.h"
@@ -206,6 +207,14 @@ static void rockchip_drm_unbind(struct device *dev)
 	drm_dev_put(drm_dev);
 }
 
+static const struct drm_ioctl_desc rockchip_ioctls[] = {
+	DRM_IOCTL_DEF_DRV(ROCKCHIP_GEM_CREATE, rockchip_gem_create_ioctl,
+			  DRM_UNLOCKED | DRM_AUTH),
+	DRM_IOCTL_DEF_DRV(ROCKCHIP_GEM_MAP_OFFSET,
+			  rockchip_gem_map_offset_ioctl,
+			  DRM_UNLOCKED | DRM_AUTH),
+};
+
 static const struct file_operations rockchip_drm_driver_fops = {
 	.owner = THIS_MODULE,
 	.open = drm_open,
@@ -230,6 +239,8 @@ static struct drm_driver rockchip_drm_driver = {
 	.gem_prime_vmap		= rockchip_gem_prime_vmap,
 	.gem_prime_vunmap	= rockchip_gem_prime_vunmap,
 	.gem_prime_mmap		= rockchip_gem_mmap_buf,
+	.ioctls			= rockchip_ioctls,
+	.num_ioctls		= ARRAY_SIZE(rockchip_ioctls),
 	.fops			= &rockchip_drm_driver_fops,
 	.name	= DRIVER_NAME,
 	.desc	= DRIVER_DESC,
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 0d1884684dcb..315fa67d5668 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -12,6 +12,7 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_prime.h>
 #include <drm/drm_vma_manager.h>
+#include <drm/rockchip_drm.h>
 
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_gem.h"
@@ -428,6 +429,26 @@ int rockchip_gem_dumb_create(struct drm_file *file_priv,
 	return PTR_ERR_OR_ZERO(rk_obj);
 }
 
+int rockchip_gem_map_offset_ioctl(struct drm_device *drm, void *data,
+				  struct drm_file *file_priv)
+{
+	struct drm_rockchip_gem_map_off *args = data;
+
+	return drm_gem_dumb_map_offset(file_priv, drm, args->handle,
+				       &args->offset);
+}
+
+int rockchip_gem_create_ioctl(struct drm_device *dev, void *data,
+			      struct drm_file *file_priv)
+{
+	struct drm_rockchip_gem_create *args = data;
+	struct rockchip_gem_object *rk_obj;
+
+	rk_obj = rockchip_gem_create_with_handle(file_priv, dev, args->size,
+						 &args->handle);
+	return PTR_ERR_OR_ZERO(rk_obj);
+}
+
 /*
  * Allocate a sg_table for this GEM object.
  * Note: Both the table's contents, and the sg_table itself must be freed by
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
index 7ffc541bea07..87fe58b05bf6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
@@ -50,4 +50,17 @@ void rockchip_gem_free_object(struct drm_gem_object *obj);
 int rockchip_gem_dumb_create(struct drm_file *file_priv,
 			     struct drm_device *dev,
 			     struct drm_mode_create_dumb *args);
+
+/*
+ * request gem object creation and buffer allocation as the size
+ * that it is calculated with framebuffer information such as width,
+ * height and bpp.
+ */
+int rockchip_gem_create_ioctl(struct drm_device *dev, void *data,
+			      struct drm_file *file_priv);
+
+/* get buffer offset to map to user space. */
+int rockchip_gem_map_offset_ioctl(struct drm_device *dev, void *data,
+				  struct drm_file *file_priv);
+
 #endif /* _ROCKCHIP_DRM_GEM_H */
diff --git a/include/uapi/drm/rockchip_drm.h b/include/uapi/drm/rockchip_drm.h
new file mode 100644
index 000000000000..3185f72f36b9
--- /dev/null
+++ b/include/uapi/drm/rockchip_drm.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * Copyright (c) Fuzhou Rockchip Electronics Co.Ltd
+ * Authors:
+ *       Mark Yao <yzq@rock-chips.com>
+ *
+ * base on exynos_drm.h
+ */
+
+#ifndef _ROCKCHIP_DRM_H
+#define _ROCKCHIP_DRM_H
+
+#include <drm/drm.h>
+
+#if defined(__cplusplus)
+extern "C" {
+#endif
+
+/**
+ * User-desired buffer creation information structure.
+ *
+ * @size: user-desired memory allocation size.
+ * @flags: user request for setting memory type or cache attributes.
+ * @handle: returned a handle to created gem object.
+ *     - this handle will be set by gem module of kernel side.
+ */
+struct drm_rockchip_gem_create {
+	uint64_t size;
+	uint32_t flags;
+	uint32_t handle;
+};
+
+/**
+ * A structure for getting buffer offset.
+ *
+ * @handle: a pointer to gem object created.
+ * @pad: just padding to be 64-bit aligned.
+ * @offset: relatived offset value of the memory region allocated.
+ *     - this value should be set by user.
+ */
+struct drm_rockchip_gem_map_off {
+	uint32_t handle;
+	uint32_t pad;
+	uint64_t offset;
+};
+
+#define DRM_ROCKCHIP_GEM_CREATE		0x00
+#define DRM_ROCKCHIP_GEM_MAP_OFFSET	0x01
+
+#define DRM_IOCTL_ROCKCHIP_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + \
+		DRM_ROCKCHIP_GEM_CREATE, struct drm_rockchip_gem_create)
+
+#define DRM_IOCTL_ROCKCHIP_GEM_MAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + \
+		DRM_ROCKCHIP_GEM_MAP_OFFSET, struct drm_rockchip_gem_map_off)
+
+#if defined(__cplusplus)
+}
+#endif
+
+#endif /* _ROCKCHIP_DRM_H */
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
