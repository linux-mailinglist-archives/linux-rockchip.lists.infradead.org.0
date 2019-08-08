Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4EA85FD6
	for <lists+linux-rockchip@lfdr.de>; Thu,  8 Aug 2019 12:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJ0uN0KuXlo1v2Nq56815UkFBnSwFUaxZ02Js829cdA=; b=OBJz3XW/t6h7gH
	oLHbb1aNGAEF5puqlDyu+b99ZywCGBpHXgTEqrezERjC/9PecFCqBhYrUA44AOBvKMpJBfDw4g/wq
	6D8MIh4HY/ske8X+zSQ6RirCKAhslqPRho98dfRsadWX9JVID+tuDnJlUPrNltJU2XMzTf2JEDEL0
	m3jC+FmSzA6Oinzei+o6sV5NwNyYLNzsSfPFAdxWb9trKYJCaWuu/h8cExc8qhKjiu8jCZUYcRp+Z
	ezSU8yYc0OdIczpfgLPmYFZ9RqSSrJueunyZgWzfZ7+L6yVi7ICOJPnnx64NBO/dBQZGT57vDms9x
	8pQJd6e97MvHpM8IMXRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvflQ-0005tA-1a; Thu, 08 Aug 2019 10:35:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvflN-0005qq-09
 for linux-rockchip@lists.infradead.org; Thu, 08 Aug 2019 10:35:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2E89E28B682
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 06/11] media: cedrus: Cleanup control initialization
Date: Thu,  8 Aug 2019 07:34:27 -0300
Message-Id: <20190808103432.12062-7-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808103432.12062-1-ezequiel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033517_312110_DA951D79 
X-CRM114-Status: UNSURE (   8.98  )
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

In order to introduce other controls, the control initialization
needs to support an initial struct v4l2_ctrl_control.

While here, let's cleanup the control initialization,
removing unneeded fields.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes in v4:
* New patch.
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 45 +++++++++++----------
 drivers/staging/media/sunxi/cedrus/cedrus.h |  3 +-
 2 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 370937edfc14..7bdc413bf727 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -29,44 +29,51 @@
 
 static const struct cedrus_control cedrus_controls[] = {
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
-		.elem_size	= sizeof(struct v4l2_ctrl_mpeg2_slice_params),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
+		},
 		.codec		= CEDRUS_CODEC_MPEG2,
 		.required	= true,
 	},
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
-		.elem_size	= sizeof(struct v4l2_ctrl_mpeg2_quantization),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
+		},
 		.codec		= CEDRUS_CODEC_MPEG2,
 		.required	= false,
 	},
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS,
-		.elem_size	= sizeof(struct v4l2_ctrl_h264_decode_params),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS,
+		},
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS,
-		.elem_size	= sizeof(struct v4l2_ctrl_h264_slice_params),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS,
+		},
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_H264_SPS,
-		.elem_size	= sizeof(struct v4l2_ctrl_h264_sps),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_SPS,
+		},
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_H264_PPS,
-		.elem_size	= sizeof(struct v4l2_ctrl_h264_pps),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_PPS,
+		},
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
 	{
-		.id		= V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX,
-		.elem_size	= sizeof(struct v4l2_ctrl_h264_scaling_matrix),
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX,
+		},
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
@@ -106,12 +113,8 @@ static int cedrus_init_ctrls(struct cedrus_dev *dev, struct cedrus_ctx *ctx)
 		return -ENOMEM;
 
 	for (i = 0; i < CEDRUS_CONTROLS_COUNT; i++) {
-		struct v4l2_ctrl_config cfg = {};
-
-		cfg.elem_size = cedrus_controls[i].elem_size;
-		cfg.id = cedrus_controls[i].id;
-
-		ctrl = v4l2_ctrl_new_custom(hdl, &cfg, NULL);
+		ctrl = v4l2_ctrl_new_custom(hdl, &cedrus_controls[i].cfg,
+					    NULL);
 		if (hdl->error) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed to create new custom control\n");
@@ -178,7 +181,7 @@ static int cedrus_request_validate(struct media_request *req)
 			continue;
 
 		ctrl_test = v4l2_ctrl_request_hdl_ctrl_find(hdl,
-							    cedrus_controls[i].id);
+							    cedrus_controls[i].cfg.id);
 		if (!ctrl_test) {
 			v4l2_info(&ctx->dev->v4l2_dev,
 				  "Missing required codec control\n");
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 3f476d0fd981..283827656872 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -49,8 +49,7 @@ enum cedrus_h264_pic_type {
 };
 
 struct cedrus_control {
-	u32			id;
-	u32			elem_size;
+	struct v4l2_ctrl_config cfg;
 	enum cedrus_codec	codec;
 	unsigned char		required:1;
 };
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
