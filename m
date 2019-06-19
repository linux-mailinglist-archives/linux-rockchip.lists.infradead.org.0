Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CA44B7D5
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 14:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPnzs5jxerHo9VQAXpRa1Zct/U0AZwC7Zd4Ivrh/N0k=; b=VEyCqHjtC+RiOC
	lOVXa43vgv6gzqvAmWsCbu6gNWia9ck0D3PXiOSIu7pQMvfPb+ljsUaTBwfj8HRTg7Z+4bAp0Pt53
	qVF3BIpr7RcgD5q6J01SfGiJdZm9ZMW2sOiDKR4MFI4gxhkEELzrbOJeRbiz43euEPJlwmyh0O/2n
	oUxmjTZJ8tVLV+SPzomAqzSLYHfEoeUIPw5RPl/srAaGmvmdDaTvUD/LzYT8MRQGHks82K1i6HG++
	h/CMAXT+iL/xNmbWbreKi2Ew+GfVeGJBvURijQVYher9sHfdDh3Zh0C5D5tk1N2n24sIKYMnlo527
	cBF6n3eL4SFHu1AuzBmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZVa-0005P5-SA; Wed, 19 Jun 2019 12:16:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZVH-000560-HL
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 12:15:54 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AFAC128566E;
 Wed, 19 Jun 2019 13:15:49 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH 8/9] media: hantro: Add support for H264 decoding on G1
Date: Wed, 19 Jun 2019 14:15:39 +0200
Message-Id: <20190619121540.29320-9-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619121540.29320-1-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051551_939470_9B2420EA 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Hertz Wong <hertz.wong@rock-chips.com>

Add the G1 specific bits to support H264 decoding.

Signed-off-by: Hertz Wong <hertz.wong@rock-chips.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/staging/media/hantro/Makefile         |   1 +
 .../staging/media/hantro/hantro_g1_h264_dec.c | 295 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |   1 +
 3 files changed, 297 insertions(+)
 create mode 100644 drivers/staging/media/hantro/hantro_g1_h264_dec.c

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index d63e25682287..9d66f956f2f3 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -4,6 +4,7 @@ hantro-vpu-y += \
 		hantro_drv.o \
 		hantro_v4l2.o \
 		hantro_h1_jpeg_enc.o \
+		hantro_g1_h264_dec.o \
 		hantro_g1_mpeg2_dec.o \
 		hantro_g1_vp8_dec.o \
 		rk3399_vpu_hw_jpeg_enc.o \
diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
new file mode 100644
index 000000000000..3a5be123202b
--- /dev/null
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -0,0 +1,295 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Rockchip RK3288 VPU codec driver
+ *
+ * Copyright (c) 2014 Rockchip Electronics Co., Ltd.
+ *	Hertz Wong <hertz.wong@rock-chips.com>
+ *	Herman Chen <herman.chen@rock-chips.com>
+ *
+ * Copyright (C) 2014 Google, Inc.
+ *	Tomasz Figa <tfiga@chromium.org>
+ */
+
+#include <linux/types.h>
+#include <linux/sort.h>
+
+#include <media/v4l2-mem2mem.h>
+
+#include "hantro_g1_regs.h"
+#include "hantro_hw.h"
+#include "hantro_v4l2.h"
+
+static void set_params(struct hantro_ctx *ctx)
+{
+	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
+	const struct v4l2_ctrl_h264_decode_params *dec_param = ctrls->decode;
+	const struct v4l2_ctrl_h264_slice_params *slices = ctrls->slices;
+	const struct v4l2_ctrl_h264_sps *sps = ctrls->sps;
+	const struct v4l2_ctrl_h264_pps *pps = ctrls->pps;
+	struct vb2_v4l2_buffer *src_buf = hantro_get_src_buf(ctx);
+	struct hantro_dev *vpu = ctx->dev;
+	u32 reg;
+
+	/* Decoder control register 0. */
+	reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0x0);
+	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
+		reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
+	reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
+	if (dec_param->nal_ref_idc)
+		reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
+
+	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
+	    (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD ||
+	     slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC))
+		reg |= G1_REG_DEC_CTRL0_PIC_INTERLACE_E;
+	if (slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC)
+		reg |= G1_REG_DEC_CTRL0_PIC_FIELDMODE_E;
+	if (!(slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD))
+		reg |= G1_REG_DEC_CTRL0_PIC_TOPFIELD_E;
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
+
+	/* Decoder control register 1. */
+	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(sps->pic_width_in_mbs_minus1 + 1) |
+	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(sps->pic_height_in_map_units_minus1 + 1) |
+	      G1_REG_DEC_CTRL1_REF_FRAMES(sps->max_num_ref_frames);
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL1);
+
+	/* Decoder control register 2. */
+	reg = G1_REG_DEC_CTRL2_CH_QP_OFFSET(pps->chroma_qp_index_offset) |
+	      G1_REG_DEC_CTRL2_CH_QP_OFFSET2(pps->second_chroma_qp_index_offset);
+
+	/* always use the matrix sent from userspace */
+	reg |= G1_REG_DEC_CTRL2_TYPE1_QUANT_E;
+
+	if (slices[0].flags &  V4L2_H264_SLICE_FLAG_FIELD_PIC)
+		reg |= G1_REG_DEC_CTRL2_FIELDPIC_FLAG_E;
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL2);
+
+	/* Decoder control register 3. */
+	reg = G1_REG_DEC_CTRL3_START_CODE_E |
+	      G1_REG_DEC_CTRL3_INIT_QP(pps->pic_init_qp_minus26 + 26) |
+	      G1_REG_DEC_CTRL3_STREAM_LEN(vb2_get_plane_payload(&src_buf->vb2_buf, 0));
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL3);
+
+	/* Decoder control register 4. */
+	reg = G1_REG_DEC_CTRL4_FRAMENUM_LEN(sps->log2_max_frame_num_minus4 + 4) |
+	      G1_REG_DEC_CTRL4_FRAMENUM(slices[0].frame_num) |
+	      G1_REG_DEC_CTRL4_WEIGHT_BIPR_IDC(pps->weighted_bipred_idc);
+	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
+		reg |= G1_REG_DEC_CTRL4_CABAC_E;
+	if (sps->flags & V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE)
+		reg |= G1_REG_DEC_CTRL4_DIR_8X8_INFER_E;
+	if (sps->profile_idc >= 0 && sps->chroma_format_idc == 0)
+		reg |= G1_REG_DEC_CTRL4_BLACKWHITE_E;
+	if (pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED)
+		reg |= G1_REG_DEC_CTRL4_WEIGHT_PRED_E;
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL4);
+
+	/* Decoder control register 5. */
+	reg = G1_REG_DEC_CTRL5_REFPIC_MK_LEN(slices[0].dec_ref_pic_marking_bit_size) |
+	      G1_REG_DEC_CTRL5_IDR_PIC_ID(slices[0].idr_pic_id);
+	if (pps->flags & V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED)
+		reg |= G1_REG_DEC_CTRL5_CONST_INTRA_E;
+	if (pps->flags & V4L2_H264_PPS_FLAG_DEBLOCKING_FILTER_CONTROL_PRESENT)
+		reg |= G1_REG_DEC_CTRL5_FILT_CTRL_PRES;
+	if (pps->flags & V4L2_H264_PPS_FLAG_REDUNDANT_PIC_CNT_PRESENT)
+		reg |= G1_REG_DEC_CTRL5_RDPIC_CNT_PRES;
+	if (pps->flags & V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE)
+		reg |= G1_REG_DEC_CTRL5_8X8TRANS_FLAG_E;
+	if (dec_param->flags & V4L2_H264_DECODE_PARAM_FLAG_IDR_PIC)
+		reg |= G1_REG_DEC_CTRL5_IDR_PIC_E;
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL5);
+
+	/* Decoder control register 6. */
+	reg = G1_REG_DEC_CTRL6_PPS_ID(slices[0].pic_parameter_set_id) |
+	      G1_REG_DEC_CTRL6_REFIDX0_ACTIVE(pps->num_ref_idx_l0_default_active_minus1 + 1) |
+	      G1_REG_DEC_CTRL6_REFIDX1_ACTIVE(pps->num_ref_idx_l1_default_active_minus1 + 1) |
+	      G1_REG_DEC_CTRL6_POC_LENGTH(slices[0].pic_order_cnt_bit_size);
+	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL6);
+
+	/* Error concealment register. */
+	vdpu_write_relaxed(vpu, 0, G1_REG_ERR_CONC);
+
+	/* Prediction filter tap register. */
+	vdpu_write_relaxed(vpu,
+			   G1_REG_PRED_FLT_PRED_BC_TAP_0_0(1) |
+			   G1_REG_PRED_FLT_PRED_BC_TAP_0_1(-5 & 0x3ff) |
+			   G1_REG_PRED_FLT_PRED_BC_TAP_0_2(20),
+			   G1_REG_PRED_FLT);
+
+	/* Reference picture buffer control register. */
+	vdpu_write_relaxed(vpu, 0, G1_REG_REF_BUF_CTRL);
+
+	/* Reference picture buffer control register 2. */
+	vdpu_write_relaxed(vpu, G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(8),
+			   G1_REG_REF_BUF_CTRL2);
+}
+
+static void set_ref(struct hantro_ctx *ctx)
+{
+	struct vb2_v4l2_buffer *dst_buf = hantro_get_dst_buf(ctx);
+	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
+	const u8 *b0_reflist, *b1_reflist, *p_reflist;
+	struct hantro_dev *vpu = ctx->dev;
+	u32 dpb_longterm = 0;
+	u32 dpb_valid = 0;
+	int reg_num;
+	u32 reg;
+	int i;
+
+	dst_buf = hantro_get_dst_buf(ctx);
+
+	/*
+	 * Set up bit maps of valid and long term DPBs.
+	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
+	 */
+	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
+			dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
+
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+			dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
+	}
+	vdpu_write_relaxed(vpu, dpb_valid << 16, G1_REG_VALID_REF);
+	vdpu_write_relaxed(vpu, dpb_longterm << 16, G1_REG_LT_REF);
+
+	/*
+	 * Set up reference frame picture numbers.
+	 *
+	 * Each G1_REG_REF_PIC(x) register contains numbers of two
+	 * subsequential reference pictures.
+	 */
+	for (i = 0; i < HANTRO_H264_DPB_SIZE; i += 2) {
+		reg = 0;
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+			reg |= G1_REG_REF_PIC_REFER0_NBR(dpb[i].pic_num);
+		else
+			reg |= G1_REG_REF_PIC_REFER0_NBR(dpb[i].frame_num);
+
+		if (dpb[i + 1].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+			reg |= G1_REG_REF_PIC_REFER1_NBR(dpb[i + 1].pic_num);
+		else
+			reg |= G1_REG_REF_PIC_REFER1_NBR(dpb[i + 1].frame_num);
+
+		vdpu_write_relaxed(vpu, reg, G1_REG_REF_PIC(i / 2));
+	}
+
+	b0_reflist = ctx->h264_dec.reflists.b0;
+	b1_reflist = ctx->h264_dec.reflists.b1;
+	p_reflist = ctx->h264_dec.reflists.p;
+
+	/*
+	 * Each G1_REG_BD_REF_PIC(x) register contains three entries
+	 * of each forward and backward picture list.
+	 */
+	reg_num = 0;
+	for (i = 0; i < 15; i += 3) {
+		reg = G1_REG_BD_REF_PIC_BINIT_RLIST_F0(b0_reflist[i]) |
+		      G1_REG_BD_REF_PIC_BINIT_RLIST_F1(b0_reflist[i + 1]) |
+		      G1_REG_BD_REF_PIC_BINIT_RLIST_F2(b0_reflist[i + 2]) |
+		      G1_REG_BD_REF_PIC_BINIT_RLIST_B0(b1_reflist[i]) |
+		      G1_REG_BD_REF_PIC_BINIT_RLIST_B1(b1_reflist[i + 1]) |
+		      G1_REG_BD_REF_PIC_BINIT_RLIST_B2(b1_reflist[i + 2]);
+		vdpu_write_relaxed(vpu, reg, G1_REG_BD_REF_PIC(reg_num++));
+	}
+
+	/*
+	 * G1_REG_BD_P_REF_PIC register contains last entries (index 15)
+	 * of forward and backward reference picture lists and first 4 entries
+	 * of P forward picture list.
+	 */
+	reg = G1_REG_BD_P_REF_PIC_BINIT_RLIST_F15(b0_reflist[15]) |
+	      G1_REG_BD_P_REF_PIC_BINIT_RLIST_B15(b1_reflist[15]) |
+	      G1_REG_BD_P_REF_PIC_PINIT_RLIST_F0(p_reflist[0]) |
+	      G1_REG_BD_P_REF_PIC_PINIT_RLIST_F1(p_reflist[1]) |
+	      G1_REG_BD_P_REF_PIC_PINIT_RLIST_F2(p_reflist[2]) |
+	      G1_REG_BD_P_REF_PIC_PINIT_RLIST_F3(p_reflist[3]);
+	vdpu_write_relaxed(vpu, reg, G1_REG_BD_P_REF_PIC);
+
+	/*
+	 * Each G1_REG_FWD_PIC(x) register contains six consecutive
+	 * entries of P forward picture list, starting from index 4.
+	 */
+	reg_num = 0;
+	for (i = 4; i < HANTRO_H264_DPB_SIZE; i += 6) {
+		reg = G1_REG_FWD_PIC_PINIT_RLIST_F0(p_reflist[i]) |
+		      G1_REG_FWD_PIC_PINIT_RLIST_F1(p_reflist[i + 1]) |
+		      G1_REG_FWD_PIC_PINIT_RLIST_F2(p_reflist[i + 2]) |
+		      G1_REG_FWD_PIC_PINIT_RLIST_F3(p_reflist[i + 3]) |
+		      G1_REG_FWD_PIC_PINIT_RLIST_F4(p_reflist[i + 4]) |
+		      G1_REG_FWD_PIC_PINIT_RLIST_F5(p_reflist[i + 5]);
+		vdpu_write_relaxed(vpu, reg, G1_REG_FWD_PIC(reg_num++));
+	}
+
+	/* Set up addresses of DPB buffers. */
+	for (i = 0; i < HANTRO_H264_DPB_SIZE; i++) {
+		struct vb2_buffer *buf =  hantro_h264_get_ref_buf(ctx, i);
+
+		vdpu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(buf, 0),
+				   G1_REG_ADDR_REF(i));
+	}
+}
+
+static void set_buffers(struct hantro_ctx *ctx)
+{
+	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
+	struct vb2_v4l2_buffer *src_buf, *dst_buf;
+	struct hantro_dev *vpu = ctx->dev;
+	dma_addr_t src_dma, dst_dma;
+
+	src_buf = hantro_get_src_buf(ctx);
+	dst_buf = hantro_get_dst_buf(ctx);
+
+	/* Source (stream) buffer. */
+	src_dma = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
+	vdpu_write_relaxed(vpu, src_dma, G1_REG_ADDR_STR);
+
+	/* Destination (decoded frame) buffer. */
+	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	vdpu_write_relaxed(vpu, dst_dma, G1_REG_ADDR_DST);
+
+	/* Higher profiles require DMV buffer appended to reference frames. */
+	if (ctrls->sps->profile_idc > 66) {
+		size_t sizeimage = ctx->dst_fmt.plane_fmt[0].sizeimage;
+		size_t mv_offset = round_up(sizeimage, 8);
+
+		if (ctrls->slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
+			mv_offset += 32 * H264_MB_WIDTH(ctx->dst_fmt.width);
+
+		vdpu_write_relaxed(vpu, dst_dma + mv_offset,
+				   G1_REG_ADDR_DIR_MV);
+	}
+
+	/* Auxiliary buffer prepared in hantro_g1_h264_dec_prepare_table(). */
+	vdpu_write_relaxed(vpu, ctx->h264_dec.priv.dma, G1_REG_ADDR_QTABLE);
+}
+
+void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	/* Prepare the H264 decoder context. */
+	if (hantro_h264_dec_prepare_run(ctx))
+		return;
+
+	/* Configure hardware registers. */
+	set_params(ctx);
+	set_ref(ctx);
+	set_buffers(ctx);
+
+	hantro_finish_run(ctx);
+
+	/* Start decoding! */
+	vdpu_write_relaxed(vpu,
+			   G1_REG_CONFIG_DEC_AXI_RD_ID(0xffu) |
+			   G1_REG_CONFIG_DEC_TIMEOUT_E |
+			   G1_REG_CONFIG_DEC_OUT_ENDIAN |
+			   G1_REG_CONFIG_DEC_STRENDIAN_E |
+			   G1_REG_CONFIG_DEC_MAX_BURST(16) |
+			   G1_REG_CONFIG_DEC_OUTSWAP32_E |
+			   G1_REG_CONFIG_DEC_INSWAP32_E |
+			   G1_REG_CONFIG_DEC_STRSWAP32_E |
+			   G1_REG_CONFIG_DEC_CLK_GATE_E,
+			   G1_REG_CONFIG);
+	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
+}
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index cc4fbeb9011f..7a9051faf99f 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -154,6 +154,7 @@ void hantro_jpeg_enc_exit(struct hantro_ctx *ctx);
 struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
 					   unsigned int dpb_idx);
 int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx);
+void hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
 int hantro_h264_dec_init(struct hantro_ctx *ctx);
 void hantro_h264_dec_exit(struct hantro_ctx *ctx);
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
