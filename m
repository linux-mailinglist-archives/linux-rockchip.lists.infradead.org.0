Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC976608F
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 22:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHkaZM5hCkynToXEphsFDxZhPi5LhiLjIdXWRCyX7RQ=; b=qHPdVseeGSkDpp
	uzi+qARLm/EXH2tgGTcRi9gv7HfgjtsYx1A5+V0Q36XHXxir4FeEgDChZDDSzL/oxkr63CywVOcM4
	386myLdNwUAfckegNV2LDkUKRTKxXCyhV62ptaH+QHKFPbQ/U+xF97mm5Xbbf6ny1zcxol8UrjNkc
	3rKGVvQOYdQtomRgxCSRWVp+Ft2ERv+RekVGTgD+Cv9KuOLHHBF/INY1Q/F+A/wN/Pa2QLdwTb265
	7rJQusjtbvHcaAM0kUr6opJrjXsqsEUHLp3IsoqjIXn2shp6an3cWuTTDNzhKdRo//D83Tr/utWaW
	6YZx+v68ZYRi5io9ztxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlfeo-0001kT-E8; Thu, 11 Jul 2019 20:27:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlfei-0001hQ-Pq
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 20:27:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A030728BA06
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v4 2/4] media: uapi: Add VP8 stateless decoder API
Date: Thu, 11 Jul 2019 17:26:42 -0300
Message-Id: <20190711202644.27909-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190711202644.27909-1-ezequiel@collabora.com>
References: <20190711202644.27909-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_132705_141399_B1DC35FE 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Pawel Osciak <posciak@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Pawel Osciak <posciak@chromium.org>

Add the parsed VP8 frame pixel format and controls, to be used
with the new stateless decoder API for VP8 to provide parameters
for accelerator (aka stateless) codecs.

Reviewed-by: Tomasz Figa <tfiga@chromium.org>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Pawel Osciak <posciak@chromium.org>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
--
Changes from v3:
* s/VP8 FRAME/VP8 Frame
* Specify zeroing of padding fields in the documentation.

Changes from v2:
* Rename and document macroblock_bit_offset to first_part_header_bits.
* Document num_dct_part constraints.

Changes from v1:
* Move 1-bit fields to flags in the respective structures.
* Add padding fields to make all structures 8-byte aligned.
* Reorder fields where needed to avoid padding as much as possible.
* Fix documentation as needed.

Changes from RFC:
* Make sure the uAPI has the same size on x86, x86_64, arm and arm64.
* Move entropy coder state fields to a struct.
* Move key_frame field to the flags.
* Remove unneeded first_part_offset field.
* Add documentation.
---
 Documentation/media/uapi/v4l/biblio.rst       |  10 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        | 323 ++++++++++++++++++
 .../media/uapi/v4l/pixfmt-compressed.rst      |  20 ++
 drivers/media/v4l2-core/v4l2-ctrls.c          |  10 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 include/media/v4l2-ctrls.h                    |   3 +
 include/media/vp8-ctrls.h                     | 110 ++++++
 7 files changed, 477 insertions(+)
 create mode 100644 include/media/vp8-ctrls.h

diff --git a/Documentation/media/uapi/v4l/biblio.rst b/Documentation/media/uapi/v4l/biblio.rst
index 8f4eb8823d82..ad2ff258afa8 100644
--- a/Documentation/media/uapi/v4l/biblio.rst
+++ b/Documentation/media/uapi/v4l/biblio.rst
@@ -395,3 +395,13 @@ colimg
 :title:     Color Imaging: Fundamentals and Applications
 
 :author:    Erik Reinhard et al.
+
+.. _vp8:
+
+VP8
+===
+
+
+:title:     RFC 6386: "VP8 Data Format and Decoding Guide"
+
+:author:    J. Bankoski et al.
diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index d6ea2ffd65c5..c5f39dd50043 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -2234,6 +2234,329 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     Quantization parameter for a P frame for FWHT. Valid range: from 1
     to 31.
 
