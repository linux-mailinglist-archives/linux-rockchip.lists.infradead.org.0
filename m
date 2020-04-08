Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78621A216A
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 14:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZJFWKBl2mQV91j6MWnjQBz3Vh8PjC5H7n5WlKz+miM=; b=YHnB7Zq45vcyIi
	JIlb+qRwgax7hmQo6TvoKgWbdJj2pAuunrokOWcZLUjQz1/WSXfQee3KaEu6nh0WhGBIsO0iM7F2B
	vf4+Mg04/KWrjl9M6P0Bt6odR5jq2fE1vKuFt6oVL7/HL6MtE3bKBqg4Y1eafpH2uPVkv7mqXt3b3
	AoBCyk7KsZrsgbZ+vXbPl4w1KOXnXMkQeH7RA1Ft4cRIdrKKrRJJ+NpFfw/kPPnZkzpCPtCh/gYua
	8BQHFdOtTHppT4lEJMHd+Bf6b+N+ke0Xj/4ZHpuIcq8feJ3n/pyw/OmMy0sXhPE9Iw6LgoVugZqpi
	JnzAh7EZmXO13H1FgGrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9XV-00018A-Tj; Wed, 08 Apr 2020 12:10:41 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9XT-00016e-6D
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 12:10:40 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id EB4FB522;
 Wed,  8 Apr 2020 14:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586347821;
 bh=0RVmavHkVibnxpVdIQn+9bbiCkla5GEqa64mmvd5tbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tKbvQSyPBTjLgBDODAJmeQwvB6NKGfzpGd+rkMaJ1i5gjVtAMmTfE1DW3P7XFK5hC
 i72+c/vAWoItMpgKv+uFbjUdY4NsEjtHdptIfGBZqbp2w3xG+P5Gmr1i+jNQgqtqmF
 +yFi2wuUHymdHhv2lo18jmtsmgOpLZwlAacBFj+M=
Date: Wed, 8 Apr 2020 15:10:11 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 3/6] media: staging: rkisp1: cap: change the logic for
 writing to uv swap register
Message-ID: <20200408121011.GE4881@pendragon.ideasonboard.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
 <20200408114822.27360-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408114822.27360-4-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_051039_382745_5D7F1AE2 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Wed, Apr 08, 2020 at 01:48:19PM +0200, Dafna Hirschfeld wrote:
> The register RKISP1_CIF_MI_XTD_FORMAT_CTRL is currently written
> with "on" only if the u,v streams need to be swapped. This patch
> also write to it with "off" if they don't need to be swapped.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

I think you can squash this with 1/6 and 2/6.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 5d0e489505f0..4830083c33fd 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -383,12 +383,12 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  		     cap->config->mi.cr_size_init);
>  
>  	rkisp1_irq_frame_end_enable(cap);
> -	if (cap->pix.cfg->uv_swap) {
> -		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> -
> +	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +	if (cap->pix.cfg->uv_swap)
>  		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> -		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> -	}
> +	else
> +		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> +	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
>  	rkisp1_mi_config_ctrl(cap);
>  
> @@ -406,7 +406,7 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>  {
>  	const struct v4l2_pix_format_mplane *pixm = &cap->pix.fmt;
>  	struct rkisp1_device *rkisp1 = cap->rkisp1;
> -	u32 mi_ctrl;
> +	u32 mi_ctrl, reg;
>  
>  	rkisp1_write(rkisp1, rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_Y),
>  		     cap->config->mi.y_size_init);
> @@ -420,12 +420,13 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>  	rkisp1_write(rkisp1, cap->sp_y_stride, RKISP1_CIF_MI_SP_Y_LLENGTH);
>  
>  	rkisp1_irq_frame_end_enable(cap);
> -	if (cap->pix.cfg->uv_swap) {
> -		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
> +	reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> +	if (cap->pix.cfg->uv_swap)
>  		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> -		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
> -	}
> +	else
> +		reg &= ~RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
> +	rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
>  	rkisp1_mi_config_ctrl(cap);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
