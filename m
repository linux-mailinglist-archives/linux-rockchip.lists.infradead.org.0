Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7F519722E
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 03:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLPlzUNV94m539dIlTJrwedHnAhJRxhKecBIklDNkIs=; b=I3sX3uaylJ5hYn
	z/y0CQ5JXE1PEdcJre42lEc05W2J7zqbFz2GAhhCyQG8+A2zDqSqmq3O7dIDTTaUz+YGA4u0QRItL
	h+qzbk65MLyQ9u05eDd8sTlBSNZvj/NfnQItjgPF+8rJ6g3jGr0KIQ53Jd6DsbxI7b13mO9ceU8mt
	E399+vEqtbvW3B3vN3f+JsALxarUA8fCFkf4JVfXRxAqLPosPpLZc8q1clGg5F+HebZ64uSE1XyoP
	V7QLLfWy0HXe6c00A4USzJzl2Pq2HUiL5yKkqdkunbiaOIqdDO+f4Q06/FtZPE8uSRmHPZ1D+RM9q
	Upyq8eD7UI+iG26cNjlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIjVs-0007oz-MG; Mon, 30 Mar 2020 01:46:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIjVo-0007ah-LO
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 01:46:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8EA2A29471C
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/5] media: hantro: h264: Use the generic H264 reflist
 builder
Date: Sun, 29 Mar 2020 22:46:13 -0300
Message-Id: <20200330014616.10621-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200330014616.10621-1-ezequiel@collabora.com>
References: <20200330014616.10621-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_184648_967917_DA631E7D 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Now that the core provides generic reflist builders, we can use them
instead of implementing our own.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/Kconfig       |   1 +
 drivers/staging/media/hantro/hantro_h264.c | 237 +--------------------
 2 files changed, 9 insertions(+), 229 deletions(-)

diff --git a/drivers/staging/media/hantro/Kconfig b/drivers/staging/media/hantro/Kconfig
index 99aed9a5b0b9..868fe2ad439e 100644
--- a/drivers/staging/media/hantro/Kconfig
+++ b/drivers/staging/media/hantro/Kconfig
@@ -7,6 +7,7 @@ config VIDEO_HANTRO
 	select VIDEOBUF2_DMA_CONTIG
 	select VIDEOBUF2_VMALLOC
 	select V4L2_MEM2MEM_DEV
+	select V4L2_H264
 	help
 	  Support for the Hantro IP based Video Processing Units present on
 	  Rockchip and NXP i.MX8M SoCs, which accelerate video and image
diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index f2d3e81fb6ce..d561f125085a 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -11,7 +11,7 @@
  */
 
 #include <linux/types.h>
-#include <linux/sort.h>
+#include <media/v4l2-h264.h>
 #include <media/v4l2-mem2mem.h>
 
 #include "hantro.h"
@@ -240,229 +240,6 @@ static void prepare_table(struct hantro_ctx *ctx)
 	reorder_scaling_list(ctx);
 }
 