+.. _v4l2-mpeg-vp8:
+
+``V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER (struct)``
+    Specifies the frame parameters for the associated VP8 parsed frame data.
+    This includes the necessary parameters for
+    configuring a stateless hardware decoding pipeline for VP8.
+    The bitstream parameters are defined according to :ref:`vp8`.
+
+    .. note::
+
+       This compound control is not yet part of the public kernel API and
+       it is expected to change.
+
+.. c:type:: v4l2_ctrl_vp8_frame_header
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{5.8cm}|p{4.8cm}|p{6.6cm}|
+
+.. flat-table:: struct v4l2_ctrl_vp8_frame_header
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - struct :c:type:`v4l2_vp8_segment_header`
+      - ``segment_header``
+      - Structure with segment-based adjustments metadata.
+    * - struct :c:type:`v4l2_vp8_loopfilter_header`
+      - ``loopfilter_header``
+      - Structure with loop filter level adjustments metadata.
+    * - struct :c:type:`v4l2_vp8_quantization_header`
+      - ``quant_header``
+      - Structure with VP8 dequantization indices metadata.
+    * - struct :c:type:`v4l2_vp8_entropy_header`
+      - ``entropy_header``
+      - Structure with VP8 entropy coder probabilities metadata.
+    * - struct :c:type:`v4l2_vp8_entropy_coder_state`
+      - ``coder_state``
+      - Structure with VP8 entropy coder state.
+    * - __u16
+      - ``width``
+      - The width of the frame. Must be set for all frames.
+    * - __u16
+      - ``height``
+      - The height of the frame. Must be set for all frames.
+    * - __u8
+      - ``horizontal_scale``
+      - Horizontal scaling factor.
+    * - __u8
+      - ``vertical_scaling factor``
+      - Vertical scale.
+    * - __u8
+      - ``version``
+      - Bitstream version.
+    * - __u8
+      - ``prob_skip_false``
+      - Indicates the probability that the macroblock is not skipped.
+    * - __u8
+      - ``prob_intra``
+      - Indicates the probability that a macroblock is intra-predicted.
+    * - __u8
+      - ``prob_last``
+      - Indicates the probability that the last reference frame is used
+        for inter-prediction
+    * - __u8
+      - ``prob_gf``
+      - Indicates the probability that the golden reference frame is used
+        for inter-prediction
+    * - __u8
+      - ``num_dct_parts``
+      - Number of DCT coefficients partitions. Must be one of: 1, 2, 4, or 8.
+    * - __u32
+      - ``first_part_size``
+      - Size of the first partition, i.e. the control partition.
+    * - __u32
+      - ``first_part_header_bits``
+      - Size in bits of the first partition header portion.
+    * - __u32
+      - ``dct_part_sizes[8]``
+      - DCT coefficients sizes.
+    * - __u64
+      - ``last_frame_ts``
+      - Timestamp for the V4L2 capture buffer to use as last reference frame, used
+        with inter-coded frames. The timestamp refers to the ``timestamp`` field in
+	struct :c:type:`v4l2_buffer`. Use the :c:func:`v4l2_timeval_to_ns()`
+	function to convert the struct :c:type:`timeval` in struct
+	:c:type:`v4l2_buffer` to a __u64.
+    * - __u64
+      - ``golden_frame_ts``
+      - Timestamp for the V4L2 capture buffer to use as last reference frame, used
+        with inter-coded frames. The timestamp refers to the ``timestamp`` field in
+	struct :c:type:`v4l2_buffer`. Use the :c:func:`v4l2_timeval_to_ns()`
+	function to convert the struct :c:type:`timeval` in struct
+	:c:type:`v4l2_buffer` to a __u64.
+    * - __u64
+      - ``alt_frame_ts``
+      - Timestamp for the V4L2 capture buffer to use as alternate reference frame, used
+        with inter-coded frames. The timestamp refers to the ``timestamp`` field in
+	struct :c:type:`v4l2_buffer`. Use the :c:func:`v4l2_timeval_to_ns()`
+	function to convert the struct :c:type:`timeval` in struct
+	:c:type:`v4l2_buffer` to a __u64.
+    * - __u64
+      - ``flags``
+      - See :ref:`Frame Header Flags <vp8_frame_header_flags>`
+
+.. _vp8_frame_header_flags:
+
+``Frame Header Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_VP8_FRAME_HEADER_FLAG_KEY_FRAME``
+      - 0x01
+      - Indicates if the frame is a key frame.
+    * - ``V4L2_VP8_FRAME_HEADER_FLAG_EXPERIMENTAL``
+      - 0x02
+      - Experimental bitstream.
+    * - ``V4L2_VP8_FRAME_HEADER_FLAG_SHOW_FRAME``
+      - 0x04
+      - Show frame flag, indicates if the frame is for display.
+    * - ``V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF``
+      - 0x08
+      - Enable/disable skipping of macroblocks with no non-zero coefficients.
+    * - ``V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_GOLDEN``
+      - 0x10
+      - Sign of motion vectors when the golden frame is referenced.
+    * - ``V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_ALT``
+      - 0x20
+      - Sign of motion vectors when the alt frame is referenced.
+
+.. c:type:: v4l2_vp8_entropy_coder_state
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp8_entropy_coder_state
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``range``
+      -
+    * - __u8
+      - ``value``
+      -
+    * - __u8
+      - ``bit_count``
+      -
+    * - __u8
+      - ``padding``
+      - Applications and drivers must set this to zero.
+
+.. c:type:: v4l2_vp8_segment_header
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp8_segment_header
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __s8
+      - ``quant_update[4]``
+      - Signed quantizer value update.
+    * - __s8
+      - ``lf_update[4]``
+      - Signed loop filter level value update.
+    * - __u8
+      - ``segment_probs[3]``
+      - Segment probabilities.
+    * - __u8
+      - ``padding``
+      - Applications and drivers must set this to zero.
+    * - __u32
+      - ``flags``
+      - See :ref:`Segment Header Flags <vp8_segment_header_flags>`
+
+.. _vp8_segment_header_flags:
+
+``Segment Header Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED``
+      - 0x01
+      - Enable/disable segment-based adjustments.
+    * - ``V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_MAP``
+      - 0x02
+      - Indicates if the macroblock segmentation map is updated in this frame.
+    * - ``V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_FEATURE_DATA``
+      - 0x04
+      - Indicates if the segment feature data is updated in this frame.
+    * - ``V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE``
+      - 0x08
+      - If is set, the segment feature data mode is delta-value.
+        If cleared, it's absolute-value.
+
+.. c:type:: v4l2_vp8_loopfilter_header
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp8_loopfilter_header
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __s8
+      - ``ref_frm_delta[4]``
+      - Reference adjustment (signed) delta value.
+    * - __s8
+      - ``mb_mode_delta[4]``
+      - Macroblock prediction mode adjustment (signed) delta value.
+    * - __u8
+      - ``sharpness_level``
+      - Sharpness level
+    * - __u8
+      - ``level``
+      - Filter level
+    * - __u16
+      - ``padding``
+      - Applications and drivers must set this to zero.
+    * - __u32
+      - ``flags``
+      - See :ref:`Loopfilter Header Flags <vp8_loopfilter_header_flags>`
+
+.. _vp8_loopfilter_header_flags:
+
+``Loopfilter Header Flags``
+
+.. cssclass:: longtable
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_VP8_LF_HEADER_ADJ_ENABLE``
+      - 0x01
+      - Enable/disable macroblock-level loop filter adjustment.
+    * - ``V4L2_VP8_LF_HEADER_DELTA_UPDATE``
+      - 0x02
+      - Indicates if the delta values used in an adjustment are updated.
+    * - ``V4L2_VP8_LF_FILTER_TYPE_SIMPLE``
+      - 0x04
+      - If set, indicates the filter type is simple.
+        If cleared, the filter type is normal.
+
+.. c:type:: v4l2_vp8_quantization_header
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp8_quantization_header
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``y_ac_qi``
+      - Luma AC coefficient table index.
+    * - __s8
+      - ``y_dc_delta``
+      - Luma DC delta vaue.
+    * - __s8
+      - ``y2_dc_delta``
+      - Y2 block DC delta value.
+    * - __s8
+      - ``y2_ac_delta``
+      - Y2 block AC delta value.
+    * - __s8
+      - ``uv_dc_delta``
+      - Chroma DC delta value.
+    * - __s8
+      - ``uv_ac_delta``
+      - Chroma AC delta value.
+    * - __u16
+      - ``padding``
+      - Applications and drivers must set this to zero.
+
+.. c:type:: v4l2_vp8_entropy_header
+
+.. cssclass:: longtable
+
+.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
+
+.. flat-table:: struct v4l2_vp8_entropy_header
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - __u8
+      - ``coeff_probs[4][8][3][11]``
+      - Coefficient update probabilities.
+    * - __u8
+      - ``y_mode_probs[4]``
+      - Luma mode update probabilities.
+    * - __u8
+      - ``uv_mode_probs[3]``
+      - Chroma mode update probabilities.
+    * - __u8
+      - ``mv_probs[2][19]``
+      - MV decoding update probabilities.
+    * - __u8
+      - ``padding[3]``
+      - Applications and drivers must set this to zero.
+
 .. raw:: latex
 
     \normalsize
diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
index 4b701fc7653e..f52a7b67023d 100644
--- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
@@ -133,6 +133,26 @@ Compressed Formats
       - ``V4L2_PIX_FMT_VP8``
       - 'VP80'
       - VP8 video elementary stream.
+    * .. _V4L2-PIX-FMT-VP8-FRAME:
+
+      - ``V4L2_PIX_FMT_VP8_FRAME``
+      - 'VP8F'
+      - VP8 parsed frame, as extracted from the container.
+	This format is adapted for stateless video decoders that implement a
+	VP8 pipeline (using the :ref:`mem2mem` and :ref:`media-request-api`).
+	Metadata associated with the frame to decode is required to be passed
+	through the ``V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER`` control.
+	See the :ref:`associated Codec Control IDs <v4l2-mpeg-vp8>`.
+	Exactly one output and one capture buffer must be provided for use with
+	this pixel format. The output buffer must contain the appropriate number
+	of macroblocks to decode a full corresponding frame to the matching
+	capture buffer.
+
+	.. note::
+
+	   This format is not yet part of the public kernel API and it
+	   is expected to change.
+
     * .. _V4L2-PIX-FMT-VP9:
 
       - ``V4L2_PIX_FMT_VP9``
diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 739418aa9108..b2c9f5816c4a 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -885,6 +885,7 @@ const char *v4l2_ctrl_get_name(u32 id)
 	case V4L2_CID_MPEG_VIDEO_VPX_P_FRAME_QP:		return "VPX P-Frame QP Value";
 	case V4L2_CID_MPEG_VIDEO_VP8_PROFILE:			return "VP8 Profile";
 	case V4L2_CID_MPEG_VIDEO_VP9_PROFILE:			return "VP9 Profile";
