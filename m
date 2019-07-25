Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0426750CE
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 16:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giStFDf6qeqggX7Sdn4fQCddOEblS5wrt7jhJDbtrHY=; b=mhYPdYUwFPV0v9
	yT6mjJ2TLEOObYvCEhmQJAaDzEXw6JpenzbcfeXpytJeUiZXKZQpAIn6eqHylLMATDA1dzvGeQuF3
	wHdBZhkrhYAaghloUlq/PzK/x578mXAqDgOG3CEJvi7hcu1XZDPbXjkSMdDxfTdeziXcQ5zGoU21Z
	DaYI35zfYOxDcBetX1no1fszTdKvarsSRAp6KLptHaXN2BGzYnXej279Yxyd+jTCbLztxHJuLlO63
	t6JrS8Bfq7EEKWa++e+Ad9QQVH2lqmULJADG9kLpj8c8VYSbFzEgdSWcyfjM0aJnzXNHhf8SXjls0
	Zs9rRTfT3utX6fiFtNRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeZu-0008AP-Rl; Thu, 25 Jul 2019 14:18:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeZm-00083j-VY
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 14:18:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id F2E4328B83D
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v2 6/7] media: hantro: Move VP8 common code
Date: Thu, 25 Jul 2019 11:17:55 -0300
Message-Id: <20190725141756.2518-7-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725141756.2518-1-ezequiel@collabora.com>
References: <20190725141756.2518-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_071835_350851_465AB5B7 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In order to introduce support for RK3399 VP8 decoding,
move some common VP8 code. This will be reused by
the RK3399 implementation, reducing code duplication.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../staging/media/hantro/hantro_g1_vp8_dec.c    | 17 -----------------
 drivers/staging/media/hantro/hantro_hw.h        |  4 ++++
 drivers/staging/media/hantro/hantro_vp8.c       | 15 +++++++++++++++
 3 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index cd1fbd3a0d5f..181e2f76d8cb 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -16,8 +16,6 @@
 #include "hantro.h"
 #include "hantro_g1_regs.h"
 
-#define DEC_8190_ALIGN_MASK	0x07U
-
 /* DCT partition base address regs */
 static const struct hantro_reg vp8_dec_dct_base[8] = {
 	{ G1_REG_ADDR_STR, 0, 0xffffffff },
@@ -131,21 +129,6 @@ static const struct hantro_reg vp8_dec_pred_bc_tap[8][4] = {
 	},
 };
 
-/*
- * filter taps taken to 7-bit precision,
- * reference RFC6386#Page-16, filters[8][6]
- */
-static const u32 vp8_dec_mc_filter[8][6] = {
-	{ 0, 0, 128, 0, 0, 0 },
-	{ 0, -6, 123, 12, -1, 0 },
-	{ 2, -11, 108, 36, -8, 1 },
-	{ 0, -9, 93, 50, -6, 0 },
-	{ 3, -16, 77, 77, -16, 3 },
-	{ 0, -6, 50, 93, -9, 0 },
-	{ 1, -8, 36, 108, -11, 2 },
-	{ 0, -1, 12, 123, -6, 0 }
-};
-
 /*
  * Set loop filters
  */
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34ef24e3a9ef..185e27d47e47 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -15,6 +15,8 @@
 #include <media/vp8-ctrls.h>
 #include <media/videobuf2-core.h>
 
+#define DEC_8190_ALIGN_MASK	0x07U
+
 struct hantro_dev;
 struct hantro_ctx;
 struct hantro_buf;
@@ -93,6 +95,8 @@ extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant rk3328_vpu_variant;
 extern const struct hantro_variant rk3288_vpu_variant;
 
+extern const u32 vp8_dec_mc_filter[8][6];
+
 void hantro_watchdog(struct work_struct *work);
 void hantro_run(struct hantro_ctx *ctx);
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
index 66c45335d871..be5cb01d1309 100644
--- a/drivers/staging/media/hantro/hantro_vp8.c
+++ b/drivers/staging/media/hantro/hantro_vp8.c
@@ -31,6 +31,21 @@ struct vp8_prob_tbl_packed {
 	u8 padding3[96];
 };
 
+/*
+ * filter taps taken to 7-bit precision,
+ * reference RFC6386#Page-16, filters[8][6]
+ */
+const u32 vp8_dec_mc_filter[8][6] = {
+	{ 0, 0, 128, 0, 0, 0 },
+	{ 0, -6, 123, 12, -1, 0 },
+	{ 2, -11, 108, 36, -8, 1 },
+	{ 0, -9, 93, 50, -6, 0 },
+	{ 3, -16, 77, 77, -16, 3 },
+	{ 0, -6, 50, 93, -9, 0 },
+	{ 1, -8, 36, 108, -11, 2 },
+	{ 0, -1, 12, 123, -6, 0 }
+};
+
 void hantro_vp8_prob_update(struct hantro_ctx *ctx,
 			    const struct v4l2_ctrl_vp8_frame_header *hdr)
 {
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
