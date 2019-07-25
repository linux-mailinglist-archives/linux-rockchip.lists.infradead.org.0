Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD8B753CC
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 18:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ypnW6UQZCHPzA8glYD9TXu8l8qDwUlC80hCuZ4H6Oo=; b=ZmbTvM9gFtmL8D
	oUIMeIVhnpphE9sthk6JDO7Q59SMmNL5aV4+9TVNIztiuuaMiZrrNfB9CdKAGN4fE3HGqpvt55FNn
	s3tBWfUK1vFFxskgA06HSHRyuz79m/ETD58gOT7S/MNV7oKn+oIZxUmlLxBdZu86rZwH0iItdnTv1
	Z7vrCWkNr8mG/6kHvemuSl2wdxEF2IGXo8IwDCpVnIPezu0Jwm03hWJw/W8O+Lbb+yaDuhOy9qQXV
	LONModsbcA/biqcFyvwAmDmLNUDz3EnPllfDEEQMIMXbbu0aW5ezeyFYk7OKS7WbucAlcL9PfP168
	HuNdPWBEqIK+CjGbKKlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgW1-0001RA-A1; Thu, 25 Jul 2019 16:22:49 +0000
Received: from [179.95.31.157] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgVo-0001QW-C5; Thu, 25 Jul 2019 16:22:36 +0000
Date: Thu, 25 Jul 2019 13:22:30 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 6/7] media: hantro: Move VP8 common code
Message-ID: <20190725132230.6e7f0c22@coco.lan>
In-Reply-To: <20190725141756.2518-7-ezequiel@collabora.com>
References: <20190725141756.2518-1-ezequiel@collabora.com>
 <20190725141756.2518-7-ezequiel@collabora.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Em Thu, 25 Jul 2019 11:17:55 -0300
Ezequiel Garcia <ezequiel@collabora.com> escreveu:

> In order to introduce support for RK3399 VP8 decoding,
> move some common VP8 code. This will be reused by
> the RK3399 implementation, reducing code duplication.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../staging/media/hantro/hantro_g1_vp8_dec.c    | 17 -----------------
>  drivers/staging/media/hantro/hantro_hw.h        |  4 ++++
>  drivers/staging/media/hantro/hantro_vp8.c       | 15 +++++++++++++++
>  3 files changed, 19 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
> index cd1fbd3a0d5f..181e2f76d8cb 100644
> --- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
> @@ -16,8 +16,6 @@
>  #include "hantro.h"
>  #include "hantro_g1_regs.h"
>  
> -#define DEC_8190_ALIGN_MASK	0x07U
> -
>  /* DCT partition base address regs */
>  static const struct hantro_reg vp8_dec_dct_base[8] = {
>  	{ G1_REG_ADDR_STR, 0, 0xffffffff },
> @@ -131,21 +129,6 @@ static const struct hantro_reg vp8_dec_pred_bc_tap[8][4] = {
>  	},
>  };
>  
> -/*
> - * filter taps taken to 7-bit precision,
> - * reference RFC6386#Page-16, filters[8][6]
> - */
> -static const u32 vp8_dec_mc_filter[8][6] = {
> -	{ 0, 0, 128, 0, 0, 0 },
> -	{ 0, -6, 123, 12, -1, 0 },
> -	{ 2, -11, 108, 36, -8, 1 },
> -	{ 0, -9, 93, 50, -6, 0 },
> -	{ 3, -16, 77, 77, -16, 3 },
> -	{ 0, -6, 50, 93, -9, 0 },
> -	{ 1, -8, 36, 108, -11, 2 },
> -	{ 0, -1, 12, 123, -6, 0 }
> -};
> -
>  /*
>   * Set loop filters
>   */
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 34ef24e3a9ef..185e27d47e47 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -15,6 +15,8 @@
>  #include <media/vp8-ctrls.h>
>  #include <media/videobuf2-core.h>
>  
> +#define DEC_8190_ALIGN_MASK	0x07U
> +
>  struct hantro_dev;
>  struct hantro_ctx;
>  struct hantro_buf;
> @@ -93,6 +95,8 @@ extern const struct hantro_variant rk3399_vpu_variant;
>  extern const struct hantro_variant rk3328_vpu_variant;
>  extern const struct hantro_variant rk3288_vpu_variant;
>  
> +extern const u32 vp8_dec_mc_filter[8][6];

Please don't do that, as a symbol like that can easily cause
namespace clashes in the future. For all exported symbols,
please prepend the driver name, like:

	hantro_vp8_dec_mc_filter

Regards,
Mauro


> +
>  void hantro_watchdog(struct work_struct *work);
>  void hantro_run(struct hantro_ctx *ctx);
>  void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
> diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
> index 66c45335d871..be5cb01d1309 100644
> --- a/drivers/staging/media/hantro/hantro_vp8.c
> +++ b/drivers/staging/media/hantro/hantro_vp8.c
> @@ -31,6 +31,21 @@ struct vp8_prob_tbl_packed {
>  	u8 padding3[96];
>  };
>  
> +/*
> + * filter taps taken to 7-bit precision,
> + * reference RFC6386#Page-16, filters[8][6]
> + */
> +const u32 vp8_dec_mc_filter[8][6] = {
> +	{ 0, 0, 128, 0, 0, 0 },
> +	{ 0, -6, 123, 12, -1, 0 },
> +	{ 2, -11, 108, 36, -8, 1 },
> +	{ 0, -9, 93, 50, -6, 0 },
> +	{ 3, -16, 77, 77, -16, 3 },
> +	{ 0, -6, 50, 93, -9, 0 },
> +	{ 1, -8, 36, 108, -11, 2 },
> +	{ 0, -1, 12, 123, -6, 0 }
> +};
> +
>  void hantro_vp8_prob_update(struct hantro_ctx *ctx,
>  			    const struct v4l2_ctrl_vp8_frame_header *hdr)
>  {



Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
