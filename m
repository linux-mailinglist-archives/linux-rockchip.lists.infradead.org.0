Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A48011E3F5
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 13:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghL2ailFGMP++6uhxLDFO78BTiwJaz9kFEnramq7X04=; b=gd2CXamNyTxQdA
	lBJgnrbVpj0T0Tf0YpEv7YhQVXJtr7Z3ZkxhqfQZn9d7CThhnhWAttQKrBWkuHnysQDP+4hXZ6gC9
	sHo/2WzNmN5sFhK/ITpiOXR4x5XwRamJoP9VUiHfRRNp0sLQ1HNJuKBXBoY6veVVT/wL3XNjR/TSG
	mY2ASTUxUc9NdU4fZq7ZZ6VvtDKtiRTV8vJ+OnrNmkn5oBWZjYyC/r/zy1ikfax+HAVh1Q2rUJPaQ
	2ADrjyVOWu4r8xlQAp0GJCyrRgG5BEQGBGv+tl/mhG8J4RPWD121QroGBlg+JB2ZZC82RQ1hVqfUa
	RON2cC8t4LBhBpw2K3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkSw-0000gw-Pz; Fri, 13 Dec 2019 12:54:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkSj-0000Wt-4B
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 12:54:32 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C491E292CD0;
 Fri, 13 Dec 2019 12:54:20 +0000 (GMT)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v3 3/7] media: v4l2-core: Add helpers to build the H264
 P/B0/B1 reflists
Date: Fri, 13 Dec 2019 13:54:10 +0100
Message-Id: <20191213125414.90725-4-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213125414.90725-1-boris.brezillon@collabora.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_045429_430438_AAEAF84B 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Building those list is a standard procedure described in section
'8.2.4 Decoding process for reference picture lists construction' of
the H264 specification.

We already have 2 drivers needing the same logic (hantro and rkvdec) and
I suspect we will soon have more.

Let's provide generic helpers to create those lists.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v3:
* New patch
---
 drivers/media/v4l2-core/Kconfig     |   4 +
 drivers/media/v4l2-core/Makefile    |   1 +
 drivers/media/v4l2-core/v4l2-h264.c | 258 ++++++++++++++++++++++++++++
 include/media/v4l2-h264.h           |  86 ++++++++++
 4 files changed, 349 insertions(+)
 create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
 create mode 100644 include/media/v4l2-h264.h

diff --git a/drivers/media/v4l2-core/Kconfig b/drivers/media/v4l2-core/Kconfig
index 39e3fb30ba0b..8a4ccfbca8cf 100644
--- a/drivers/media/v4l2-core/Kconfig
+++ b/drivers/media/v4l2-core/Kconfig
@@ -45,6 +45,10 @@ config VIDEO_PCI_SKELETON
 config VIDEO_TUNER
 	tristate
 
+# Used by drivers that need v4l2-h264.ko
+config V4L2_H264
+	tristate
+
 # Used by drivers that need v4l2-mem2mem.ko
 config V4L2_MEM2MEM_DEV
 	tristate
diff --git a/drivers/media/v4l2-core/Makefile b/drivers/media/v4l2-core/Makefile
index 786bd1ec4d1b..c5c53e0941ad 100644
--- a/drivers/media/v4l2-core/Makefile
+++ b/drivers/media/v4l2-core/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_VIDEO_V4L2) += v4l2-dv-timings.o
 obj-$(CONFIG_VIDEO_TUNER) += tuner.o
 
 obj-$(CONFIG_V4L2_MEM2MEM_DEV) += v4l2-mem2mem.o
+obj-$(CONFIG_V4L2_H264) += v4l2-h264.o
 
 obj-$(CONFIG_V4L2_FLASH_LED_CLASS) += v4l2-flash-led-class.o
 
