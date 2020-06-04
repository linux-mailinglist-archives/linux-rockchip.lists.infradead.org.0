Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE041EE9D9
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 19:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqB4QS5RlV3yOaDPK8f7OlkTSwZqpwLuse7AdnDRc28=; b=J3nXRlkBTX1RR0
	5xvnbECZ7csARRJuwLZ9CdhE3ZJi7IDhRi2EmSYP7Gqvx91TZU6pm61W+uzF7dhVVXQZaR0b51MCB
	VdzPjmxPD5p/0BirSvLVLSc+6QKo2rdeNppLLUL5YnH2zQlsA+Ulm1weFkAaPv3Q1fInoMDbzJWAx
	9kgMfpaC1dB01Sjrk3smuxDgBfMFWn/zoJdD+/9IVXuHc7bZO4p33wdapJlCXl60i+adt+7P2RLfb
	n1CG+hW9c0ulnB/50JevqGmAq0oNCs2BWwgKI0xBEruha/YbYJVx91rr960nStxMCtCmbzqggFiXY
	r9JvKanq1nmW/gxE9KiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu5H-00056b-7K; Thu, 04 Jun 2020 17:55:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu4k-0002IM-TK
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 17:54:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so7107395wru.6
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 10:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vm2S1z9nMVjklkbdpkGSMNbIr2gCyfLROR/dxBcXxX4=;
 b=OK84xv97aX0B5swEPPU/FAfBHRP8hahLHX1S5Sk7NTO535PSzWV/rcto6xgHiZ8KyN
 GM2sem82HGssb/FjZtthza9Pt5iNf9X8UJkKDRLbSGgVYI8FIL4o7qk9GZ836DINKpwz
 rXlrSu4SCl6ltkD/ga4RDuTGeU1EoGZkB1NsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vm2S1z9nMVjklkbdpkGSMNbIr2gCyfLROR/dxBcXxX4=;
 b=FzmXD09rfGk/CZ861IFUxkKPFdvfn6tbPk22pj+IlVK5lbe008NvbRXaARoapkB63U
 Qda+Fxkxw6Zf1tgFyLkCkxfzYtx/yNXWq4oRKcJ/bYKXj1xARRecGZBYYcRW4FnWOwQ0
 sdo85zEkaOsWBbwDi+KhTZWlSjiGdS2NRTm7qTnZ68wm0D4Ak+GZB2NHAEnG1ItgjaXI
 vGSmeqMOpCXVVFhP5q8rXoNxXtD8YXeUD+Jz6ut6AkiRqe/siJds0xtLeBe8u9FpK50s
 9HWazROA2oEV1WHE/fyMA65iZSsxVMyPHjF8ZgCxQyDAQ7AQcR7NBQn49/ipAkCmvdt7
 JbKw==
X-Gm-Message-State: AOAM5328nwQoH/++MomSb+4JaRs5jXP5R69AexdWIftnLU8hX7FepEcm
 yxMUfNq0oiCtPEtjs36+dC8eIg==
X-Google-Smtp-Source: ABdhPJy/d77Jnb6plRC//3luU7ce65U+fNr0to+S4HYi0iv3gofeymsvL5wvFhYVOkzYeOjzphKNQg==
X-Received: by 2002:a5d:4841:: with SMTP id n1mr5892411wrs.64.1591293284959;
 Thu, 04 Jun 2020 10:54:44 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id x205sm9005396wmx.21.2020.06.04.10.54.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 10:54:44 -0700 (PDT)
Date: Thu, 4 Jun 2020 17:54:43 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [RFC v3 2/2] media: staging: rkisp1: allow quantization
 conversion from userspace for isp source pad
Message-ID: <20200604175443.GB76282@chromium.org>
References: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
 <20200416145605.12399-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416145605.12399-2-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105446_971475_1C844872 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 04:56:05PM +0200, Dafna Hirschfeld wrote:
