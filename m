Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB2F8DE44
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 22:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S38YaTjhUZD1U6tmkIqbkXipHUofcS/OgyUpSlGC0fE=; b=onjMHO1p5Cnt/p
	vqmjirqSdQxlh5gKbYr1hH+f+vrfRlE3/dLRQ+fH8cFlGX21yWGVL+hg7O/iWDCiHe6vH6Y7IFihg
	YYUFMgH38Xr3CUbFdTa6jjo9uJ9MouCayNYw8Yc34HKSrqyGiI0OYjEH7CfYOrEDgcwPrCziNfzyA
	ZqLNvqzFcrfaB2Q7k8+VKv8Ptffgni9nKtVUIcttClEUXKRL/bZ3bbuUlBcqlv2pKW/MzrKcAabzT
	C13PP6jZPtjMyLCAA+vTRjN4aTNbr6/NF6gftCHtSkTuLBtW8J33DJR9WzVdjFDKvl5TsOpA/SEIP
	T6OfaCzydwgxbYME3Waw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzVK-0003jq-V4; Wed, 14 Aug 2019 20:04:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzVG-0003fx-Qo
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 20:04:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DA6ED28C1FC
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 03/11] media: uapi: h264: Add the concept of decoding mode
Date: Wed, 14 Aug 2019 16:59:23 -0300
Message-Id: <20190814195931.6587-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814195931.6587-1-ezequiel@collabora.com>
References: <20190814195931.6587-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_130415_154157_CA5990A3 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Some stateless decoders don't support per-slice decoding granularity
(or at least not in a way that would make them efficient or easy to use).

Expose a menu to control the supported decoding modes. Drivers are
allowed to support only one decoding but they can support both too.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
---
Changes in v6:
* Fix spec, specifiying the decode-mode pixelformat modifier
  needs to be set once, as suggested by Hans.
* Rename, as suggested by Paul.
Changes in v5:
* Improve specification as suggested by Hans.
Changes in v4:
* Typos/rewording fixes
Changes in v3:
* s/per-{slice,frame} decoding/{slice,frame}-based decoding/
* Add Paul's R-b
Changes in v2:
* Allow decoding multiple slices in per-slice decoding mode
* Minor doc improvement/fixes
---
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 47 ++++++++++++++++++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |  6 ++-
 drivers/media/v4l2-core/v4l2-ctrls.c          |  9 ++++
 include/media/h264-ctrls.h                    | 10 ++++
 4 files changed, 69 insertions(+), 3 deletions(-)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index c5f39dd50043..623b34f61b32 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -1747,6 +1747,11 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     * - __u32
       - ``size``
       -
+    * - __u32
+      - ``start_byte_offset``
+        Offset (in bytes) from the beginning of the OUTPUT buffer to the start
+        of the slice. If the slice starts with a start code, then this is the
+        offset to such start code.
     * - __u32
       - ``header_bit_size``
       -
@@ -1930,7 +1935,10 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
       -
     * - __u16
       - ``num_slices``
-      - Number of slices needed to decode the current frame
+      - Number of slices needed to decode the current frame/field. When
+        operating in slice-based decoding mode (see
+        :c:type:`v4l2_mpeg_video_h264_decode_mode`), this field
+        should always be set to one.
     * - __u16
       - ``nal_ref_idc``
       - NAL reference ID value coming from the NAL Unit header
@@ -2021,6 +2029,43 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
       - 0x00000004
       - The DPB entry is a long term reference frame
 
