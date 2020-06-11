Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B871F6B8C
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 17:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ti1qe9jJiVSzS46UYHF4hZKz6Ft/qSRpViUMgiU+JX0=; b=NYqX08dMKBt2i9
	vARKVXED3MRvlYVkyTkrwApm5v2cMKIh9ZpHcUzwFizB1SkP+fs46aVRymMEGs4K8Doao/6mRT3nY
	Ttwls3pzlz+9np216xEVeVyRb/EkKx5euaLAVNv3q5ZGxlHE7OQ7Mnd+auuJH0vyXN8VZgrOurwHJ
	s7cUoqmLFS6NDJplFIeUwg3stCxMlqDZqxkRR8EyulNSfSKYZxkPDeYFllpLoNZW/6kRn/D2qljKt
	8a2iGp2B/x2dWRMs9EuE/zDSE0rA3at1cE+TYQLgr6xSoHDpJDUJWpBlNqEVS+rnIw6gU3AX1ojag
	CxwhGRY13ECfoOYUbypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPUL-0004SV-7B; Thu, 11 Jun 2020 15:51:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPUH-0004Qr-6R
 for linux-rockchip@lists.infradead.org; Thu, 11 Jun 2020 15:51:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5ED9F206A4;
 Thu, 11 Jun 2020 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591890688;
 bh=kmI7tu1ZxEEZO4vDQF3xMy9ndVEBcfegnDxPX5TUQc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M6lsWGkrw+ysGXqhSNF5NgAXwhD6ymYgDcY12RB6mny8Wzom8rS8SRg9iJ21TLGJJ
 NoQtyeMhS2gkFdFONYcjqWH4B5G/DI5xzA7GevLjcPxxZCLzIFN00lADO8vtJSEIW9
 eT4FDYyaKDVRiNobtMAICX6xaHW8FFtGODRGEYLM=
Date: Thu, 11 Jun 2020 17:51:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [RESEND PATCH v3 5/6] media: staging: rkisp1: rename the field
 'direction' in 'rkisp1_isp_mbus_info' to 'isp_pads_mask'
Message-ID: <20200611155122.GE1456044@kroah.com>
References: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
 <20200611154551.25022-6-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611154551.25022-6-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_085129_282928_9343C209 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mchehab@kernel.org, dafna3@gmail.com, stable@vger.kernel.org,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 05:45:50PM +0200, Dafna Hirschfeld wrote:
> The field 'direction' in 'struct rkisp1_isp_mbus_info' is a mask
> of the supported pads of the mbus code. Therefore
> the name 'isp_pads_mask' is better.
> The patch also rename a local variable 'dir' that holds such mask
> to 'pad'.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 46 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  3 files changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 12bd9d05050d..13c5eeff66f3 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -282,7 +282,7 @@ struct rkisp1_isp_mbus_info {
>  	u32 yuv_seq;
>  	u8 bus_width;
>  	enum rkisp1_fmt_raw_pat_type bayer_pat;
> -	unsigned int direction;
> +	unsigned int isp_pads_mask;
>  };
>  
>  static inline void
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index b21a67aea433..2dd01edf8ff1 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -58,119 +58,119 @@ static const struct rkisp1_isp_mbus_info rkisp1_isp_formats[] = {
>  	{
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
> -		.direction	= RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCBYCR,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_ISP_SD_SINK,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCRYCB,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_ISP_SD_SINK,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CBYCRY,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_ISP_SD_SINK,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CRYCBY,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_ISP_SD_SINK,
> +		.isp_pads_mask	= RKISP1_ISP_SD_SINK,
>  	},
>  };
>  
> @@ -566,13 +566,13 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
>  				     struct v4l2_subdev_pad_config *cfg,
>  				     struct v4l2_subdev_mbus_code_enum *code)
>  {
> -	unsigned int i, dir;
> +	unsigned int i, pad;
>  	int pos = 0;
>  
>  	if (code->pad == RKISP1_ISP_PAD_SINK_VIDEO) {
> -		dir = RKISP1_ISP_SD_SINK;
> +		pad = RKISP1_ISP_SD_SINK;
>  	} else if (code->pad == RKISP1_ISP_PAD_SOURCE_VIDEO) {
> -		dir = RKISP1_ISP_SD_SRC;
> +		pad = RKISP1_ISP_SD_SRC;
>  	} else {
>  		if (code->index > 0)
>  			return -EINVAL;
> @@ -586,7 +586,7 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
>  	for (i = 0; i < ARRAY_SIZE(rkisp1_isp_formats); i++) {
>  		const struct rkisp1_isp_mbus_info *fmt = &rkisp1_isp_formats[i];
>  
> -		if (fmt->direction & dir)
> +		if (fmt->isp_pads_mask & pad)
>  			pos++;
>  
>  		if (code->index == pos - 1) {
> @@ -657,7 +657,7 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
>  
>  	src_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
> -	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
> +	if (!mbus_info || !(mbus_info->isp_pads_mask & RKISP1_ISP_SD_SRC)) {
>  		src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
>  	}
> @@ -741,7 +741,7 @@ static void rkisp1_isp_set_sink_fmt(struct rkisp1_isp *isp,
>  					  which);
>  	sink_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
> -	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SINK)) {
> +	if (!mbus_info || !(mbus_info->isp_pads_mask & RKISP1_ISP_SD_SINK)) {
>  		sink_fmt->code = RKISP1_DEF_SINK_PAD_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>  	}
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 137298b77341..5d7a42be3d7f 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>  					    which);
>  	sink_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
> -	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
> +	if (!mbus_info || !(mbus_info->isp_pads_mask & RKISP1_ISP_SD_SRC)) {
>  		sink_fmt->code = RKISP1_DEF_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>  	}
> -- 
> 2.17.1
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
