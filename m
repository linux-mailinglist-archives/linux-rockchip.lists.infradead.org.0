Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FDFA69A0
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 15:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoIwEmT5ye4zAQcNoTCd6LYqfI0zCOFEzkk2CzXtFdM=; b=Wb0rWh3ZpsA68M
	ar7AnjN4K5UvEzNUbduDQBp6TsD6E5R7CZ5A+SfXaiVwpPhEj8HyShG9SQMB8jTzR5VxbKzf5Wot5
	DXahF4JInV+cvwDIp2UBNpiweaXCLYXhsrtgzj6aluPbbsB1Ro23gWbbw0nEzPSk4zTAUe3pxKxqH
	Uf4njDTBWwdL6VFjj/5yJ10CY/5falX6D/jpTLPC47Ks0M2kLdA4esu6I+I+tE8tI9o7CH79laQHG
	dJKqct3+4QNnabrDqU7kVIcGzNTIubA5BNJjQYFSO3YKY/8hZfd3TrDL1sYdfov4dReJTTp6Smw2m
	J/6SUCdBmw6N6tK698yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58kx-0002Ya-GO; Tue, 03 Sep 2019 13:21:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58kt-0002Xs-Pz
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 13:21:57 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i58kn-0004s9-08; Tue, 03 Sep 2019 15:21:49 +0200
Message-ID: <1567516908.5229.7.camel@pengutronix.de>
Subject: Re: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Date: Tue, 03 Sep 2019 15:21:48 +0200
In-Reply-To: <HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_062156_005691_D7A79DFC 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> This need code cleanup and formatting
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

The previous patches all work, but this patch breaks decoding of
progressive content for me (i.MX8MQ with FFmpeg based on Ezequiel's
branch).

regards
Philipp

