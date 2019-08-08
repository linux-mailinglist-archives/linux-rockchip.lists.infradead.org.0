Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0182C85FC9
	for <lists+linux-rockchip@lfdr.de>; Thu,  8 Aug 2019 12:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtonZtqqZIUMPBGfiUh4y/1wui02DO3dgE0dDfXxSNQ=; b=oIBiklfFuxivwK
	4/HtDSU0b9GrapBTSLqun3AUZLIEqDQv1H0LarMK18eFculdLeL2S99AyvUFj7BADSbvVVKOP4cUT
	vAW5pjJxK6A20WYvUiz0U+Jc2F67EhHlLSGvoyZcjUCaW7Vj/C66qqc3qXqA3CVeahYVBub52e22c
	ThghIy1Xi+3GqsGdekDoDTILihRYoleywXcI95b6o1AKKMTXLV/BYMFexpCQhn4aEYhxCSUdyB+A2
	yb9LkrNHHkLMvepMlIJJlrQ7H3getP2UGE8WKVHMzN/N6J1ElXML7uC7Us1lQw0n2zxXV20z6zTbE
	Qdo6g7oaVXc1aVNX+Uow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfl6-0004VL-Vt; Thu, 08 Aug 2019 10:35:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfl2-0004Re-Af
 for linux-rockchip@lists.infradead.org; Thu, 08 Aug 2019 10:34:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 14DC728C96B
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 02/11] media: uapi: h264: Rename pixel format
Date: Thu,  8 Aug 2019 07:34:23 -0300
Message-Id: <20190808103432.12062-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808103432.12062-1-ezequiel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033456_694517_69A9B124 
X-CRM114-Status: GOOD (  10.69  )
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

The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
because the pixel format would represent H264 slices without any
start code.

However, as we will now introduce a start code menu control,
give the pixel format a more meaningful name, while it's
still early enough to do so.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes in v4:
* New patch.
---
 Documentation/media/uapi/v4l/pixfmt-compressed.rst | 4 ++--
 drivers/media/v4l2-core/v4l2-ioctl.c               | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_dec.c    | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_video.c  | 6 +++---
 include/media/h264-ctrls.h                         | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
index f52a7b67023d..9b65473a2288 100644
--- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
@@ -52,9 +52,9 @@ Compressed Formats
       - ``V4L2_PIX_FMT_H264_MVC``
       - 'M264'
       - H264 MVC video elementary stream.
-    * .. _V4L2-PIX-FMT-H264-SLICE-RAW:
+    * .. _V4L2-PIX-FMT-H264-SLICE:
 
-      - ``V4L2_PIX_FMT_H264_SLICE_RAW``
+      - ``V4L2_PIX_FMT_H264_SLICE``
       - 'S264'
       - H264 parsed slice data, without the start code and as
 	extracted from the H264 bitstream.  This format is adapted for
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index bb5b4926538a..39f10621c91b 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1343,7 +1343,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 		case V4L2_PIX_FMT_H264:		descr = "H.264"; break;
 		case V4L2_PIX_FMT_H264_NO_SC:	descr = "H.264 (No Start Codes)"; break;
 		case V4L2_PIX_FMT_H264_MVC:	descr = "H.264 MVC"; break;
-		case V4L2_PIX_FMT_H264_SLICE_RAW:	descr = "H.264 Parsed Slice Data"; break;
+		case V4L2_PIX_FMT_H264_SLICE:	descr = "H.264 Parsed Slice Data"; break;
 		case V4L2_PIX_FMT_H263:		descr = "H.263"; break;
 		case V4L2_PIX_FMT_MPEG1:	descr = "MPEG-1 ES"; break;
 		case V4L2_PIX_FMT_MPEG2:	descr = "MPEG-2 ES"; break;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index bdad87eb9d79..56ca4c9ad01c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -46,7 +46,7 @@ void cedrus_device_run(void *priv)
 			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
 		break;
 
-	case V4L2_PIX_FMT_H264_SLICE_RAW:
+	case V4L2_PIX_FMT_H264_SLICE:
 		run.h264.decode_params = cedrus_find_control_data(ctx,
 			V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
 		run.h264.pps = cedrus_find_control_data(ctx,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..06c695615703 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -38,7 +38,7 @@ static struct cedrus_format cedrus_formats[] = {
 		.directions	= CEDRUS_DECODE_SRC,
 	},
 	{
-		.pixelformat	= V4L2_PIX_FMT_H264_SLICE_RAW,
+		.pixelformat	= V4L2_PIX_FMT_H264_SLICE,
 		.directions	= CEDRUS_DECODE_SRC,
 	},
 	{
@@ -104,7 +104,7 @@ static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 
 	switch (pix_fmt->pixelformat) {
 	case V4L2_PIX_FMT_MPEG2_SLICE:
-	case V4L2_PIX_FMT_H264_SLICE_RAW:
+	case V4L2_PIX_FMT_H264_SLICE:
 		/* Zero bytes per line for encoded source. */
 		bytesperline = 0;
 
@@ -469,7 +469,7 @@ static int cedrus_start_streaming(struct vb2_queue *vq, unsigned int count)
 		ctx->current_codec = CEDRUS_CODEC_MPEG2;
 		break;
 
-	case V4L2_PIX_FMT_H264_SLICE_RAW:
+	case V4L2_PIX_FMT_H264_SLICE:
 		ctx->current_codec = CEDRUS_CODEC_H264;
 		break;
 
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index e1404d78d6ff..6160a69c0143 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -14,7 +14,7 @@
 #include <linux/videodev2.h>
 
 /* Our pixel format isn't stable at the moment */
-#define V4L2_PIX_FMT_H264_SLICE_RAW v4l2_fourcc('S', '2', '6', '4') /* H264 parsed slices */
+#define V4L2_PIX_FMT_H264_SLICE v4l2_fourcc('S', '2', '6', '4') /* H264 parsed slices */
 
 /*
  * This is put insanely high to avoid conflicting with controls that
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