> The isp entity has a hardware support to force full range quantization
> for YUV formats. Use the new API to indicate userspace that
> quantization conversion is supported by adding the flag
> V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION during media code enumeration.
> Then uppon s_fmt on the video source pad, we assign the
> quantization from userspace for YUV formats.
> Also in the capture and resizer entities we retrieve the colorspace
> from the isp entity.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 28 ++++++-------
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 39 +++++++++++++++++--
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 13 +++++++
>  4 files changed, 65 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index fbf62399fe3d..aca0f93bc772 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1066,14 +1066,13 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
>  			   const struct v4l2_format_info **fmt_info)
>  {
>  	const struct rkisp1_capture_config *config = cap->config;
> -	struct rkisp1_capture *other_cap =
> -			&cap->rkisp1->capture_devs[cap->id ^ 1];
>  	const struct rkisp1_capture_fmt_cfg *fmt;
>  	const struct v4l2_format_info *info;
>  	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
>  					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
>  	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
>  					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
> +	struct v4l2_subdev_format isp_sd_fmt;
>  
>  	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
>  	if (!fmt) {
> @@ -1081,24 +1080,27 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
>  		pixm->pixelformat = fmt->fourcc;
>  	}
>  
> +	rkisp1_get_isp_src_fmt(cap->rkisp1, &isp_sd_fmt);
> +	pixm->field = isp_sd_fmt.format.field;
> +	pixm->colorspace = isp_sd_fmt.format.colorspace;
> +	pixm->ycbcr_enc = isp_sd_fmt.format.ycbcr_enc;
> +	pixm->xfer_func = isp_sd_fmt.format.xfer_func;
> +
> +	/*
> +	 * isp has a feature to set full range quantization for yuv formats.

How about "select between limited and full range for YUV formats"?

> +	 * so we need to get the format from the isp.
> +	 */
> +	pixm->quantization = isp_sd_fmt.format.quantization;
> +	if (!v4l2_is_format_yuv(cap->pix.info))
> +		pixm->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +
>  	pixm->width = clamp_t(u32, pixm->width,
>  			      RKISP1_RSZ_SRC_MIN_WIDTH, max_widths[cap->id]);
>  	pixm->height = clamp_t(u32, pixm->height,
>  			       RKISP1_RSZ_SRC_MIN_HEIGHT, max_heights[cap->id]);
>  
> -	pixm->field = V4L2_FIELD_NONE;
> -	pixm->colorspace = V4L2_COLORSPACE_DEFAULT;
> -	pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> -
>  	info = rkisp1_fill_pixfmt(pixm, cap->id);
>  
> -	/* can not change quantization when stream-on */
> -	if (other_cap->is_streaming)
> -		pixm->quantization = other_cap->pix.fmt.quantization;
> -	/* output full range by default, take effect in params */
> -	else if (!pixm->quantization ||
> -		 pixm->quantization > V4L2_QUANTIZATION_LIM_RANGE)
> -		pixm->quantization = V4L2_QUANTIZATION_FULL_RANGE;
>  
>  	if (fmt_cfg)
>  		*fmt_cfg = fmt;
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 2d7b7e078636..7a5576fa14c9 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -300,6 +300,8 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  			struct v4l2_device *v4l2_dev);
>  void rkisp1_isp_unregister(struct rkisp1_device *rkisp1);
>  
> +int rkisp1_get_isp_src_fmt(struct rkisp1_device *rkisp1,
> +			   struct v4l2_subdev_format *sd_fmt);
>  const struct rkisp1_isp_mbus_info *rkisp1_isp_mbus_info_get(u32 mbus_code);
>  
>  irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1);
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index dee8e96f3900..6fdf5ed0b6b1 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -613,6 +613,10 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
>  
>  		if (code->index == pos - 1) {
>  			code->code = fmt->mbus_code;
> +			if (fmt->pixel_enc == V4L2_PIXEL_ENC_YUV &&
> +			    dir == RKISP1_DIR_SRC)
> +				code->flags =
> +					V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION;
>  			return 0;
>  		}
>  	}
> @@ -639,12 +643,21 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
>  	sink_crop->height = RKISP1_DEFAULT_HEIGHT;
>  	sink_crop->left = 0;
>  	sink_crop->top = 0;
> +	sink_fmt->colorspace = V4L2_COLORSPACE_SRGB;
> +	sink_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(sink_fmt->colorspace);
> +	sink_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(sink_fmt->colorspace);
> +	sink_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +
>  
>  	src_fmt = v4l2_subdev_get_try_format(sd, cfg,
>  					     RKISP1_ISP_PAD_SOURCE_VIDEO);
>  	*src_fmt = *sink_fmt;
>  	src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
> -	src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +	src_fmt->colorspace = V4L2_COLORSPACE_SRGB;
> +	src_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(src_fmt->colorspace);
> +	src_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(src_fmt->colorspace);
> +	src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
> +
>  
>  	src_crop = v4l2_subdev_get_try_crop(sd, cfg,
>  					    RKISP1_ISP_PAD_SOURCE_VIDEO);
> @@ -687,10 +700,17 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
>  		isp->src_fmt = mbus_info;
>  	src_fmt->width  = src_crop->width;
>  	src_fmt->height = src_crop->height;
> -	src_fmt->quantization = format->quantization;
> -	/* full range by default */
> -	if (!src_fmt->quantization)
> +
> +	src_fmt->colorspace = V4L2_COLORSPACE_SRGB;
> +	src_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(src_fmt->colorspace);
> +	src_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(src_fmt->colorspace);
> +
> +	if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_BAYER)
>  		src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +	else if (format->quantization == V4L2_QUANTIZATION_DEFAULT)
> +		src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
> +	else
> +		src_fmt->quantization = format->quantization;
>  
>  	*format = *src_fmt;
>  }
> @@ -1068,6 +1088,17 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  	return ret;
>  }
>  
> +int rkisp1_get_isp_src_fmt(struct rkisp1_device *rkisp1,
> +			   struct v4l2_subdev_format *sd_fmt)
> +{
> +	struct rkisp1_isp *isp = &rkisp1->isp;
> +
> +	sd_fmt->which = V4L2_SUBDEV_FORMAT_ACTIVE;
> +	sd_fmt->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
> +
> +	return v4l2_subdev_call(&isp->sd, pad, get_fmt, NULL, sd_fmt);

Do we need to get through the external API to access data that is
driver-internal anyway?

> +}
> +
>  void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>  {
>  	struct v4l2_subdev *sd = &rkisp1->isp.sd;
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 7b6b7ddd4169..8705b133de68 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -525,6 +525,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>  	const struct rkisp1_isp_mbus_info *mbus_info;
>  	struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
>  	struct v4l2_rect *sink_crop;
> +	struct v4l2_subdev_format isp_sd_fmt;
>  
>  	sink_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SINK, which);
>  	src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
> @@ -539,8 +540,20 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>  	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
>  		rsz->pixel_enc = mbus_info->pixel_enc;
>  
> +	rkisp1_get_isp_src_fmt(rsz->rkisp1, &isp_sd_fmt);
> +

Is this necessary? My understanding was that in the subdev model, it was
the userspace responsibility to propagate any configuration changes through
the graph.

Also, doing this only here wouldn't fully maintain the
consistency of the state. For example, if one sets the ISP subdev format
first, then the resizer subdev and then the ISP subdev again, wouldn't the
resizer subdev end up with a wrong format?

Best regards,
Tomasz

> +	sink_fmt->field = isp_sd_fmt.format.field;
> +	sink_fmt->colorspace = isp_sd_fmt.format.colorspace;
> +	sink_fmt->ycbcr_enc = isp_sd_fmt.format.ycbcr_enc;
> +	sink_fmt->xfer_func = isp_sd_fmt.format.xfer_func;
> +
>  	/* Propagete to source pad */
>  	src_fmt->code = sink_fmt->code;
> +	src_fmt->field = sink_fmt->field;
> +	src_fmt->colorspace = sink_fmt->colorspace;
> +	src_fmt->ycbcr_enc = sink_fmt->ycbcr_enc;
> +	src_fmt->xfer_func = sink_fmt->xfer_func;
> +	src_fmt->quantization = sink_fmt->quantization;
>  
>  	sink_fmt->width = clamp_t(u32, format->width,
>  				  rsz->config->min_rsz_width,
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
