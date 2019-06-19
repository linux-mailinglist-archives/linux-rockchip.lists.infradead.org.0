Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB0A4B7D0
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 14:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DFcIhmZ1dbhoiFuJ537amHCulirNc7/JWhH1om0TBI=; b=rzXhsMxTxoXK7R
	rZSbRkZMRNmbxxoYbNoco+yvnMRfYuU0BBQCeK32K/F0pKtcQqxA6BKSpxkb1tdL5wbLtooAIpxSx
	KHuY9BScRCa7Yi7aB7tezjF0aXTJ7aApemlCjojLxMSHMzvsUB3cN2x+x/YlnISsEjpGXKmQTBpcM
	1rfPm4N5qAoB3Rjn6rrvUsjGudy2X0tBr7U1it7/OfErqpWOhTaZBuFbgPsMIQYS+mOaQNoWcW0RT
	A9Jk8BK+xz5K2VStLfZvJf2ExJ+SPbE+vGtXjcTamxQ5xYiNCAdrUMV1tzlyUDopEemXd5ZLWXs+P
	gEEBm/+bUKcxJFQGRW2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZVQ-0005D4-8p; Wed, 19 Jun 2019 12:16:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZVE-00054Z-Rp
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 12:15:51 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 100A3284755;
 Wed, 19 Jun 2019 13:15:47 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH 4/9] media: hantro: Simplify the controls creation logic
Date: Wed, 19 Jun 2019 14:15:35 +0200
Message-Id: <20190619121540.29320-5-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619121540.29320-1-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051549_154138_8A0F358D 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

v4l2_ctrl_new_custom() should work for any kind of control, including
standard ones. With that change, we automatically get support for
menu controls.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/staging/media/hantro/hantro.h     |  2 --
 drivers/staging/media/hantro/hantro_drv.c | 28 +++++++----------------
 2 files changed, 8 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index f903e82c7760..cff65707285d 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -109,12 +109,10 @@ enum hantro_codec_mode {
 
 /*
  * struct hantro_ctrl - helper type to declare supported controls
- * @id:		V4L2 control ID (V4L2_CID_xxx)
  * @codec:	codec id this control belong to (HANTRO_JPEG_ENCODER, etc.)
  * @cfg:	control configuration
  */
 struct hantro_ctrl {
-	unsigned int id;
 	unsigned int codec;
 	struct v4l2_ctrl_config cfg;
 };
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index db49d643ddb7..44974aaf25ca 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -266,31 +266,29 @@ static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
 
 static const struct hantro_ctrl controls[] = {
 	{
-		.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
 		.codec = HANTRO_JPEG_ENCODER,
 		.cfg = {
+			.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
 			.min = 5,
 			.max = 100,
 			.step = 1,
 			.def = 50,
+			.ops = &hantro_ctrl_ops,
 		},
 	}, {
-		.id = V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
 		.codec = HANTRO_MPEG2_DECODER,
 		.cfg = {
-			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_slice_params),
+			.id = V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
 		},
 	}, {
-		.id = V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
 		.codec = HANTRO_MPEG2_DECODER,
 		.cfg = {
-			.elem_size = sizeof(struct v4l2_ctrl_mpeg2_quantization),
+			.id = V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
 		},
 	}, {
-		.id = V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR,
 		.codec = HANTRO_VP8_DECODER,
 		.cfg = {
-			.elem_size = sizeof(struct v4l2_ctrl_vp8_frame_header),
+			.id = V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR,
 		},
 	},
 };
@@ -306,22 +304,12 @@ static int hantro_ctrls_setup(struct hantro_dev *vpu,
 	for (i = 0; i < num_ctrls; i++) {
 		if (!(allowed_codecs & controls[i].codec))
 			continue;
-		if (!controls[i].cfg.elem_size) {
-			v4l2_ctrl_new_std(&ctx->ctrl_handler,
-					  &hantro_ctrl_ops,
-					  controls[i].id, controls[i].cfg.min,
-					  controls[i].cfg.max,
-					  controls[i].cfg.step,
-					  controls[i].cfg.def);
-		} else {
-			controls[i].cfg.id = controls[i].id;
-			v4l2_ctrl_new_custom(&ctx->ctrl_handler,
-					     &controls[i].cfg, NULL);
-		}
 
+		v4l2_ctrl_new_custom(&ctx->ctrl_handler,
+				     &controls[i].cfg, NULL);
 		if (ctx->ctrl_handler.error) {
 			vpu_err("Adding control (%d) failed %d\n",
-				controls[i].id,
+				controls[i].cfg.id,
 				ctx->ctrl_handler.error);
 			v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 			return ctx->ctrl_handler.error;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