diff --git a/drivers/media/v4l2-core/v4l2-h264.c b/drivers/media/v4l2-core/v4l2-h264.c
new file mode 100644
index 000000000000..5db3039bf1e3
--- /dev/null
+++ b/drivers/media/v4l2-core/v4l2-h264.c
@@ -0,0 +1,258 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * V4L2 H264 helpers.
+ *
+ * Copyright (C) 2019 Collabora, Ltd.
+ *
+ * Author: Boris Brezillon <boris.brezillon@collabora.com>
+ */
+
+#include <linux/module.h>
+#include <linux/sort.h>
+
+#include <media/v4l2-h264.h>
+
+/**
+ * v4l2_h264_init_reflist_builder() - Initialize a P/B0/B1 reference list
+ *				      builder
+ *
+ * @b: the builder context to initialize
+ * @dec_params: decode parameters control
+ * @slice_params: first slice parameters control
+ * @sps: SPS control
+ * @dpb: DPB to use when creating the reference list
+ */
+void
+v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
+		const struct v4l2_ctrl_h264_decode_params *dec_params,
+		const struct v4l2_ctrl_h264_slice_params *slice_params,
+		const struct v4l2_ctrl_h264_sps *sps,
+		const struct v4l2_h264_dpb_entry *dpb)
+{
+	int cur_frame_num, max_frame_num;
+	unsigned int i;
+
+	max_frame_num = 1 << (sps->log2_max_frame_num_minus4 + 4);
+	cur_frame_num = slice_params->frame_num;
+
+	memset(b, 0, sizeof(*b));
+	if (!(slice_params->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC))
+		b->cur_pic_order_count = min(dec_params->bottom_field_order_cnt,
+					     dec_params->top_field_order_cnt);
+	else if (slice_params->flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
+		b->cur_pic_order_count = dec_params->bottom_field_order_cnt;
+	else
+		b->cur_pic_order_count = dec_params->top_field_order_cnt;
+
+	for (i = 0; i < 16; i++) {
+		u32 pic_order_count;
+
+		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
+			continue;
+
+		b->refs[i].pic_num = dpb[i].pic_num;
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+			b->refs[i].longterm = true;
+
+		/*
+		 * Handle frame_num wraparound as described in section
+		 * '8.2.4.1 Decoding process for picture numbers' of the spec.
+		 * TODO: This logic will have to be adjusted when we start
+		 * supporting interlaced content.
+		 */
+		if (dpb[i].frame_num > cur_frame_num)
+			b->refs[i].frame_num = (int)dpb[i].frame_num -
+					       max_frame_num;
+		else
+			b->refs[i].frame_num = dpb[i].frame_num;
+
+		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD))
+			pic_order_count = min(dpb[i].top_field_order_cnt,
+					      dpb[i].bottom_field_order_cnt);
+		else if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_BOTTOM_FIELD)
+			pic_order_count = dpb[i].bottom_field_order_cnt;
+		else
+			pic_order_count = dpb[i].top_field_order_cnt;
+
+		b->refs[i].pic_order_count = pic_order_count;
+		b->unordered_reflist[b->num_valid] = i;
+		b->num_valid++;
+	}
+
+	for (i = b->num_valid; i < ARRAY_SIZE(b->unordered_reflist); i++)
+		b->unordered_reflist[i] = i;
+}
+EXPORT_SYMBOL_GPL(v4l2_h264_init_reflist_builder);
+
+static int v4l2_h264_p_ref_list_cmp(const void *ptra, const void *ptrb,
+				    const void *data)
+{
+	const struct v4l2_h264_reflist_builder *builder = data;
+	u8 idxa, idxb;
+
+	idxa = *((u8 *)ptra);
+	idxb = *((u8 *)ptrb);
+
+	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {
+		/* Short term pics first. */
+		if (!builder->refs[idxa].longterm)
+			return -1;
+		else
+			return 1;
+	}
+
+	/*
+	 * Short term pics in descending pic num order, long term ones in
+	 * ascending order.
+	 */
+	if (!builder->refs[idxa].longterm)
+		return builder->refs[idxb].frame_num <
+		       builder->refs[idxa].frame_num ?
+		       -1 : 1;
+
+	return builder->refs[idxa].pic_num < builder->refs[idxb].pic_num ?
+	       -1 : 1;
+}
+
+static int v4l2_h264_b0_ref_list_cmp(const void *ptra, const void *ptrb,
+				     const void *data)
+{
+	const struct v4l2_h264_reflist_builder *builder = data;
+	s32 poca, pocb;
+	u8 idxa, idxb;
+
+	idxa = *((u8 *)ptra);
+	idxb = *((u8 *)ptrb);
+
+	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {
+		/* Short term pics first. */
+		if (!builder->refs[idxa].longterm)
+			return -1;
+		else
+			return 1;
+	}
+
+	/* Long term pics in ascending pic num order. */
+	if (builder->refs[idxa].longterm)
+		return builder->refs[idxa].pic_num <
+		       builder->refs[idxb].pic_num ?
+		       -1 : 1;
+
+	poca = builder->refs[idxa].pic_order_count;
+	pocb = builder->refs[idxb].pic_order_count;
+
+	/*
+	 * Short term pics with POC < cur POC first in POC descending order
+	 * followed by short term pics with POC > cur POC in POC ascending
+	 * order.
+	 */
+	if ((poca < builder->cur_pic_order_count) !=
+	     (pocb < builder->cur_pic_order_count))
+		return poca < pocb ? -1 : 1;
+	else if (poca < builder->cur_pic_order_count)
+		return pocb < poca ? -1 : 1;
+
+	return poca < pocb ? -1 : 1;
+}
+
+static int v4l2_h264_b1_ref_list_cmp(const void *ptra, const void *ptrb,
+				     const void *data)
+{
+	const struct v4l2_h264_reflist_builder *builder = data;
+	s32 poca, pocb;
+	u8 idxa, idxb;
+
+	idxa = *((u8 *)ptra);
+	idxb = *((u8 *)ptrb);
+
+	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {
+		/* Short term pics first. */
+		if (!builder->refs[idxa].longterm)
+			return -1;
+		else
+			return 1;
+	}
+
+	/* Long term pics in ascending pic num order. */
+	if (builder->refs[idxa].longterm)
+		return builder->refs[idxa].pic_num <
+		       builder->refs[idxb].pic_num ?
+		       -1 : 1;
+
+	poca = builder->refs[idxa].pic_order_count;
+	pocb = builder->refs[idxb].pic_order_count;
+
+	/*
+	 * Short term pics with POC > cur POC first in POC ascending order
+	 * followed by short term pics with POC < cur POC in POC descending
+	 * order.
+	 */
+	if ((poca < builder->cur_pic_order_count) !=
+	    (pocb < builder->cur_pic_order_count))
+		return pocb < poca ? -1 : 1;
+	else if (poca < builder->cur_pic_order_count)
+		return pocb < poca ? -1 : 1;
+
+	return poca < pocb ? -1 : 1;
+}
+
+/**
+ * v4l2_h264_build_p_ref_list() - Build the P reference list
+ *
+ * @builder: reference list builder context
+ * @p_reflist: 16-bytes array used to store the P reference list. Each entry
+ *	       is an index in the DPB
+ *
+ * This functions builds the P reference lists. This procedure is describe in
+ * section '8.2.4 Decoding process for reference picture lists construction'
+ * of the H264 spec. This function can be used by H264 decoder drivers that
+ * need to pass a P reference list to the hardware.
+ */
+void
+v4l2_h264_build_p_ref_list(const struct v4l2_h264_reflist_builder *builder,
+			   u8 *reflist)
+{
+	memcpy(reflist, builder->unordered_reflist,
+	       sizeof(builder->unordered_reflist));
+	sort_r(reflist, builder->num_valid, sizeof(*reflist),
+	       v4l2_h264_p_ref_list_cmp, NULL, builder);
+}
+EXPORT_SYMBOL_GPL(v4l2_h264_build_p_ref_list);
+
+/**
+ * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
+ *
+ * @builder: reference list builder context
+ * @b0_reflist: 16-bytes array used to store the B0 reference list. Each entry
+ *		is an index in the DPB
+ * @b1_reflist: 16-bytes array used to store the B1 reference list. Each entry
+ *		is an index in the DPB
+ *
+ * This functions builds the B0/B1 reference lists. This procedure is described
+ * in section '8.2.4 Decoding process for reference picture lists construction'
+ * of the H264 spec. This function can be used by H264 decoder drivers that
+ * need to pass B0/B1 reference lists to the hardware.
+ */
+void
+v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
+			    u8 *b0_reflist, u8 *b1_reflist)
+{
+	memcpy(b0_reflist, builder->unordered_reflist,
+	       sizeof(builder->unordered_reflist));
+	sort_r(b0_reflist, builder->num_valid, sizeof(*b0_reflist),
+	       v4l2_h264_b0_ref_list_cmp, NULL, builder);
+
+	memcpy(b1_reflist, builder->unordered_reflist,
+	       sizeof(builder->unordered_reflist));
+	sort_r(b1_reflist, builder->num_valid, sizeof(*b1_reflist),
+	       v4l2_h264_b1_ref_list_cmp, NULL, builder);
+
+	if (builder->num_valid > 1 &&
+	    !memcmp(b1_reflist, b0_reflist, builder->num_valid))
+		swap(b1_reflist[0], b1_reflist[1]);
+}
+EXPORT_SYMBOL_GPL(v4l2_h264_build_b_ref_lists);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("V4L2 H264 Helpers");
+MODULE_AUTHOR("Boris Brezillon <boris.brezillon@collabora.com>");
diff --git a/include/media/v4l2-h264.h b/include/media/v4l2-h264.h
new file mode 100644
index 000000000000..81180a5079bc
--- /dev/null
+++ b/include/media/v4l2-h264.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Helper functions for H264 codecs.
+ *
+ * Copyright (c) 2019 Collabora, Ltd.
+ *
+ * Author: Boris Brezillon <boris.brezillon@collabora.com>
+ */
+
+#ifndef _MEDIA_V4L2_H264_H
+#define _MEDIA_V4L2_H264_H
+
+#include <media/h264-ctrls.h>
+
+/**
+ * struct v4l2_h264_reflist_builder - Reference list builder object
+ *
+ * @refs.pic_order_count: reference picture order count
+ * @refs.frame_num: reference frame number
+ * @refs.pic_num: reference picture number
+ * @refs.longterm: set to true for a long term reference
+ * @refs: array of references
+ * @cur_pic_order_count: picture order count of the frame being decoded
+ * @unordered_reflist: unordered list of references. Will be used to generate
+ *		       ordered P/B0/B1 lists
+ * @num_valid: number of valid references in the refs array
+ *
+ * This object stores the context of the P/B0/B1 reference list builder.
+ * This procedure is described in section '8.2.4 Decoding process for reference
+ * picture lists construction' of the H264 spec.
+ */
+struct v4l2_h264_reflist_builder {
+	struct {
+		s32 pic_order_count;
+		int frame_num;
+		u16 pic_num;
+		u16 longterm : 1;
+	} refs[16];
+	s32 cur_pic_order_count;
+	u8 unordered_reflist[16];
+	u8 num_valid;
+};
+
+void
+v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
+		const struct v4l2_ctrl_h264_decode_params *dec_params,
+		const struct v4l2_ctrl_h264_slice_params *slice_params,
+		const struct v4l2_ctrl_h264_sps *sps,
+		const struct v4l2_h264_dpb_entry *dpb);
+
+/**
+ * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
+ *
+ * @builder: reference list builder context
+ * @b0_reflist: 16-bytes array used to store the B0 reference list. Each entry
+ *		is an index in the DPB
+ * @b1_reflist: 16-bytes array used to store the B1 reference list. Each entry
+ *		is an index in the DPB
+ *
+ * This functions builds the B0/B1 reference lists. This procedure is described
+ * in section '8.2.4 Decoding process for reference picture lists construction'
+ * of the H264 spec. This function can be used by H264 decoder drivers that
+ * need to pass B0/B1 reference lists to the hardware.
+ */
+void
+v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
+			    u8 *b0_reflist, u8 *b1_reflist);
+
+/**
+ * v4l2_h264_build_b_ref_lists() - Build the P reference list
+ *
+ * @builder: reference list builder context
+ * @p_reflist: 16-bytes array used to store the P reference list. Each entry
+ *	       is an index in the DPB
+ *
+ * This functions builds the P reference lists. This procedure is describe in
+ * section '8.2.4 Decoding process for reference picture lists construction'
+ * of the H264 spec. This function can be used by H264 decoder drivers that
+ * need to pass a P reference list to the hardware.
+ */
+void
+v4l2_h264_build_p_ref_list(const struct v4l2_h264_reflist_builder *builder,
+			   u8 *reflist);
+
+#endif /* _MEDIA_V4L2_H264_H */
+
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
