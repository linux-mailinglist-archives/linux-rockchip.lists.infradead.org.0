Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47072A66F6
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 12:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYlVKA4Y1fBmi4F7aU47Q0J94shDVZxMnaHhLiz/oAM=; b=bl+zNQtuSpQGGj
	UBC81H4ekWiiFlT0ZAuQK2A5nC5khd2bE/1ynBN6ACd11mFuva04OEigl9+NcAag/11dZiPdSBexH
	L6dChe5Bzyf1Wm9SRQocLhJjpF6Tee3NYb0Kd94uoSfcbiVfjcwojDkJxFLIOY1W/TmpDsxKZYLwh
	jFc/c/sL4DGVO86IThMMHzfy91gODGGHPPuAZQDlaQP95hEG1PTp1+4dWbb+VQWZgOdID00PfelG+
	pA6wByOIjKHro/luuQmXz2QHb14qD2CSM6gUCopU8Pa/DMg2RWRFbw/J0FcXIghMkj1Dc4XUouEv8
	bfCHgxrJTNwpY+Xb6y7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i56WO-00071n-Vw; Tue, 03 Sep 2019 10:58:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i56WK-00071E-0L
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 10:58:45 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i56WC-0006J1-Qf; Tue, 03 Sep 2019 12:58:36 +0200
Message-ID: <1567508315.5229.3.camel@pengutronix.de>
Subject: Re: [PATCH 03/12] media: hantro: Fix H264 motion vector buffer offset
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Date: Tue, 03 Sep 2019 12:58:35 +0200
In-Reply-To: <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_035844_053942_6E136328 
X-CRM114-Status: GOOD (  19.85  )
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

Hi Jonas,

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> A decoded 8-bit 4:2:0 frame need memory for up to 448 macroblocks
> and is laid out in memory as follow:

Do you mean "A decoded 8-bit 4:2:0 frame needs up to 448 bytes per
macroblock"?

A 1280x720 frame already consists of 3600 macroblocks (each 16x16 Y +
2x8x8 Cb,Cr).

> +-------------------+
> > Y-plane   256 MBs |

So that looks like it should be 256 bytes * number of macroblocks
instead, same for the following two.

> +-------------------+
> > UV-plane  128 MBs |
> +-------------------+
> > MV buffer  64 MBs |
> 
> +-------------------+
>
> The motion vector buffer offset is currently correct for 4:2:0 because
> the extra space for motion vectors is overallocated with an extra 64 MBs.
> 
> Wrong offset for both destination and motion vector buffer are used
> for the bottom field of field encoded content, wrong offset is
> also used for 4:0:0 (monochrome) content.
> 
> Fix this by always setting the motion vector address to the expected
> 384 MBs offset for 4:2:0 and 256 MBs offset for 4:0:0 content.

Expected by whom? For example, could these be placed in separate buffers
instead of appended to the VB2 allocated buffers?

> Also use correct destination and motion vector buffer offset
> for the bottom field of field encoded content.
> 
> While at it also extend the check for 4:0:0 (monochrome) to include an
> additional check for High Profile (100).
> 
> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  .../staging/media/hantro/hantro_g1_h264_dec.c | 33 +++++++++++--------
>  1 file changed, 19 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> index 7ab534936843..159bd67e0a36 100644
> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> @@ -19,6 +19,9 @@
>  #include "hantro_hw.h"
>  #include "hantro_v4l2.h"
>  
> +#define MV_OFFSET_420	384
> +#define MV_OFFSET_400	256
> +
>  static void set_params(struct hantro_ctx *ctx)
>  {
>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
> @@ -49,8 +52,8 @@ static void set_params(struct hantro_ctx *ctx)
>  	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL0);
>  
>  	/* Decoder control register 1. */
> -	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(sps->pic_width_in_mbs_minus1 + 1) |
> -	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(sps->pic_height_in_map_units_minus1 + 1) |
> +	reg = G1_REG_DEC_CTRL1_PIC_MB_WIDTH(H264_MB_WIDTH(ctx->dst_fmt.width)) |
> +	      G1_REG_DEC_CTRL1_PIC_MB_HEIGHT_P(H264_MB_HEIGHT(ctx->dst_fmt.height)) |
>  	      G1_REG_DEC_CTRL1_REF_FRAMES(sps->max_num_ref_frames);
>  	vdpu_write_relaxed(vpu, reg, G1_REG_DEC_CTRL1);
>  
> @@ -79,7 +82,7 @@ static void set_params(struct hantro_ctx *ctx)
>  		reg |= G1_REG_DEC_CTRL4_CABAC_E;
>  	if (sps->flags & V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE)
>  		reg |= G1_REG_DEC_CTRL4_DIR_8X8_INFER_E;
> -	if (sps->chroma_format_idc == 0)
> +	if (sps->profile_idc >= 100 && sps->chroma_format_idc == 0)
>  		reg |= G1_REG_DEC_CTRL4_BLACKWHITE_E;
>  	if (pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED)
>  		reg |= G1_REG_DEC_CTRL4_WEIGHT_PRED_E;
> @@ -233,6 +236,7 @@ static void set_buffers(struct hantro_ctx *ctx)
>  	struct vb2_v4l2_buffer *src_buf, *dst_buf;
>  	struct hantro_dev *vpu = ctx->dev;
>  	dma_addr_t src_dma, dst_dma;
> +	unsigned int offset = MV_OFFSET_420;
>  
>  	src_buf = hantro_get_src_buf(ctx);
>  	dst_buf = hantro_get_dst_buf(ctx);
> @@ -243,19 +247,20 @@ static void set_buffers(struct hantro_ctx *ctx)
>  
>  	/* Destination (decoded frame) buffer. */
>  	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
> +	if (ctrls->slices[0].flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
> +		dst_dma += ALIGN(ctx->dst_fmt.width, H264_MB_DIM);

How does this work? Does userspace decode two fields into the same
capture buffer and the hardware writes each field with a stride of 2
lines? I suppose this corresponds to V4L2_FIELD_INTERLACED. Could this
also be made to support V4L2_FIELD_SEQ_TB output?

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
