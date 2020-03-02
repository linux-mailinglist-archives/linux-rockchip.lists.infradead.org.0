Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AA6175B82
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 14:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FuD1L0eVB3z9PlhFJgZAmcg7PLVErIBD9wS+CZ1kQA=; b=jJpM3fMMM0nYLq
	nPoERlFaa+m9EVyMxKNZEgJcEN28W/hnvm6ajewA6RPpMdm0ijYyv2qzkRHjZC4JM2J5/6vIpFZEY
	ScB6GTmIYIuBW8+3/aoWAvb0bZFIsOMcsGV8INmUTOZpXpZXi9hlWzbBuZ0DxeO9anwDosUqlCzSv
	Rw+8YA4hPWjpRQQY3Hpf1PXmI4NdNIhetZmz6aEKRQpWigV9Rb/gUUK1C4bV/oQ8ujO0q2SRQ6wB8
	JJS5XGrR8ubq46Qvho/U61Au98NnrAYkbDJjNblMVMVvLZ0TVb2fAx/WTJQxC7hsgqhyaTyyPhG4B
	BmaIaAHVDgoTILvyNLzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8l3u-0004qi-Ra; Mon, 02 Mar 2020 13:24:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8l3q-0004pr-VR
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 13:24:45 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF8152086A;
 Mon,  2 Mar 2020 13:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583155480;
 bh=pXe2/xsLELC3d+jdhGbfOvWV1UXwbc6+uyWvR+u5Ypo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lPlw9TdzqRDXRuqj5BOqv7d35DkObEWUUC4aQFoSYOr/0t3tRhfNfZS3Vaej/iY0N
 5+gTFotVa86XP6XaoVXYY5Jn++19Yj8GDi7gFXmlEyHT/vqEEd2l5nF2lO9nA9DWwM
 3oawRSW/a50jglhnQlPD4+j0F6KBqRJ7olSSeyso=
Date: Mon, 2 Mar 2020 14:24:33 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v6 2/6] media: v4l2-core: Add helpers to build the H264
 P/B0/B1 reflists
Message-ID: <20200302142433.0ad1b383@coco.lan>
In-Reply-To: <20200220163016.21708-3-ezequiel@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-3-ezequiel@collabora.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_052443_059424_38F31500 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Em Thu, 20 Feb 2020 13:30:12 -0300
Ezequiel Garcia <ezequiel@collabora.com> escreveu:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Building those list is a standard procedure described in section
> '8.2.4 Decoding process for reference picture lists construction' of
> the H264 specification.
> 
> We already have 2 drivers needing the same logic (hantro and rkvdec) and
> I suspect we will soon have more.
> 
> Let's provide generic helpers to create those lists.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/media/v4l2-core/Kconfig     |   4 +
>  drivers/media/v4l2-core/Makefile    |   1 +
>  drivers/media/v4l2-core/v4l2-h264.c | 258 ++++++++++++++++++++++++++++
>  include/media/v4l2-h264.h           |  85 +++++++++
>  4 files changed, 348 insertions(+)
>  create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
>  create mode 100644 include/media/v4l2-h264.h
> 
> diff --git a/drivers/media/v4l2-core/Kconfig b/drivers/media/v4l2-core/Kconfig
> index 39e3fb30ba0b..8a4ccfbca8cf 100644
> --- a/drivers/media/v4l2-core/Kconfig
> +++ b/drivers/media/v4l2-core/Kconfig
> @@ -45,6 +45,10 @@ config VIDEO_PCI_SKELETON
>  config VIDEO_TUNER
>  	tristate
>  
> +# Used by drivers that need v4l2-h264.ko
> +config V4L2_H264
> +	tristate
> +
>  # Used by drivers that need v4l2-mem2mem.ko
>  config V4L2_MEM2MEM_DEV
>  	tristate
> diff --git a/drivers/media/v4l2-core/Makefile b/drivers/media/v4l2-core/Makefile
> index 786bd1ec4d1b..c5c53e0941ad 100644
> --- a/drivers/media/v4l2-core/Makefile
> +++ b/drivers/media/v4l2-core/Makefile
> @@ -21,6 +21,7 @@ obj-$(CONFIG_VIDEO_V4L2) += v4l2-dv-timings.o
>  obj-$(CONFIG_VIDEO_TUNER) += tuner.o
>  
>  obj-$(CONFIG_V4L2_MEM2MEM_DEV) += v4l2-mem2mem.o
> +obj-$(CONFIG_V4L2_H264) += v4l2-h264.o
>  
>  obj-$(CONFIG_V4L2_FLASH_LED_CLASS) += v4l2-flash-led-class.o
>  
> diff --git a/drivers/media/v4l2-core/v4l2-h264.c b/drivers/media/v4l2-core/v4l2-h264.c
> new file mode 100644
> index 000000000000..4f68c27ec7fd
> --- /dev/null
> +++ b/drivers/media/v4l2-core/v4l2-h264.c
> @@ -0,0 +1,258 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * V4L2 H264 helpers.
> + *
> + * Copyright (C) 2019 Collabora, Ltd.
> + *
> + * Author: Boris Brezillon <boris.brezillon@collabora.com>
> + */
> +
> +#include <linux/module.h>
> +#include <linux/sort.h>
> +
> +#include <media/v4l2-h264.h>
> +
> +/**
> + * v4l2_h264_init_reflist_builder() - Initialize a P/B0/B1 reference list
> + *				      builder
> + *
> + * @b: the builder context to initialize
> + * @dec_params: decode parameters control
> + * @slice_params: first slice parameters control
> + * @sps: SPS control
> + * @dpb: DPB to use when creating the reference list
> + */
> +void
> +v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
> +		const struct v4l2_ctrl_h264_decode_params *dec_params,
> +		const struct v4l2_ctrl_h264_slice_params *slice_params,
> +		const struct v4l2_ctrl_h264_sps *sps,
> +		const struct v4l2_h264_dpb_entry *dpb)

