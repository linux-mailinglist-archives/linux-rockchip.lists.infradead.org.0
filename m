Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA19A8034
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 12:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XkNZGv0R9qGWFma/iX57o/q+ZMIpnMt5m9bCQnD6wA=; b=FNn3CwUHrH6Gop
	hEZgKL7HGaJet2AtRvjSdtrewMZJvIFu1zU9sKyj3XyfpyEeYBNt2JOpdFVSsOF5h2w6Wp8l7qofU
	RhGEesjolDj0BxZrjcCmbyzBe6ZygxUphe06paGx/c0D8RCZhno0bV8yZJ2meeg/UnR7FW3jyaJJh
	6cV7e/Y38lZYk3oJ8+lro4sIBjaD/72zF4pjhaq7dsOrdVuIbMKTfDasKsJIlzzKhtYrHB6M1sJue
	jL6LJsnsJPkcGOKgYfWEl8A3DlbF0bYIyWYx+Z+zJZBHlPNyC9Zs5c7hPhq8Yfanpxi5vMIelparD
	RCTl+Z09drmo/BmlaeHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SMP-0006M1-Qh; Wed, 04 Sep 2019 10:17:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SML-0006LM-Sf
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 10:17:56 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i5SMJ-0000g8-3X; Wed, 04 Sep 2019 12:17:51 +0200
Message-ID: <1567592270.3041.4.camel@pengutronix.de>
Subject: Re: [PATCH 3/4] media: hantro: Add helper for the H264 motion
 vectors allocation
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Wed, 04 Sep 2019 12:17:50 +0200
In-Reply-To: <20190903181711.7559-4-ezequiel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <20190903181711.7559-4-ezequiel@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_031753_927866_DC4963F4 
X-CRM114-Status: GOOD (  13.31  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2019-09-03 at 15:17 -0300, Ezequiel Garcia wrote:
> Introduce a helper to allow easier enablement of the post-processing
> feature. No functional changes intended.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro.h      | 6 ++++++
>  drivers/staging/media/hantro/hantro_v4l2.c | 4 ++--
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> index deb90ae37859..e8872f24e351 100644
> --- a/drivers/staging/media/hantro/hantro.h
> +++ b/drivers/staging/media/hantro/hantro.h
> @@ -381,4 +381,10 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
>  	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
>  }
>  
> +static inline unsigned int
> +hantro_h264_buffer_extra_size(unsigned int width, unsigned int height)
> +{
> +	return 128 * MB_WIDTH(width) * MB_HEIGHT(height);
> +}

This doesn't seem to be used or modified by patch 4 at all?

> +
>  #endif /* HANTRO_H_ */
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index d48b548842cf..59adecba0e85 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -246,8 +246,8 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
>  		 */
>  		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
>  			pix_mp->plane_fmt[0].sizeimage +=
> -				128 * DIV_ROUND_UP(pix_mp->width, 16) *
> -				      DIV_ROUND_UP(pix_mp->height, 16);
> +				hantro_h264_buffer_extra_size(pix_mp->width,
> +							      pix_mp->height);
>  	} else if (!pix_mp->plane_fmt[0].sizeimage) {
>  		/*
>  		 * For coded formats the application can specify

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