-struct hantro_h264_reflist_builder {
-	const struct v4l2_h264_dpb_entry *dpb;
-	s32 pocs[HANTRO_H264_DPB_SIZE];
-	u8 unordered_reflist[HANTRO_H264_DPB_SIZE];
-	int frame_nums[HANTRO_H264_DPB_SIZE];
-	s32 curpoc;
-	u8 num_valid;
-};
-
-static s32 get_poc(enum v4l2_field field, s32 top_field_order_cnt,
-		   s32 bottom_field_order_cnt)
-{
-	switch (field) {
-	case V4L2_FIELD_TOP:
-		return top_field_order_cnt;
-	case V4L2_FIELD_BOTTOM:
-		return bottom_field_order_cnt;
-	default:
-		break;
-	}
-
-	return min(top_field_order_cnt, bottom_field_order_cnt);
-}
-
-static void
-init_reflist_builder(struct hantro_ctx *ctx,
-		     struct hantro_h264_reflist_builder *b)
-{
-	const struct v4l2_ctrl_h264_slice_params *slice_params;
-	const struct v4l2_ctrl_h264_decode_params *dec_param;
-	const struct v4l2_ctrl_h264_sps *sps;
-	struct vb2_v4l2_buffer *buf = hantro_get_dst_buf(ctx);
-	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
-	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
-	int cur_frame_num, max_frame_num;
-	unsigned int i;
-
-	dec_param = ctx->h264_dec.ctrls.decode;
-	slice_params = &ctx->h264_dec.ctrls.slices[0];
-	sps = ctx->h264_dec.ctrls.sps;
-	max_frame_num = 1 << (sps->log2_max_frame_num_minus4 + 4);
-	cur_frame_num = slice_params->frame_num;
-
-	memset(b, 0, sizeof(*b));
-	b->dpb = dpb;
-	b->curpoc = get_poc(buf->field, dec_param->top_field_order_cnt,
-			    dec_param->bottom_field_order_cnt);
-
-	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++) {
-		int buf_idx;
-
-		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
-			continue;
-
-		buf_idx = vb2_find_timestamp(cap_q, dpb[i].reference_ts, 0);
-		if (buf_idx < 0)
-			continue;
-
-		buf = to_vb2_v4l2_buffer(vb2_get_buffer(cap_q, buf_idx));
-
-		/*
-		 * Handle frame_num wraparound as described in section
-		 * '8.2.4.1 Decoding process for picture numbers' of the spec.
-		 * TODO: This logic will have to be adjusted when we start
-		 * supporting interlaced content.
-		 */
-		if (dpb[i].frame_num > cur_frame_num)
-			b->frame_nums[i] = (int)dpb[i].frame_num - max_frame_num;
-		else
-			b->frame_nums[i] = dpb[i].frame_num;
-
-		b->pocs[i] = get_poc(buf->field, dpb[i].top_field_order_cnt,
-				     dpb[i].bottom_field_order_cnt);
-		b->unordered_reflist[b->num_valid] = i;
-		b->num_valid++;
-	}
-
-	for (i = b->num_valid; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++)
-		b->unordered_reflist[i] = i;
-}
-
-static int p_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
-{
-	const struct hantro_h264_reflist_builder *builder = data;
-	const struct v4l2_h264_dpb_entry *a, *b;
-	u8 idxa, idxb;
-
-	idxa = *((u8 *)ptra);
-	idxb = *((u8 *)ptrb);
-	a = &builder->dpb[idxa];
-	b = &builder->dpb[idxb];
-
-	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
-	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
-		/* Short term pics firt. */
-		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
-			return -1;
-		else
-			return 1;
-	}
-
-	/*
-	 * Short term pics in descending pic num order, long term ones in
-	 * ascending order.
-	 */
-	if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
-		return HANTRO_CMP(builder->frame_nums[idxb],
-				  builder->frame_nums[idxa]);
-
-	return HANTRO_CMP(a->pic_num, b->pic_num);
-}
-
-static int b0_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
-{
-	const struct hantro_h264_reflist_builder *builder = data;
-	const struct v4l2_h264_dpb_entry *a, *b;
-	s32 poca, pocb;
-	u8 idxa, idxb;
-
-	idxa = *((u8 *)ptra);
-	idxb = *((u8 *)ptrb);
-	a = &builder->dpb[idxa];
-	b = &builder->dpb[idxb];
-
-	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
-	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
-		/* Short term pics firt. */
-		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
-			return -1;
-		else
-			return 1;
-	}
-
-	/* Long term pics in ascending pic num order. */
-	if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-		return HANTRO_CMP(a->pic_num, b->pic_num);
-
-	poca = builder->pocs[idxa];
-	pocb = builder->pocs[idxb];
-
-	/*
-	 * Short term pics with POC < cur POC first in POC descending order
-	 * followed by short term pics with POC > cur POC in POC ascending
-	 * order.
-	 */
-	if ((poca < builder->curpoc) != (pocb < builder->curpoc))
-		return HANTRO_CMP(poca, pocb);
-	else if (poca < builder->curpoc)
-		return HANTRO_CMP(pocb, poca);
-
-	return HANTRO_CMP(poca, pocb);
-}
-
-static int b1_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
-{
-	const struct hantro_h264_reflist_builder *builder = data;
-	const struct v4l2_h264_dpb_entry *a, *b;
-	s32 poca, pocb;
-	u8 idxa, idxb;
-
-	idxa = *((u8 *)ptra);
-	idxb = *((u8 *)ptrb);
-	a = &builder->dpb[idxa];
-	b = &builder->dpb[idxb];
-
-	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
-	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
-		/* Short term pics firt. */
-		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
-			return -1;
-		else
-			return 1;
-	}
-
-	/* Long term pics in ascending pic num order. */
-	if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-		return HANTRO_CMP(a->pic_num, b->pic_num);
-
-	poca = builder->pocs[idxa];
-	pocb = builder->pocs[idxb];
-
-	/*
-	 * Short term pics with POC > cur POC first in POC ascending order
-	 * followed by short term pics with POC < cur POC in POC descending
-	 * order.
-	 */
-	if ((poca < builder->curpoc) != (pocb < builder->curpoc))
-		return HANTRO_CMP(pocb, poca);
-	else if (poca < builder->curpoc)
-		return HANTRO_CMP(pocb, poca);
-
-	return HANTRO_CMP(poca, pocb);
-}
-
-static void
-build_p_ref_list(const struct hantro_h264_reflist_builder *builder,
-		 u8 *reflist)
-{
-	memcpy(reflist, builder->unordered_reflist,
-	       sizeof(builder->unordered_reflist));
-	sort_r(reflist, builder->num_valid, sizeof(*reflist),
-	       p_ref_list_cmp, NULL, builder);
-}
-
-static void
-build_b_ref_lists(const struct hantro_h264_reflist_builder *builder,
-		  u8 *b0_reflist, u8 *b1_reflist)
-{
-	memcpy(b0_reflist, builder->unordered_reflist,
-	       sizeof(builder->unordered_reflist));
-	sort_r(b0_reflist, builder->num_valid, sizeof(*b0_reflist),
-	       b0_ref_list_cmp, NULL, builder);
-
-	memcpy(b1_reflist, builder->unordered_reflist,
-	       sizeof(builder->unordered_reflist));
-	sort_r(b1_reflist, builder->num_valid, sizeof(*b1_reflist),
-	       b1_ref_list_cmp, NULL, builder);
-
-	if (builder->num_valid > 1 &&
-	    !memcmp(b1_reflist, b0_reflist, builder->num_valid))
-		swap(b1_reflist[0], b1_reflist[1]);
-}
-
 static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
 			    const struct v4l2_h264_dpb_entry *b)
 {
@@ -560,7 +337,7 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 {
 	struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
 	struct hantro_h264_dec_ctrls *ctrls = &h264_ctx->ctrls;
-	struct hantro_h264_reflist_builder reflist_builder;
+	struct v4l2_h264_reflist_builder reflist_builder;
 
 	hantro_start_prepare_run(ctx);
 
@@ -596,10 +373,12 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 	prepare_table(ctx);
 
 	/* Build the P/B{0,1} ref lists. */
-	init_reflist_builder(ctx, &reflist_builder);
-	build_p_ref_list(&reflist_builder, h264_ctx->reflists.p);
-	build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
-			  h264_ctx->reflists.b1);
+	v4l2_h264_init_reflist_builder(&reflist_builder, ctrls->decode,
+				       &ctrls->slices[0], ctrls->sps,
+				       ctx->h264_dec.dpb);
+	v4l2_h264_build_p_ref_list(&reflist_builder, h264_ctx->reflists.p);
+	v4l2_h264_build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
+				    h264_ctx->reflists.b1);
 	return 0;
 }
 
-- 
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
