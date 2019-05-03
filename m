Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F4212CCF
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 13:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyFZrP2VDcGbDfr2W7FCFeCMc3MUha3cwZ2U/05qz6c=; b=c1E+2CTd7XHLth
	jTCfrk70OTnBt7wk3fcupL53VL0uvtF2qJjKQFnyvUXJp+RCRjIjkrmzkDdVHeIyKARAH0gSEFvf2
	a47jUZMrFtyNpnphfXXl+4J5J8nirExqvVmJTAPz4vysHYja6VLCycouvRY9HQMATVtXrADyeL4y+
	1Tf+T1J3zLo6tsy9TysP/YzuYReHfHMFq14GRjV7m38GPDCm+GO+W0EGfXHqKJJ1gGhRvDqliTuyW
	LCroaegRe9o1DmdTGZ7QkuJTfz6HF6peCs0x8ZR4uBWLakxpwIN4vRzVY2q3ZuV6rikWkIdS5gFSH
	MtI14bcvL0T3m2DzDaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWfG-0002zh-1C; Fri, 03 May 2019 11:47:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWf3-0002k0-M5
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 11:47:33 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C03E7283618;
 Fri,  3 May 2019 12:47:26 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v5 07/15] rockchip/vpu: Rename rockchip_vpu_common.h into
 rockchip_vpu_v4l2.h
Date: Fri,  3 May 2019 13:47:11 +0200
Message-Id: <20190503114719.28784-8-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503114719.28784-1-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044730_087233_0F202982 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

We're about to add prototypes for the vb2/v4l2 helpers shared by the
encoder/decoder logic in this file, so let's pick a name that reflects
that (rockchip_vpu_common.h was a bit to generic).

Suggested-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes from v3:
* None

Changes from v2:
* New patch
---
 drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 2 +-
 drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 2 +-
 drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c       | 2 +-
 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c       | 2 +-
 .../vpu/{rockchip_vpu_common.h => rockchip_vpu_v4l2.h}      | 6 +++---
 5 files changed, 7 insertions(+), 7 deletions(-)
 rename drivers/staging/media/rockchip/vpu/{rockchip_vpu_common.h => rockchip_vpu_v4l2.h} (88%)

diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
index 791353ae01e7..68176e91330a 100644
--- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
@@ -9,7 +9,7 @@
 #include <media/v4l2-mem2mem.h>
 #include "rockchip_vpu_jpeg.h"
 #include "rockchip_vpu.h"
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 #include "rockchip_vpu_hw.h"
 #include "rk3288_vpu_regs.h"
 
diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
index 74823d25cd8d..460edc5ebe4d 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
@@ -27,7 +27,7 @@
 #include <media/v4l2-mem2mem.h>
 #include "rockchip_vpu_jpeg.h"
 #include "rockchip_vpu.h"
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 #include "rockchip_vpu_hw.h"
 #include "rk3399_vpu_regs.h"
 
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index f47fbd0f9545..59b72245fb07 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -24,7 +24,7 @@
 #include <media/videobuf2-core.h>
 #include <media/videobuf2-vmalloc.h>
 
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 #include "rockchip_vpu.h"
 #include "rockchip_vpu_hw.h"
 
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index 4512e94c3f32..d2b4225516b5 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -28,7 +28,7 @@
 
 #include "rockchip_vpu.h"
 #include "rockchip_vpu_hw.h"
-#include "rockchip_vpu_common.h"
+#include "rockchip_vpu_v4l2.h"
 
 static const struct rockchip_vpu_fmt *
 rockchip_vpu_find_format(struct rockchip_vpu_ctx *ctx, u32 fourcc)
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_common.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
similarity index 88%
rename from drivers/staging/media/rockchip/vpu/rockchip_vpu_common.h
rename to drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
index ca77668d9579..50ad40dfb4f4 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_common.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
@@ -13,8 +13,8 @@
  * Copyright (C) 2011 Samsung Electronics Co., Ltd.
  */
 
-#ifndef ROCKCHIP_VPU_COMMON_H_
-#define ROCKCHIP_VPU_COMMON_H_
+#ifndef ROCKCHIP_VPU_V4L2_H_
+#define ROCKCHIP_VPU_V4L2_H_
 
 #include "rockchip_vpu.h"
 
@@ -26,4 +26,4 @@ void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 				    struct rockchip_vpu_ctx *ctx);
 
-#endif /* ROCKCHIP_VPU_COMMON_H_ */
+#endif /* ROCKCHIP_VPU_V4L2_H_ */
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