The prototype here is not nice...

> +{
> +	int cur_frame_num, max_frame_num;
> +	unsigned int i;
> +
> +	max_frame_num = 1 << (sps->log2_max_frame_num_minus4 + 4);
> +	cur_frame_num = slice_params->frame_num;
> +
> +	memset(b, 0, sizeof(*b));
> +	if (!(slice_params->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC))
> +		b->cur_pic_order_count = min(dec_params->bottom_field_order_cnt,
> +					     dec_params->top_field_order_cnt);
> +	else if (slice_params->flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
> +		b->cur_pic_order_count = dec_params->bottom_field_order_cnt;
> +	else
> +		b->cur_pic_order_count = dec_params->top_field_order_cnt;
> +
> +	for (i = 0; i < 16; i++) {
> +		u32 pic_order_count;
> +
> +		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
> +			continue;
> +
> +		b->refs[i].pic_num = dpb[i].pic_num;

... as you're expecting a fixed number of elements at DPB array, and using
a magic number (16) inside the for loop.

> +		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> +			b->refs[i].longterm = true;

The same thing happens here: you're also using a magic number to define 
the array size of b->refs.

I guess the best is to add something like:

(at the header file)

#define NUM_DPB_ENTRIES		16

(at the library code)

void
v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
			       const struct v4l2_ctrl_h264_decode_params *dec_params,
			       const struct v4l2_ctrl_h264_slice_params *slice_params,
			       const struct v4l2_ctrl_h264_sps *sps,
			       const struct v4l2_h264_dpb_entry dpb[NUM_DPB_ENTRIES])
{
...
	for (i = 0; i < NUM_DPB_ENTRIES; i++) {
...

and use NUM_DPB_ENTRIES on every other place you're using the "16"
magic number.

> +
> +		/*
> +		 * Handle frame_num wraparound as described in section
> +		 * '8.2.4.1 Decoding process for picture numbers' of the spec.
> +		 * TODO: This logic will have to be adjusted when we start
> +		 * supporting interlaced content.
> +		 */
> +		if (dpb[i].frame_num > cur_frame_num)
> +			b->refs[i].frame_num = (int)dpb[i].frame_num -
> +					       max_frame_num;
> +		else
> +			b->refs[i].frame_num = dpb[i].frame_num;
> +
> +		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD))
> +			pic_order_count = min(dpb[i].top_field_order_cnt,
> +					      dpb[i].bottom_field_order_cnt);
> +		else if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_BOTTOM_FIELD)
> +			pic_order_count = dpb[i].bottom_field_order_cnt;
> +		else
> +			pic_order_count = dpb[i].top_field_order_cnt;
> +
> +		b->refs[i].pic_order_count = pic_order_count;
> +		b->unordered_reflist[b->num_valid] = i;
> +		b->num_valid++;
> +	}
> +
> +	for (i = b->num_valid; i < ARRAY_SIZE(b->unordered_reflist); i++)
> +		b->unordered_reflist[i] = i;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_h264_init_reflist_builder);
> +
> +static int v4l2_h264_p_ref_list_cmp(const void *ptra, const void *ptrb,
> +				    const void *data)
> +{
> +	const struct v4l2_h264_reflist_builder *builder = data;
> +	u8 idxa, idxb;
> +
> +	idxa = *((u8 *)ptra);
> +	idxb = *((u8 *)ptrb);
> +
> +	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {

Where do you ensure that idxa and idxb won't be bigger than NUM_DPB_ENTRIES?

> +		/* Short term pics first. */
> +		if (!builder->refs[idxa].longterm)
> +			return -1;
> +		else
> +			return 1;
> +	}
> +
> +	/*
> +	 * Short term pics in descending pic num order, long term ones in
> +	 * ascending order.
> +	 */
> +	if (!builder->refs[idxa].longterm)
> +		return builder->refs[idxb].frame_num <
> +		       builder->refs[idxa].frame_num ?
> +		       -1 : 1;
> +
> +	return builder->refs[idxa].pic_num < builder->refs[idxb].pic_num ?
> +	       -1 : 1;
> +}
> +
> +static int v4l2_h264_b0_ref_list_cmp(const void *ptra, const void *ptrb,
> +				     const void *data)
> +{
> +	const struct v4l2_h264_reflist_builder *builder = data;
> +	s32 poca, pocb;
> +	u8 idxa, idxb;
> +
> +	idxa = *((u8 *)ptra);
> +	idxb = *((u8 *)ptrb);
> +
> +	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {

Same here.

> +		/* Short term pics first. */
> +		if (!builder->refs[idxa].longterm)
> +			return -1;
> +		else
> +			return 1;
> +	}
> +
> +	/* Long term pics in ascending pic num order. */
> +	if (builder->refs[idxa].longterm)
> +		return builder->refs[idxa].pic_num <
> +		       builder->refs[idxb].pic_num ?
> +		       -1 : 1;
> +
> +	poca = builder->refs[idxa].pic_order_count;
> +	pocb = builder->refs[idxb].pic_order_count;
> +
> +	/*
> +	 * Short term pics with POC < cur POC first in POC descending order
> +	 * followed by short term pics with POC > cur POC in POC ascending
> +	 * order.
> +	 */
> +	if ((poca < builder->cur_pic_order_count) !=
> +	     (pocb < builder->cur_pic_order_count))
> +		return poca < pocb ? -1 : 1;
> +	else if (poca < builder->cur_pic_order_count)
> +		return pocb < poca ? -1 : 1;
> +
> +	return poca < pocb ? -1 : 1;
> +}
> +
> +static int v4l2_h264_b1_ref_list_cmp(const void *ptra, const void *ptrb,
> +				     const void *data)
> +{
> +	const struct v4l2_h264_reflist_builder *builder = data;
> +	s32 poca, pocb;
> +	u8 idxa, idxb;
> +
> +	idxa = *((u8 *)ptra);
> +	idxb = *((u8 *)ptrb);
> +
> +	if (builder->refs[idxa].longterm != builder->refs[idxb].longterm) {

Same here.

> +		/* Short term pics first. */
> +		if (!builder->refs[idxa].longterm)
> +			return -1;
> +		else
> +			return 1;
> +	}
> +
> +	/* Long term pics in ascending pic num order. */
> +	if (builder->refs[idxa].longterm)
> +		return builder->refs[idxa].pic_num <
> +		       builder->refs[idxb].pic_num ?
> +		       -1 : 1;
> +
> +	poca = builder->refs[idxa].pic_order_count;
> +	pocb = builder->refs[idxb].pic_order_count;
> +
> +	/*
> +	 * Short term pics with POC > cur POC first in POC ascending order
> +	 * followed by short term pics with POC < cur POC in POC descending
> +	 * order.
> +	 */
> +	if ((poca < builder->cur_pic_order_count) !=
> +	    (pocb < builder->cur_pic_order_count))
> +		return pocb < poca ? -1 : 1;
> +	else if (poca < builder->cur_pic_order_count)
> +		return pocb < poca ? -1 : 1;
> +
> +	return poca < pocb ? -1 : 1;
> +}
> +
> +/**
> + * v4l2_h264_build_p_ref_list() - Build the P reference list
> + *
> + * @builder: reference list builder context
> + * @reflist: 16-bytes array used to store the P reference list. Each entry
> + *	     is an index in the DPB
> + *
> + * This functions builds the P reference lists. This procedure is describe in
> + * section '8.2.4 Decoding process for reference picture lists construction'
> + * of the H264 spec. This function can be used by H264 decoder drivers that
> + * need to pass a P reference list to the hardware.
> + */
> +void
> +v4l2_h264_build_p_ref_list(const struct v4l2_h264_reflist_builder *builder,
> +			   u8 *reflist)
> +{
> +	memcpy(reflist, builder->unordered_reflist,
> +	       sizeof(builder->unordered_reflist));
> +	sort_r(reflist, builder->num_valid, sizeof(*reflist),
> +	       v4l2_h264_p_ref_list_cmp, NULL, builder);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_h264_build_p_ref_list);
> +
> +/**
> + * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
> + *
> + * @builder: reference list builder context
> + * @b0_reflist: 16-bytes array used to store the B0 reference list. Each entry
> + *		is an index in the DPB
> + * @b1_reflist: 16-bytes array used to store the B1 reference list. Each entry
> + *		is an index in the DPB
> + *
> + * This functions builds the B0/B1 reference lists. This procedure is described
> + * in section '8.2.4 Decoding process for reference picture lists construction'
> + * of the H264 spec. This function can be used by H264 decoder drivers that
> + * need to pass B0/B1 reference lists to the hardware.
> + */
> +void
> +v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
> +			    u8 *b0_reflist, u8 *b1_reflist)
> +{
> +	memcpy(b0_reflist, builder->unordered_reflist,
> +	       sizeof(builder->unordered_reflist));
> +	sort_r(b0_reflist, builder->num_valid, sizeof(*b0_reflist),
> +	       v4l2_h264_b0_ref_list_cmp, NULL, builder);

Hmm... you're always copying 16 elements, but sorting only num_valid...

That sounds not too consistent on my eyes. Perhaps you should do,
instead:

	memcpy(b0_reflist, builder->unordered_reflist,
	       sizeof(builder->unordered_reflist[0]) * builder->num_valid);

> +
> +	memcpy(b1_reflist, builder->unordered_reflist,
> +	       sizeof(builder->unordered_reflist));

Same here.

> +	sort_r(b1_reflist, builder->num_valid, sizeof(*b1_reflist),
> +	       v4l2_h264_b1_ref_list_cmp, NULL, builder);
> +
> +	if (builder->num_valid > 1 &&
> +	    !memcmp(b1_reflist, b0_reflist, builder->num_valid))
> +		swap(b1_reflist[0], b1_reflist[1]);

Hmm... when you did sizeof(*b0_reflist) above, you were assuming that
you might some day change the definition from u8 to something else
at the array. So, here, for consistency, you should also do the 
same here, e. g.:

	if (builder->num_valid > 1 &&
	    !memcmp(b1_reflist, b0_reflist, builder->num_valid * sizeof(*b0_reflist)))
		swap(b1_reflist[0], b1_reflist[1]);


> +}
> +EXPORT_SYMBOL_GPL(v4l2_h264_build_b_ref_lists);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("V4L2 H264 Helpers");
> +MODULE_AUTHOR("Boris Brezillon <boris.brezillon@collabora.com>");
> diff --git a/include/media/v4l2-h264.h b/include/media/v4l2-h264.h
> new file mode 100644
> index 000000000000..36d25c27cc31
> --- /dev/null
> +++ b/include/media/v4l2-h264.h
> @@ -0,0 +1,85 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Helper functions for H264 codecs.
> + *
> + * Copyright (c) 2019 Collabora, Ltd.
> + *
> + * Author: Boris Brezillon <boris.brezillon@collabora.com>
> + */
> +
> +#ifndef _MEDIA_V4L2_H264_H
> +#define _MEDIA_V4L2_H264_H
> +
> +#include <media/h264-ctrls.h>
> +
> +/**
> + * struct v4l2_h264_reflist_builder - Reference list builder object
> + *
> + * @refs.pic_order_count: reference picture order count
> + * @refs.frame_num: reference frame number
> + * @refs.pic_num: reference picture number
> + * @refs.longterm: set to true for a long term reference
> + * @refs: array of references
> + * @cur_pic_order_count: picture order count of the frame being decoded
> + * @unordered_reflist: unordered list of references. Will be used to generate
> + *		       ordered P/B0/B1 lists
> + * @num_valid: number of valid references in the refs array
> + *
> + * This object stores the context of the P/B0/B1 reference list builder.
> + * This procedure is described in section '8.2.4 Decoding process for reference
> + * picture lists construction' of the H264 spec.
> + */
> +struct v4l2_h264_reflist_builder {
> +	struct {
> +		s32 pic_order_count;
> +		int frame_num;
> +		u16 pic_num;
> +		u16 longterm : 1;
> +	} refs[16];
> +	s32 cur_pic_order_count;
> +	u8 unordered_reflist[16];

So, as I said before:

	} refs[NUM_DPB_ENTRIES];
	s32 cur_pic_order_count;
	u8 unordered_reflist[NUM_DPB_ENTRIES];


