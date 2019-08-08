Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0CF85FCF
	for <lists+linux-rockchip@lfdr.de>; Thu,  8 Aug 2019 12:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9/f5rW4SSyQr3LubjulZD179kOL4mqbY0gpSoglQQg=; b=u04auHfsLKIGpZ
	5xkx4vD/xsH8biizbuFkoheIRXSxpoTu48Z3Gq88dWXaj0astzi4m1Asn61gSGevNnVQ/0vi8fGED
	zbuT0Sg7qXonr2MNNnZh9bZeTicrZ8SC46+AbTq3w5o6o6GZIHExtlUfSSIknGbjVQxs6+/kI47lb
	EOHWK+VyI4NLdz2c/GQo14OkraJC4qEbTVcOi8VehbT4x6rFtFEN4pZUSUbczvoTtn+XWPMCF7jcQ
	weGVCD6oeX2EIKbqF8rgeaq+PVJS13WxTpUgbxSEVG9tSzXIJ4MJ7Daact0KTjr070ZlnwGn7jGwP
	dH98UetKKrDF9MiaUa8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvflG-0005n7-KR; Thu, 08 Aug 2019 10:35:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvflB-00055B-Vc
 for linux-rockchip@lists.infradead.org; Thu, 08 Aug 2019 10:35:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3CA0828C90A
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 04/11] media: uapi: h264: Add the concept of start code
Date: Thu,  8 Aug 2019 07:34:25 -0300
Message-Id: <20190808103432.12062-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808103432.12062-1-ezequiel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_033506_332572_CDE090D7 
X-CRM114-Status: GOOD (  11.94  )
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

Stateless decoders have different expectations about the
start code that is prepended on H264 slices. Add a
menu control to express the supported start code types
(including no start code).

Drivers are allowed to support only one start code type,
but they can support both too.

Note that this is independent of the H264 decoding mode,
which specifies the granularity of the decoding operations.
Either in frame-based or slice-based mode, this new control
will allow to define the start code expected on H264 slices.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes in v4:
* New patch.
---
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 31 +++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls.c          |  9 ++++++
 include/media/h264-ctrls.h                    |  6 ++++
 3 files changed, 46 insertions(+)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index ea0455957149..94fd3a9b8b9e 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -2062,6 +2062,37 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
         The OUTPUT buffer should contain all slices needed to decode the
         frame/field.
 
+``V4L2_CID_MPEG_VIDEO_H264_STARTCODE (enum)``
+    Specifies the H264 slice start code expected for each slice.
+    This control shall e used to complement V4L2_PIX_FMT_H264_SLICE
+    pixel format. Drivers may expose a single or multiple
+    start codes, depending on what they can support.
+
+    .. note::
+
+       This menu control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_mpeg_video_h264_startcode
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_MPEG_VIDEO_H264_NO_STARTCODE``
+      - 0
+      - Selecting this value specifies that H264 slices are passed
+        to the driver without any start code.
+        Bla.
+    * - ``V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE``
+      - 1
+      - Selecting this value specifies that H264 slices are expected
+        to be prefixed by Annex B start codes. According to :ref:`h264`
+        valid start codes can be 3-bytes 0x000001, or 4-bytes 0x00000001.
+
 .. _v4l2-mpeg-mpeg2:
 
 ``V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS (struct)``
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index c3194299bfac..01fddb4ec640 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -407,6 +407,11 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
 		"Frame-Based",
 		NULL,
 	};
+	static const char * const h264_start_code[] = {
+		"No Start Code",
+		"Annex B Start Code",
+		NULL,
+	};
 	static const char * const mpeg_mpeg2_level[] = {
 		"Low",
 		"Main",
@@ -640,6 +645,8 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
 		return h264_fmo_map_type;
 	case V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE:
 		return h264_decoding_mode;
+	case V4L2_CID_MPEG_VIDEO_H264_STARTCODE:
+		return h264_start_code;
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
 		return mpeg_mpeg2_level;
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
@@ -860,6 +867,7 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS:		return "H264 Slice Parameters";
 	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:		return "H264 Decode Parameters";
 	case V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE:		return "H264 Decoding Mode";
+	case V4L2_CID_MPEG_VIDEO_H264_STARTCODE:		return "H264 Start Code";
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:			return "MPEG2 Level";
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:			return "MPEG2 Profile";
 	case V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP:		return "MPEG4 I-Frame QP Value";
@@ -1229,6 +1237,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE:
 	case V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE:
 	case V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE:
+	case V4L2_CID_MPEG_VIDEO_H264_STARTCODE:
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
 	case V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL:
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index e6c510877f67..31555c99f64a 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -27,6 +27,7 @@
 #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
 #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
 #define V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE	(V4L2_CID_MPEG_BASE+1005)
+#define V4L2_CID_MPEG_VIDEO_H264_STARTCODE	(V4L2_CID_MPEG_BASE+1006)
 
 /* enum v4l2_ctrl_type type values */
 #define V4L2_CTRL_TYPE_H264_SPS			0x0110
@@ -41,6 +42,11 @@ enum v4l2_mpeg_video_h264_decoding_mode {
 	V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING,
 };
 
+enum v4l2_mpeg_video_h264_start_code {
+	V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
+	V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE,
+};
+
 #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
 #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
 #define V4L2_H264_SPS_CONSTRAINT_SET2_FLAG			0x04
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