> ---
>  .../staging/media/hantro/hantro_g1_h264_dec.c |  26 ++--
>  drivers/staging/media/hantro/hantro_h264.c    | 126 ++++++++++++------
>  drivers/staging/media/hantro/hantro_hw.h      |   4 +
>  3 files changed, 100 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> index 16f21d258f6a..bc628ef73b29 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -130,28 +130,20 @@ static void set_params(struct hantro_ctx *ctx)
>  
>  static void set_ref(struct hantro_ctx *ctx)
>  {
> +	const struct v4l2_ctrl_h264_decode_params *dec_param;
> +	const struct v4l2_ctrl_h264_slice_params *slice;
>  	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
>  	const u8 *b0_reflist, *b1_reflist, *p_reflist;
>  	struct hantro_dev *vpu = ctx->dev;
> -	u32 dpb_longterm = 0;
> -	u32 dpb_valid = 0;
>  	int reg_num;
>  	u32 reg;
>  	int i;
>  
> -	/*
> -	 * Set up bit maps of valid and long term DPBs.
> -	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
> -	 */
> -	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
> -		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
> -			dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
> +	dec_param = ctx->h264_dec.ctrls.decode;
> +	slice = ctx->h264_dec.ctrls.slices;
>  
> -		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> -			dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
> -	}
> -	vdpu_write_relaxed(vpu, dpb_valid << 16, G1_REG_VALID_REF);
> -	vdpu_write_relaxed(vpu, dpb_longterm << 16, G1_REG_LT_REF);
> +	vdpu_write_relaxed(vpu, ctx->h264_dec.dpb_valid, G1_REG_VALID_REF);
> +	vdpu_write_relaxed(vpu, ctx->h264_dec.dpb_longterm, G1_REG_LT_REF);
>  
>  	/*
>  	 * Set up reference frame picture numbers.
> @@ -223,10 +215,8 @@ static void set_ref(struct hantro_ctx *ctx)
>  
>  	/* Set up addresses of DPB buffers. */
>  	for (i = 0; i < HANTRO_H264_DPB_SIZE; i++) {
> -		struct vb2_buffer *buf =  hantro_h264_get_ref_buf(ctx, i);
> -
> -		vdpu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(buf, 0),
> -				   G1_REG_ADDR_REF(i));
> +		dma_addr_t addr = hantro_h264_get_ref_dma_addr(ctx, i);
> +		vdpu_write_relaxed(vpu, addr, G1_REG_ADDR_REF(i));
>  	}
>  }
>  
> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
> index a77cc28e180a..85c86d728b1a 100644
> --- a/drivers/staging/media/hantro/hantro_h264.c
> +++ b/drivers/staging/media/hantro/hantro_h264.c
> @@ -228,17 +228,65 @@ static void prepare_table(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
>  	const struct v4l2_ctrl_h264_decode_params *dec_param = ctrls->decode;
> +	const struct v4l2_ctrl_h264_slice_params *slices = ctrls->slices;
>  	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
>  	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
> +	u32 dpb_longterm = 0;
> +	u32 dpb_valid = 0;
>  	int i;
>  
> +	/*
> +	 * Set up bit maps of valid and long term DPBs.
> +	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
> +	 */
> +	if ((slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC) || (slices[0].flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)) {
> +		for (i = 0; i < HANTRO_H264_DPB_SIZE * 2; ++i) {
> +			// check for correct reference use
> +			u32 flag = (i & 0x1) ? V4L2_H264_DPB_ENTRY_FLAG_REF_BOTTOM : V4L2_H264_DPB_ENTRY_FLAG_REF_TOP;
> +			if (dpb[i / 2].flags & flag)
> +				dpb_valid |= BIT(HANTRO_H264_DPB_SIZE * 2 - 1 - i);
> +
> +			if (dpb[i / 2].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> +				dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE * 2 - 1 - i);
> +		}
> +
> +		ctx->h264_dec.dpb_valid = dpb_valid;
> +		ctx->h264_dec.dpb_longterm = dpb_longterm;
> +	} else {
> +		for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
> +			if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
> +				dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
> +
> +			if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> +				dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
> +		}
> +
> +		ctx->h264_dec.dpb_valid = dpb_valid << 16;
> +		ctx->h264_dec.dpb_longterm = dpb_longterm << 16;
> +	}
> +
>  	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
> -		tbl->poc[i * 2] = dpb[i].top_field_order_cnt;
> -		tbl->poc[i * 2 + 1] = dpb[i].bottom_field_order_cnt;
> +		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE) {
> +			tbl->poc[i * 2] = dpb[i].top_field_order_cnt;
> +			tbl->poc[i * 2 + 1] = dpb[i].bottom_field_order_cnt;
> +		} else {
> +			tbl->poc[i * 2] = 0;
> +			tbl->poc[i * 2 + 1] = 0;
> +		}
>  	}
>  
> -	tbl->poc[32] = dec_param->top_field_order_cnt;
> -	tbl->poc[33] = dec_param->bottom_field_order_cnt;
> +	if ((slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC) || !(slices[0].flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)) {
> +		if ((slices[0].flags & V4L2_H264_SLICE_FLAG_FIELD_PIC))
> +			tbl->poc[32] = (slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD) ?
> +					dec_param->bottom_field_order_cnt :
> +					dec_param->top_field_order_cnt;
> +		else
> +			tbl->poc[32] = min(dec_param->top_field_order_cnt, dec_param->bottom_field_order_cnt);
> +		tbl->poc[33] = 0;
> +	} else {
> +		tbl->poc[32] = dec_param->top_field_order_cnt;
> +		tbl->poc[33] = dec_param->bottom_field_order_cnt;
> +	}
>  
>  	reorder_scaling_list(ctx);
>  }
> @@ -251,51 +299,36 @@ struct hantro_h264_reflist_builder {
>  	u8 num_valid;
>  };
>  
> -static s32 get_poc(enum v4l2_field field, s32 top_field_order_cnt,
> -		   s32 bottom_field_order_cnt)
> -{
> -	switch (field) {
> -	case V4L2_FIELD_TOP:
> -		return top_field_order_cnt;
> -	case V4L2_FIELD_BOTTOM:
> -		return bottom_field_order_cnt;
> -	default:
> -		break;
> -	}
> -
> -	return min(top_field_order_cnt, bottom_field_order_cnt);
> -}
> -
>  static void
>  init_reflist_builder(struct hantro_ctx *ctx,
>  		     struct hantro_h264_reflist_builder *b)
>  {
>  	const struct v4l2_ctrl_h264_decode_params *dec_param;
> -	struct vb2_v4l2_buffer *buf = hantro_get_dst_buf(ctx);
> +	const struct v4l2_ctrl_h264_slice_params *slices;
>  	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
> -	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
>  	unsigned int i;
>  
>  	dec_param = ctx->h264_dec.ctrls.decode;
> +	slices = ctx->h264_dec.ctrls.slices;
>  
>  	memset(b, 0, sizeof(*b));
>  	b->dpb = dpb;
> -	b->curpoc = get_poc(buf->field, dec_param->top_field_order_cnt,
> -			    dec_param->bottom_field_order_cnt);
> +	b->curpoc = (slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD) ?
> +		    dec_param->bottom_field_order_cnt :
> +		    dec_param->top_field_order_cnt;
>  
>  	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++) {
> -		int buf_idx;
> -
> -		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
> +		u32 ref_flag = dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_REF_FRAME;
> +		if (!ref_flag)
>  			continue;
>  
> -		buf_idx = vb2_find_timestamp(cap_q, dpb[i].reference_ts, 0);
> -		if (buf_idx < 0)
> -			continue;
> +		if (ref_flag == V4L2_H264_DPB_ENTRY_FLAG_REF_FRAME)
> +			b->pocs[i] = min(dpb[i].bottom_field_order_cnt, dpb[i].top_field_order_cnt);
> +		else if (ref_flag == V4L2_H264_DPB_ENTRY_FLAG_REF_BOTTOM)
> +			b->pocs[i] = dpb[i].bottom_field_order_cnt;
> +		else if (ref_flag == V4L2_H264_DPB_ENTRY_FLAG_REF_TOP)
> +			b->pocs[i] = dpb[i].top_field_order_cnt;
>  
> -		buf = to_vb2_v4l2_buffer(vb2_get_buffer(cap_q, buf_idx));
> -		b->pocs[i] = get_poc(buf->field, dpb[i].top_field_order_cnt,
> -				     dpb[i].bottom_field_order_cnt);
>  		b->unordered_reflist[b->num_valid] = i;
>  		b->num_valid++;
>  	}
> @@ -448,8 +481,7 @@ build_b_ref_lists(const struct hantro_h264_reflist_builder *builder,
>  static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
>  			    const struct v4l2_h264_dpb_entry *b)
>  {
> -	return a->top_field_order_cnt == b->top_field_order_cnt &&
> -	       a->bottom_field_order_cnt == b->bottom_field_order_cnt;
> +	return a->reference_ts == b->reference_ts;
>  }
>  
>  static void update_dpb(struct hantro_ctx *ctx)
> @@ -463,13 +495,13 @@ static void update_dpb(struct hantro_ctx *ctx)
>  
>  	/* Disable all entries by default. */
>  	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++)
> -		ctx->h264_dec.dpb[i].flags &= ~V4L2_H264_DPB_ENTRY_FLAG_ACTIVE;
> +		ctx->h264_dec.dpb[i].flags = 0;
>  
>  	/* Try to match new DPB entries with existing ones by their POCs. */
>  	for (i = 0; i < ARRAY_SIZE(dec_param->dpb); i++) {
>  		const struct v4l2_h264_dpb_entry *ndpb = &dec_param->dpb[i];
>  
> -		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
> +		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_VALID))
>  			continue;
>  
>  		/*
> @@ -480,8 +512,7 @@ static void update_dpb(struct hantro_ctx *ctx)
>  			struct v4l2_h264_dpb_entry *cdpb;
>  
>  			cdpb = &ctx->h264_dec.dpb[j];
> -			if (cdpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE ||
> -			    !dpb_entry_match(cdpb, ndpb))
> +			if (!dpb_entry_match(cdpb, ndpb))
>  				continue;
>  
>  			*cdpb = *ndpb;
> @@ -541,6 +572,25 @@ struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
>  	return buf;
>  }
>  
> +dma_addr_t hantro_h264_get_ref_dma_addr(struct hantro_ctx *ctx,
> +					unsigned int dpb_idx)
> +{
> +	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
> +	const struct v4l2_ctrl_h264_decode_params *dec_param = ctx->h264_dec.ctrls.decode;
> +	const struct v4l2_ctrl_h264_slice_params *slices = ctx->h264_dec.ctrls.slices;
> +
> +	struct vb2_buffer *buf = hantro_h264_get_ref_buf(ctx, dpb_idx);
> +	s32 cur_poc = slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD ?
> +		      dec_param->bottom_field_order_cnt :
> +		      dec_param->top_field_order_cnt;
> +	u32 flags = dpb[dpb_idx].flags & V4L2_H264_DPB_ENTRY_FLAG_FIELD_PICTURE ? 0x2 : 0;
> +	flags |= abs(dpb[dpb_idx].top_field_order_cnt - cur_poc) <
> +		 abs(dpb[dpb_idx].bottom_field_order_cnt - cur_poc) ?
> +		 0x1 : 0;
> +
> +	return vb2_dma_contig_plane_dma_addr(buf, 0) | flags;
> +}
> +
>  int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
>  {
>  	struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 8adad8ac9b1d..d58f2a36ca40 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -86,6 +86,8 @@ struct hantro_h264_dec_hw_ctx {
>  	struct v4l2_h264_dpb_entry dpb[HANTRO_H264_DPB_SIZE];
>  	struct hantro_h264_dec_reflists reflists;
>  	struct hantro_h264_dec_ctrls ctrls;
> +	u32 dpb_longterm;
> +	u32 dpb_valid;
>  };
>  
>  /**
> @@ -157,6 +159,8 @@ void hantro_jpeg_enc_exit(struct hantro_ctx *ctx);
>  
>  struct vb2_buffer *hantro_h264_get_ref_buf(struct hantro_ctx *ctx,
>  					   unsigned int dpb_idx);
> +dma_addr_t hantro_h264_get_ref_dma_addr(struct hantro_ctx *ctx,
> +					unsigned int dpb_idx);
>  int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx);
>  void hantro_g1_h264_dec_run(struct hantro_ctx *ctx);
>  int hantro_h264_dec_init(struct hantro_ctx *ctx);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