+``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE (enum)``
+    Specifies the decoding mode to use. Currently exposes slice-based and
+    frame-based decoding but new modes might be added later on.
+    This control is used as a modifier for V4L2_PIX_FMT_H264_SLICE
+    pixel format. Applications that support V4L2_PIX_FMT_H264_SLICE
+    are required to set this control in order to specify the decoding mode
+    that is expected for the buffer.
+    Drivers may expose a single or multiple decoding modes, depending
+    on what they can support.
+
+    .. note::
+
+       This menu control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_mpeg_video_h264_decode_mode
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED``
+      - 0
+      - Decoding is done at the slice granularity.
+        v4l2_ctrl_h264_decode_params->num_slices should be set to 1.
+        The OUTPUT buffer must contain a single slice.
+    * - ``V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED``
+      - 1
+      - Decoding is done at the frame granularity.
+        v4l2_ctrl_h264_decode_params->num_slices should be set to the number of
+        slices forming a frame.
+        The OUTPUT buffer must contain all slices needed to decode the
+        frame. The OUTPUT buffer must also contain both fields.
+
 .. _v4l2-mpeg-mpeg2:
 
 ``V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS (struct)``
diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
index 9b65473a2288..d666eb51741a 100644
--- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
@@ -60,8 +60,10 @@ Compressed Formats
 	extracted from the H264 bitstream.  This format is adapted for
 	stateless video decoders that implement an H264 pipeline
 	(using the :ref:`mem2mem` and :ref:`media-request-api`).
-	Metadata associated with the frame to decode are required to
-	be passed through the ``V4L2_CID_MPEG_VIDEO_H264_SPS``,
+	This pixelformat has a modifier that must be set at least once
+	through the ``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE`` control.
+	In addition, metadata associated with the frame to decode are
+	required to be passed through the ``V4L2_CID_MPEG_VIDEO_H264_SPS``,
 	``V4L2_CID_MPEG_VIDEO_H264_PPS``,
 	``V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX``,
 	``V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS`` and
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index cd1ae016706f..2c67f9fc4d5b 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -402,6 +402,11 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
 		"Explicit",
 		NULL,
 	};
+	static const char * const h264_decode_mode[] = {
+		"Slice-Based",
+		"Frame-Based",
+		NULL,
+	};
 	static const char * const mpeg_mpeg2_level[] = {
 		"Low",
 		"Main",
@@ -633,6 +638,8 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
 		return h264_fp_arrangement_type;
 	case V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE:
 		return h264_fmo_map_type;
+	case V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE:
+		return h264_decode_mode;
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
 		return mpeg_mpeg2_level;
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
@@ -852,6 +859,7 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX:		return "H264 Scaling Matrix";
 	case V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS:		return "H264 Slice Parameters";
 	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:		return "H264 Decode Parameters";
+	case V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE:		return "H264 Decode Mode";
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:			return "MPEG2 Level";
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:			return "MPEG2 Profile";
 	case V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP:		return "MPEG4 I-Frame QP Value";
@@ -1220,6 +1228,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_H264_VUI_SAR_IDC:
 	case V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE:
 	case V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE:
+	case V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE:
 	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
 	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
 	case V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL:
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index 6160a69c0143..928c48c57282 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -26,6 +26,7 @@
 #define V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX	(V4L2_CID_MPEG_BASE+1002)
 #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
 #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
+#define V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE	(V4L2_CID_MPEG_BASE+1005)
 
 /* enum v4l2_ctrl_type type values */
 #define V4L2_CTRL_TYPE_H264_SPS			0x0110
@@ -34,6 +35,11 @@
 #define V4L2_CTRL_TYPE_H264_SLICE_PARAMS	0x0113
 #define V4L2_CTRL_TYPE_H264_DECODE_PARAMS	0x0114
 
+enum v4l2_mpeg_video_h264_decode_mode {
+	V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
+	V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED,
+};
+
 #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
 #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
 #define V4L2_H264_SPS_CONSTRAINT_SET2_FLAG			0x04
@@ -125,6 +131,10 @@ struct v4l2_h264_pred_weight_table {
 struct v4l2_ctrl_h264_slice_params {
 	/* Size in bytes, including header */
 	__u32 size;
+
+	/* Offset in bytes to the start of slice in the OUTPUT buffer. */
+	__u32 start_byte_offset;
+
 	/* Offset in bits to slice_data() from the beginning of this slice. */
 	__u32 header_bit_size;
 
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
