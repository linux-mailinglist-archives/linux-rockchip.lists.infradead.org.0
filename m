Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6471FAFE4
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jun 2020 14:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXN6ocnfJUxAyPqInhIUHoHMDwElv8NNu7VFfnid7l8=; b=EolTXZv3jg0UHo
	WN9RmW3dWtKaqA9KMzfu3CTzw1LX+VbbIBf8Q+pVAqrcfca6Qe5Onhh2tO1ty1KrOxPpgoBT/aXHt
	GVWKXPV/oOCoEQT42urTMnFGy63QVl1Q+HbYgM7FP0u8xAkG/GCDH245n2KVQAa830Ks9Ua8GRZYc
	cTwglFuTRRjdR1SF3fcmzuCLnoVAl7eMWMihic7MNztUplWIDC+cq+k9gKtPUoAkGxUnNGxCijAo5
	NigekK2IeYs4IxlX9Nr+1/JpjS96QN+xGrAxOTY87feHXmPwL8unx1oggE5ojvnHgAmEhq8P/Bs5S
	3g6WkB96qhqkX83jQu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAOk-0002mw-Ca; Tue, 16 Jun 2020 12:09:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAOg-0002mN-Q3
 for linux-rockchip@lists.infradead.org; Tue, 16 Jun 2020 12:09:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id D10C62A0EE8
Subject: Re: [RESEND PATCH v3 4/6] media: staging: rkisp1: rename macros
 'RKISP1_DIR_*' to 'RKISP1_ISP_SD_*'
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
 <20200613091353.12689-5-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <d06a3bde-42d9-07d9-17e3-7f9035fa9566@collabora.com>
Date: Tue, 16 Jun 2020 09:08:50 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200613091353.12689-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_050859_117980_597698BE 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On 6/13/20 6:13 AM, Dafna Hirschfeld wrote:
> The macros 'RKISP1_DIR_*' are flags that indicate on which
> pads of the isp subdevice the media bus code is supported. so the
> prefix RKISP1_ISP_SD_ is better.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  4 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++++----------
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  3 files changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 0ec8718037a4..12bd9d05050d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -22,8 +22,8 @@
>  #include "rkisp1-regs.h"
>  #include "uapi/rkisp1-config.h"
>  
> -#define RKISP1_DIR_SRC BIT(0)
> -#define RKISP1_DIR_SINK BIT(1)
> +#define RKISP1_ISP_SD_SRC BIT(0)
> +#define RKISP1_ISP_SD_SINK BIT(1)

Could you submit this change before 2/4? So when you move the macro, it will be correct already.

With this:

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

>  
>  #define RKISP1_ISP_MAX_WIDTH		4032
>  #define RKISP1_ISP_MAX_HEIGHT		3024
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 157ac58c2efc..b21a67aea433 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -58,119 +58,119 @@ static const struct rkisp1_isp_mbus_info rkisp1_isp_formats[] = {
>  	{
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
> -		.direction	= RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW10,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 10,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW12,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 12,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_RGGB,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_BGGR,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_GBRG,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
>  		.pixel_enc	= V4L2_PIXEL_ENC_BAYER,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_RAW8,
>  		.bayer_pat	= RKISP1_RAW_GRBG,
>  		.bus_width	= 8,
> -		.direction	= RKISP1_DIR_SINK | RKISP1_DIR_SRC,
> +		.direction	= RKISP1_ISP_SD_SINK | RKISP1_ISP_SD_SRC,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCBYCR,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_DIR_SINK,
> +		.direction	= RKISP1_ISP_SD_SINK,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_YCRYCB,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_DIR_SINK,
> +		.direction	= RKISP1_ISP_SD_SINK,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CBYCRY,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_DIR_SINK,
> +		.direction	= RKISP1_ISP_SD_SINK,
>  	}, {
>  		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
>  		.pixel_enc	= V4L2_PIXEL_ENC_YUV,
>  		.mipi_dt	= RKISP1_CIF_CSI2_DT_YUV422_8b,
>  		.yuv_seq	= RKISP1_CIF_ISP_ACQ_PROP_CRYCBY,
>  		.bus_width	= 16,
> -		.direction	= RKISP1_DIR_SINK,
> +		.direction	= RKISP1_ISP_SD_SINK,
>  	},
>  };
>  
> @@ -570,9 +570,9 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
>  	int pos = 0;
>  
>  	if (code->pad == RKISP1_ISP_PAD_SINK_VIDEO) {
> -		dir = RKISP1_DIR_SINK;
> +		dir = RKISP1_ISP_SD_SINK;
>  	} else if (code->pad == RKISP1_ISP_PAD_SOURCE_VIDEO) {
> -		dir = RKISP1_DIR_SRC;
> +		dir = RKISP1_ISP_SD_SRC;
>  	} else {
>  		if (code->index > 0)
>  			return -EINVAL;
> @@ -657,7 +657,7 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
>  
>  	src_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
> -	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
> +	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
>  		src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
>  	}
> @@ -741,7 +741,7 @@ static void rkisp1_isp_set_sink_fmt(struct rkisp1_isp *isp,
>  					  which);
>  	sink_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
> -	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SINK)) {
> +	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SINK)) {
>  		sink_fmt->code = RKISP1_DEF_SINK_PAD_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>  	}
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index fa28f4bd65c0..137298b77341 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>  					    which);
>  	sink_fmt->code = format->code;
>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
> -	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
> +	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
>  		sink_fmt->code = RKISP1_DEF_FMT;
>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>  	}
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