> +	u8 num_valid;
> +};
> +
> +void
> +v4l2_h264_init_reflist_builder(struct v4l2_h264_reflist_builder *b,
> +		const struct v4l2_ctrl_h264_decode_params *dec_params,
> +		const struct v4l2_ctrl_h264_slice_params *slice_params,
> +		const struct v4l2_ctrl_h264_sps *sps,
> +		const struct v4l2_h264_dpb_entry *dpb);
> +
> +/**
> + * v4l2_h264_build_b_ref_lists() - Build the B0/B1 reference lists
> + *
> + * @builder: reference list builder context
> + * @b0_reflist: 16-bytes array used to store the B0 reference list. Each entry
> + *		is an index in the DPB
> + * @b1_reflist: 16-bytes array used to store the B1 reference list. Each entry
> + *		is an index in the DPB
> + *
> + * This functions builds the B0/B1 reference lists. This procedure is described
> + * in section '8.2.4 Decoding process for reference picture lists construction'
> + * of the H264 spec. This function can be used by H264 decoder drivers that
> + * need to pass B0/B1 reference lists to the hardware.
> + */
> +void
> +v4l2_h264_build_b_ref_lists(const struct v4l2_h264_reflist_builder *builder,
> +			    u8 *b0_reflist, u8 *b1_reflist);
> +
> +/**
> + * v4l2_h264_build_b_ref_lists() - Build the P reference list
> + *
> + * @builder: reference list builder context
> + * @p_reflist: 16-bytes array used to store the P reference list. Each entry
> + *	       is an index in the DPB
> + *
> + * This functions builds the P reference lists. This procedure is describe in
> + * section '8.2.4 Decoding process for reference picture lists construction'
> + * of the H264 spec. This function can be used by H264 decoder drivers that
> + * need to pass a P reference list to the hardware.
> + */
> +void
> +v4l2_h264_build_p_ref_list(const struct v4l2_h264_reflist_builder *builder,
> +			   u8 *reflist);
> +
> +#endif /* _MEDIA_V4L2_H264_H */


Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
