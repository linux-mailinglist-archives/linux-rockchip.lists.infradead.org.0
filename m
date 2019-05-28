Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38EF2CCF8
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 19:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuqYUIx6Ej5HYw4rZpyYJuN9LISD2cuBfK7kHwzpQw4=; b=FzlXLeQXNMzZDP
	wT+GECTnS9zzf4GBJ0DtAOf4AmeuQiMaC7gwvSAcGiQOPwYDWDojHvlWQEon+slwqUM44ws3Qfg1s
	8pAAxBo9ypqGwBut2ycPyUyGjffJvaIQnr9eeM1jzV2WPv4jcKBeiiC6rOtH1Zu22EVa5naiJIHFs
	4gsJKSu/bdSULbBhs+9+xA1X8C5TwiETajagv99B+3eEaR6Mw45CEXhFgbT+Vs/ef79Io9JpGQVNC
	53/vK23UNTlagB17X7pKRFm0k5y7IkigZhosnZbRxTEqI1zgpwCXUYc4PMGwMmiSvmDMUQ/Ria0tV
	mADxSQH1bhaTMKOVr2CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfVq-0007j8-LG; Tue, 28 May 2019 17:03:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfVm-0007fI-NT
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 17:03:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A1E37284AFB
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v6 07/16] rockchip/vpu: Rename rockchip_vpu_common.h into
 rockchip_vpu_v4l2.h
Date: Tue, 28 May 2019 14:02:23 -0300
Message-Id: <20190528170232.2091-8-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528170232.2091-1-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100343_187230_75F99F2C 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

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