+	case V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER:		return "VP8 Frame Header";
 
 	/* HEVC controls */
 	case V4L2_CID_MPEG_VIDEO_HEVC_I_FRAME_QP:		return "HEVC I-Frame QP Value";
@@ -1345,6 +1346,9 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
 	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:
 		*type = V4L2_CTRL_TYPE_H264_DECODE_PARAMS;
 		break;
+	case V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER:
+		*type = V4L2_CTRL_TYPE_VP8_FRAME_HEADER;
+		break;
 	default:
 		*type = V4L2_CTRL_TYPE_INTEGER;
 		break;
@@ -1690,6 +1694,9 @@ static int std_validate_compound(const struct v4l2_ctrl *ctrl, u32 idx,
 	case V4L2_CTRL_TYPE_H264_SLICE_PARAMS:
 	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
 		break;
+
+	case V4L2_CTRL_TYPE_VP8_FRAME_HEADER:
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -2360,6 +2367,9 @@ static struct v4l2_ctrl *v4l2_ctrl_new(struct v4l2_ctrl_handler *hdl,
 	case V4L2_CTRL_TYPE_H264_DECODE_PARAMS:
 		elem_size = sizeof(struct v4l2_ctrl_h264_decode_params);
 		break;
+	case V4L2_CTRL_TYPE_VP8_FRAME_HEADER:
+		elem_size = sizeof(struct v4l2_ctrl_vp8_frame_header);
+		break;
 	default:
 		if (type < V4L2_CTRL_COMPOUND_TYPES)
 			elem_size = sizeof(s32);
diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index b1f4b991dba6..c560d942c766 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1331,6 +1331,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 		case V4L2_PIX_FMT_VC1_ANNEX_G:	descr = "VC-1 (SMPTE 412M Annex G)"; break;
 		case V4L2_PIX_FMT_VC1_ANNEX_L:	descr = "VC-1 (SMPTE 412M Annex L)"; break;
 		case V4L2_PIX_FMT_VP8:		descr = "VP8"; break;
+		case V4L2_PIX_FMT_VP8_FRAME:    descr = "VP8 Frame"; break;
 		case V4L2_PIX_FMT_VP9:		descr = "VP9"; break;
 		case V4L2_PIX_FMT_HEVC:		descr = "HEVC"; break; /* aka H.265 */
 		case V4L2_PIX_FMT_FWHT:		descr = "FWHT"; break; /* used in vicodec */
diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
index b4433483af23..6e9dc9c44bb1 100644
--- a/include/media/v4l2-ctrls.h
+++ b/include/media/v4l2-ctrls.h
@@ -20,6 +20,7 @@
 #include <media/mpeg2-ctrls.h>
 #include <media/fwht-ctrls.h>
 #include <media/h264-ctrls.h>
+#include <media/vp8-ctrls.h>
 
 /* forward references */
 struct file;
@@ -48,6 +49,7 @@ struct poll_table_struct;
  * @p_h264_scaling_matrix:	Pointer to a struct v4l2_ctrl_h264_scaling_matrix.
  * @p_h264_slice_params:	Pointer to a struct v4l2_ctrl_h264_slice_params.
  * @p_h264_decode_params:	Pointer to a struct v4l2_ctrl_h264_decode_params.
+ * @p_vp8_frame_header:		Pointer to a VP8 frame header structure.
  * @p:				Pointer to a compound value.
  */
 union v4l2_ctrl_ptr {
@@ -65,6 +67,7 @@ union v4l2_ctrl_ptr {
 	struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
 	struct v4l2_ctrl_h264_slice_params *p_h264_slice_params;
 	struct v4l2_ctrl_h264_decode_params *p_h264_decode_params;
+	struct v4l2_ctrl_vp8_frame_header *p_vp8_frame_header;
 	void *p;
 };
 
diff --git a/include/media/vp8-ctrls.h b/include/media/vp8-ctrls.h
new file mode 100644
index 000000000000..6cc2eeea4c90
--- /dev/null
+++ b/include/media/vp8-ctrls.h
@@ -0,0 +1,110 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * These are the VP8 state controls for use with stateless VP8
+ * codec drivers.
+ *
+ * It turns out that these structs are not stable yet and will undergo
+ * more changes. So keep them private until they are stable and ready to
+ * become part of the official public API.
+ */
+
+#ifndef _VP8_CTRLS_H_
+#define _VP8_CTRLS_H_
+
+#define V4L2_PIX_FMT_VP8_FRAME v4l2_fourcc('V', 'P', '8', 'F')
+
+#define V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER (V4L2_CID_MPEG_BASE + 2000)
+#define V4L2_CTRL_TYPE_VP8_FRAME_HEADER 0x301
+
+#define V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED              0x01
+#define V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_MAP           0x02
+#define V4L2_VP8_SEGMENT_HEADER_FLAG_UPDATE_FEATURE_DATA  0x04
+#define V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE     0x08
+
+struct v4l2_vp8_segment_header {
+	__s8 quant_update[4];
+	__s8 lf_update[4];
+	__u8 segment_probs[3];
+	__u8 padding;
+	__u32 flags;
+};
+
+#define V4L2_VP8_LF_HEADER_ADJ_ENABLE	0x01
+#define V4L2_VP8_LF_HEADER_DELTA_UPDATE	0x02
+#define V4L2_VP8_LF_FILTER_TYPE_SIMPLE	0x04
+struct v4l2_vp8_loopfilter_header {
+	__s8 ref_frm_delta[4];
+	__s8 mb_mode_delta[4];
+	__u8 sharpness_level;
+	__u8 level;
+	__u16 padding;
+	__u32 flags;
+};
+
+struct v4l2_vp8_quantization_header {
+	__u8 y_ac_qi;
+	__s8 y_dc_delta;
+	__s8 y2_dc_delta;
+	__s8 y2_ac_delta;
+	__s8 uv_dc_delta;
+	__s8 uv_ac_delta;
+	__u16 padding;
+};
+
+struct v4l2_vp8_entropy_header {
+	__u8 coeff_probs[4][8][3][11];
+	__u8 y_mode_probs[4];
+	__u8 uv_mode_probs[3];
+	__u8 mv_probs[2][19];
+	__u8 padding[3];
+};
+
+struct v4l2_vp8_entropy_coder_state {
+	__u8 range;
+	__u8 value;
+	__u8 bit_count;
+	__u8 padding;
+};
+
+#define V4L2_VP8_FRAME_HEADER_FLAG_KEY_FRAME		0x01
+#define V4L2_VP8_FRAME_HEADER_FLAG_EXPERIMENTAL		0x02
+#define V4L2_VP8_FRAME_HEADER_FLAG_SHOW_FRAME		0x04
+#define V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF	0x08
+#define V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_GOLDEN	0x10
+#define V4L2_VP8_FRAME_HEADER_FLAG_SIGN_BIAS_ALT	0x20
+
+#define VP8_FRAME_IS_KEY_FRAME(hdr) \
+	(!!((hdr)->flags & V4L2_VP8_FRAME_HEADER_FLAG_KEY_FRAME))
+
+struct v4l2_ctrl_vp8_frame_header {
+	struct v4l2_vp8_segment_header segment_header;
+	struct v4l2_vp8_loopfilter_header lf_header;
+	struct v4l2_vp8_quantization_header quant_header;
+	struct v4l2_vp8_entropy_header entropy_header;
+	struct v4l2_vp8_entropy_coder_state coder_state;
+
+	__u16 width;
+	__u16 height;
+
+	__u8 horizontal_scale;
+	__u8 vertical_scale;
+
+	__u8 version;
+	__u8 prob_skip_false;
+	__u8 prob_intra;
+	__u8 prob_last;
+	__u8 prob_gf;
+	__u8 num_dct_parts;
+
+	__u32 first_part_size;
+	__u32 first_part_header_bits;
+	__u32 dct_part_sizes[8];
+
+	__u64 last_frame_ts;
+	__u64 golden_frame_ts;
+	__u64 alt_frame_ts;
+
+	__u64 flags;
+};
+
+#endif
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
