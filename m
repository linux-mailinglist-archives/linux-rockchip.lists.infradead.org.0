Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6801919ED0B
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 19:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjuWj/b3piSrzzIy5oNPcAEHl7rkp1T6aSbMjZlq0Wk=; b=NXvM0apOlXDdRU
	KpVo6qaHIEO6y5FmcukxJi2CUOhno2PaKRgOVvGJpHF2TFJI67v50yw5+ToO68WbSp3zD8aXc0vxm
	vPu4NvZhchV+d9zhO2qwvZWYHpvT3gepRtZKuhXvRhO16/ViQnaQQb43crKET9UGK2cRS69GxoiwP
	t7hd0RAm81f/WdtVvzuJTDR12I3ZfIDadS/u9r82W/gp+qwe0Jd5AiXrf0y9gVfeGOuPx3wjpTNoC
	0d1jqF/bIXtqtne/hW9ZMyLDSL9kIaQUchsbBQZRQT7VMx8GzXZjEAOgkCyiGeFcXHnIxQcLOFacs
	3xAhgyOz719zPOOjJG9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Du-0003wb-Cg; Sun, 05 Apr 2020 17:38:18 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9DI-0003Fz-F6
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 17:37:42 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CA699312;
 Sun,  5 Apr 2020 19:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586108259;
 bh=ZQWKLRFLqaB6y8h40ZOQQg4QRgKiWbBcLWj0Rf8puRo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ffMOekwKKlooi4wmaPsXW9ALE8YHOfiqcH5DeCMQtHdySyjTv8EIRg3cCO8I9Q2Ir
 wz4I5ht0VRJfKaQkD5gwbWi4w3HQsIl/c4T0DRpVbZyRULtiNQJCXW4hjqDlLryYbW
 tM+hdKZzu2661IhJjmtxRRzxLzK/PXh7UVYXr7ac=
Date: Sun, 5 Apr 2020 20:37:29 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: cap: enable RGB capture
 format with YUV media bus
Message-ID: <20200405173729.GJ5846@pendragon.ideasonboard.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328105606.13660-4-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103740_680517_3503D76C 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Dafna

Thank you for the patch.

On Sat, Mar 28, 2020 at 11:56:06AM +0100, Dafna Hirschfeld wrote:
> In selfpath, RGB capture formats are received in the sink pad as YUV
> and are converted to RGB only when writing to memory. So the validation
> function should accept YUV bus formats with RGB capture encoding.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index b7681b806b4c..3abf38362f5a 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1227,6 +1227,9 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  		media_entity_to_v4l2_subdev(link->source->entity);
>  	struct rkisp1_capture *cap = video_get_drvdata(vdev);
>  	struct rkisp1_isp *isp = &cap->rkisp1->isp;
> +	enum rkisp1_fmt_pix_type cap_fmt =
> +		rkisp1_pixel_enc_to_fmt_pix(cap->pix.info);
> +	enum rkisp1_fmt_pix_type isp_fmt = isp->src_fmt->fmt_type;
>  	struct v4l2_subdev_format sd_fmt;
>  	int ret;
>  
> @@ -1237,8 +1240,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  		return -EPIPE;
>  	}
>  
> -	if (rkisp1_pixel_enc_to_fmt_pix(cap->pix.info) !=
> -	    isp->src_fmt->fmt_type) {
> +	if ((cap_fmt == RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_YUV) ||
> +	    (cap_fmt != RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_BAYER)) {

How about listing the supported options instead of the unsupported
options ?

	if (!(isp_fmt == cap_fmt) &&
	    !(isp_fmt == RKISP1_FMT_YUV && cap_fmt == RKISP1_FMT_RGB))

This would also reject RKISP1_FMT_JPEG (which isn't used yet, true), and
generally (in my opinion at least) be more readable.

>  		dev_err(cap->rkisp1->dev,
>  			"format type mismatch in link '%s:%d->%s:%d'\n",
>  			link->source->entity->name, link->source->index,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
