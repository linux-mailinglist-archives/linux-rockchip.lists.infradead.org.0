Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848F31EE98B
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 19:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwwA2frEOnagc7Yf5ZgWvej39ba0TpNuW1czjMe7gOM=; b=oXIWxGvigIuRd/
	6rDVlVi1xiOYeg+dueNsiaC3eyFZiyaLNohkKX03rYD8D211poXbcvGlMDBbanj2G3UYTYYQgl7Cv
	eVu162w1yfdPhGbS4nidF9/HhMV7EBqtHBTRR0NIBY1jDi+vom4VW8Ws3XnOr4OmZBKgWYZadovTf
	+5J+2ExcNciFHnqbbPNmuypuvY7tn5DcN69qSRqo8x0umaEWbD+cBJF5AnLUcMvKUzZMB4jRnlDIr
	gNIremWcQbpwZEmbGkOCbtfki3Pvo/MFjhzmM6cWQuARnRIi23tpa0T+JMnR9rmDVd20d2kdMIbqR
	DKsRCzscc5lqC5NgVm1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtpg-00010C-CV; Thu, 04 Jun 2020 17:39:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtpa-0000oB-PW
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 17:39:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so7024979wru.12
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 10:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=orVp6+qvVFOPT3a2lq8sh5d/BvVbJ1fTQgVtWuQ5Thc=;
 b=ZC7MqCQ9ZoV9jiXtcEDjUBi3kbwNP02sD0wlZfXllnXuUnepqf0TcCBZA7CTwX5FdJ
 RwEeMLEpwy1OnyyMJV3WLuBnoGCIadz70Oe0TSZzOee60sqd2Rakc2BxKxilC6fIXnXM
 nD2XzzKk5jVTuByLjUNnMsi9njVgTuLkjzgDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=orVp6+qvVFOPT3a2lq8sh5d/BvVbJ1fTQgVtWuQ5Thc=;
 b=R/t2maDtvrbeAPkAvVOJWGyNAa2ZzmDIupgfnKMUR3MFEAc9BntneAjUzpjV2KgVgp
 fmgOLAALoxh9bs1mQ09wRKPoqZeTvRZ0HoQc4BUKes/1LQHFDOE4Vqp8Ep21dHeg8wih
 T5FBohrO1GPHWcUi7jEdAMscV90f/Speu5IHyvha1BmAb1XZC8Yt4Vw3bcaRcmTKhZTy
 6BWQiCXSByjX0y6V5qJPj6YawiOuPEbAYLhteTWrkR0R582PbmpqtOf1krtYWDOillAl
 Zx+u+znNO6JBxgoBMjIkszSih3NrJW0il6FQHS9Wt6kyjdH7OcR2icD5Or7CaA8Tv52V
 APsQ==
X-Gm-Message-State: AOAM533NH+jaWqQ2Rj1dc7LN+dB7Yn8hcoSOb4x/K8ToEfCF2QnFzdNN
 e1JldMMrauBrfI13Ip+SSO4u5w==
X-Google-Smtp-Source: ABdhPJwVh/CDZSRkJNHyGSP0oJUJLrnfxwO7R+7hOST/ws9PEkoKUJal5s509l2zoIf53YQ5PsQRpA==
X-Received: by 2002:a05:6000:47:: with SMTP id
 k7mr5199741wrx.233.1591292344142; 
 Thu, 04 Jun 2020 10:39:04 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id u12sm8984330wrq.90.2020.06.04.10.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 10:39:03 -0700 (PDT)
Date: Thu, 4 Jun 2020 17:39:01 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [RFC v3 1/2] v4l2: add support for colorspace conversion for
 video capture
Message-ID: <20200604173901.GA76282@chromium.org>
References: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_103906_854682_F90ED260 
X-CRM114-Status: GOOD (  36.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, dafna3@gmail.com,
 Hans Verkuil <HansVerkuil@cisco.com>, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Thu, Apr 16, 2020 at 04:56:04PM +0200, Dafna Hirschfeld wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> For video capture it is the driver that reports the colorspace,
> Y'CbCr/HSV encoding, quantization range and transfer function
> used by the video, and there is no way to request something
> different, even though many HDTV receivers have some sort of
> colorspace conversion capabilities.
> 

Thanks for working on this! Please see my comments inline.

> For output video this feature already exists since the application
> specifies this information for the video format it will send out, and
> the transmitter will enable any available CSC if a format conversion has
> to be performed in order to match the capabilities of the sink.
> 
> For video capture we propose adding new pix_format flag:
> V4L2_PIX_FMT_FLAG_HAS_CSC. The flag is set by the application,
> the driver will interpret the ycbcr_enc/hsv_enc, and quantization fields
> as the requested colorspace information and will attempt to
> do the conversion it supports.
> 
> Drivers set the flags
> V4L2_FMT_FLAG_CSC_YCBCR_ENC,
> V4L2_FMT_FLAG_CSC_HSV_ENC,
> V4L2_FMT_FLAG_CSC_HSV_QUANTIZATION,

Do we need this level of granularity? The drivers would ignore
unsupported encoding/quantization settings and reset them to supported
ones anyway, so if one doesn't support changing given parameter, it
would just return back the original stream parameter.

> in the flags field of the struct v4l2_fmtdesc during enumeration to
> indicate that they support colorspace conversion for the respective field.
> Currently the conversion of the fields colorspace, xfer_func is not
> supported since there are no drivers that support it.
> 
> The same API is added for the subdevices. With the flag V4L2_MBUS_FRAMEFMT_HAS_CSC
> set by the application in the VIDIOC_SUBDEV_S_FMT ioctl and the flags
> V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC, V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION
> set by the driver in the VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.
> 
> For subdevices, new 'flags' fields were added to the structs
> v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed from the 'reserved' field
> 
> Drivers do not have to actually look at the flags: if the flags are not
> set, then the colorspace, ycbcr_enc and quantization fields are set to
> the default values by the core, i.e. just pass on the received format
> without conversion.
> 
> Signed-off-by: Hans Verkuil <Hans Verkuil@cisco.com>

Something wrong with the email address here.

> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> This is v3 of the RFC suggested originaly by Hans Verkuil:
> 
>  https://patchwork.linuxtv.org/patch/28847/
> 
> And then a v2 from Philipp Zabel:
> 
>  https://patchwork.kernel.org/project/linux-media/list/?series=15483
> 
> changes in v3:
> I added the API to subdevices as well and added fixes according to
> comments from Hans.
> I also added a usecase for the new API for the rkisp1 driver.
> 
> changes in v2 (reported by Philipp Zabel):
>  - convert to rst
>  - split V4L2_PIX_FMT_FLAG_REQUEST_CSC into four separate flags for
>    colorspace, ycbcr_enc/hsv_enc, quantization, and xfer_func
>  - let driver set flags to indicate supported features
> 
> [1] https://patchwork.linuxtv.org/patch/28847/
> 
>  .../media/v4l/pixfmt-reserved.rst             |  6 +++
>  .../media/v4l/pixfmt-v4l2-mplane.rst          | 16 ++-----
>  .../userspace-api/media/v4l/pixfmt-v4l2.rst   | 36 +++++++++++++---
>  .../media/v4l/subdev-formats.rst              | 42 +++++++++++++++++--
>  .../media/v4l/vidioc-enum-fmt.rst             | 18 ++++++++
>  .../v4l/vidioc-subdev-enum-mbus-code.rst      | 23 ++++++++++
>  drivers/media/v4l2-core/v4l2-ioctl.c          | 19 ++++++++-
>  drivers/media/v4l2-core/v4l2-subdev.c         |  7 ++++
>  include/uapi/linux/v4l2-mediabus.h            |  5 ++-
>  include/uapi/linux/v4l2-subdev.h              |  5 ++-
>  include/uapi/linux/videodev2.h                |  4 ++
>  11 files changed, 158 insertions(+), 23 deletions(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst b/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
> index 59b9e7238f90..fa8dada69f8c 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
> @@ -280,3 +280,9 @@ please make a proposal on the linux-media mailing list.
>  	by RGBA values (128, 192, 255, 128), the same pixel described with
>  	premultiplied colors would be described by RGBA values (64, 96,
>  	128, 128)
> +    * - ``V4L2_PIX_FMT_FLAG_HAS_CSC``
> +      - 0x00000002
> +      - Set by the application. It is only used for capture and is
> +	ignored for output streams. If set, then request the driver to do
> +	colorspace conversion from the received colorspace, only conversions

Should this be:

  colorspace. Only conversions

?

> +	of Ycbcr encoding, HSV encoding and quantization are supported.

YCbCr?

> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
> index 444b4082684c..66f3365d7b72 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
> @@ -105,29 +105,21 @@ describing all planes of that format.
>      * - __u8
>        - ``ycbcr_enc``
>        - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
> -        This information supplements the ``colorspace`` and must be set by
> -	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	See struct :c:type:`v4l2_pix_format`.
>      * - __u8
>        - ``hsv_enc``
>        - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
> -        This information supplements the ``colorspace`` and must be set by
> -	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	See struct :c:type:`v4l2_pix_format`.
>      * - }
>        -
>      * - __u8
>        - ``quantization``
>        - Quantization range, from enum :c:type:`v4l2_quantization`.
> -        This information supplements the ``colorspace`` and must be set by
> -	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	See struct :c:type:`v4l2_pix_format`.
>      * - __u8
>        - ``xfer_func``
>        - Transfer function, from enum :c:type:`v4l2_xfer_func`.
> -        This information supplements the ``colorspace`` and must be set by
> -	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	See struct :c:type:`v4l2_pix_format`.
>      * - __u8
>        - ``reserved[7]``
>        - Reserved for future extensions. Should be zeroed by drivers and
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
> index 759420a872d6..ce57718cd66b 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
> @@ -110,8 +110,8 @@ Single-planar format structure
>        - ``colorspace``
>        - Image colorspace, from enum :c:type:`v4l2_colorspace`.
>          This information supplements the ``pixelformat`` and must be set
> -	by the driver for capture streams and by the application for
> -	output streams, see :ref:`colorspaces`.
> +	by the driver for capture streams and by the application for output
> +	streams, see :ref:`colorspace`.

Is it expected that the colorspace itself can't be converted? Also is
the change of the reference name expected?

>      * - __u32
>        - ``priv``
>        - This field indicates whether the remaining fields of the
> @@ -148,13 +148,31 @@ Single-planar format structure
>        - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
>          This information supplements the ``colorspace`` and must be set by
>  	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	streams, see :ref:`colorspaces`. If the application sets the
> +	flag ``V4L2_PIX_FMT_FLAG_HAS_CSC`` then the application can set
> +	this field for a capture stream to request a specific Y'CbCr encoding
> +	for the captured image data. The driver will attempt to do the
> +	conversion to the specified Y'CbCr encoding or return the encoding it
> +	will use if it can't do the conversion. This field is ignored for

nit: The driver will attempt to do the conversion when the streaming
starts, so that's not an entirely correct description. How about

"[...] captured image data. If the driver cannot handle requested
conversion, it will return another, supported encoding."

?

> +	non-Y'CbCr pixelformats. The driver indicates that ycbcr_enc conversion
> +	is supported by setting the flag V4L2_FMT_FLAG_CSC_YCBCR_ENC on the
> +	on the corresponding struct :c:type:`v4l2_fmtdesc` during enumeration.
> +	See :ref:`fmtdesc-flags`
>      * - __u32
>        - ``hsv_enc``
>        - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
>          This information supplements the ``colorspace`` and must be set by
>  	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	streams, see :ref:`colorspaces`. If the application sets the flag
> +	``V4L2_PIX_FMT_FLAG_HAS_CSC`` then the application can set this
> +	field for a capture stream to request a specific HSV encoding for the
> +	captured image data. The driver will attempt to do the conversion to
> +	the specified HSV encoding or return the encoding it will use if it
> +	can't do the conversion. This field is ignored for non-HSV

Ditto.

> +	pixelformats. The driver indicates that hsv_enc conversion
> +	is supported by setting the flag V4L2_FMT_FLAG_CSC_HSV_ENC on the
> +	on the corresponding struct :c:type:`v4l2_fmtdesc` during enumeration.
> +	See :ref:`fmtdesc-flags`
>      * - }
>        -
>      * - __u32
> @@ -162,7 +180,15 @@ Single-planar format structure
>        - Quantization range, from enum :c:type:`v4l2_quantization`.
>          This information supplements the ``colorspace`` and must be set by
>  	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	streams, see :ref:`colorspaces`. If the application sets the flag
> +	``V4L2_PIX_FMT_FLAG_HAS_CSC`` then the application can set
> +	this field for a capture stream to request a specific quantization
> +	range for the captured image data. The driver will attempt to do the
> +	conversion to the specified quantization range or return the
> +	quantization it will use if it can't do the conversion.  The driver

Ditto.

> +	indicates that quantization conversion is supported by setting the flag
> +	V4L2_FMT_FLAG_CSC_QUANTIZATION on the on the corresponding struct
> +	:c:type:`v4l2_fmtdesc` during enumeration. See :ref:`fmtdesc-flags`
>      * - __u32
>        - ``xfer_func``
>        - Transfer function, from enum :c:type:`v4l2_xfer_func`.
> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> index 9a4d61b0d76f..f1d4ca29a3e8 100644
> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
> @@ -49,13 +49,33 @@ Media Bus Formats
>        - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
>          This information supplements the ``colorspace`` and must be set by
>  	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	streams, see :ref:`colorspaces`. If the application sets the
> +	flag ``V4L2_MBUS_FRAMEFMT_HAS_CSC`` the the application can set
> +	this field for a capture stream to request a specific Y'CbCr encoding
> +	for the mbus data. The driver will attempt to do the
> +	conversion to the specified Y'CbCr encoding or return the encoding it
> +	will use if it can't do the conversion. This field is ignored for

Ditto.

> +	non-Y'CbCr pixelformats. The driver indicates that ycbcr_enc conversion
> +	is supported by setting the flag V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC on
> +	the corresponding struct c:type:`v4l2_subdev_mbus_code_enum` during
> +	enumeration. See :ref:`vidioc-subdev-enum-mbus-code.rst <v4l2-subdev-mbus-code-flags>`
> +
>      * - __u16
>        - ``quantization``
>        - Quantization range, from enum :c:type:`v4l2_quantization`.
>          This information supplements the ``colorspace`` and must be set by
>  	the driver for capture streams and by the application for output
> -	streams, see :ref:`colorspaces`.
> +	streams, see :ref:`colorspaces`. If the application sets the
> +	flag ``V4L2_MBUS_FRAMEFMT_HAS_CSC`` the the application can set
> +	this field for a capture stream to request a specific quantization
> +	encoding for the mbus data. The driver will attempt to do the
> +	conversion to the specified quantization or return the quantization it
> +	will use if it can't do the conversion. The driver indicates that

Ditto.

> +	quantization conversion is supported by setting the flag
> +	V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION on the corresponding struct
> +	c:type:`v4l2_subdev_mbus_code_enum` during enumeration.
> +	See :ref:`vidioc-subdev-enum-mbus-code.rst <v4l2-subdev-mbus-code-flags>`
> +
>      * - __u16
>        - ``xfer_func``
>        - Transfer function, from enum :c:type:`v4l2_xfer_func`.
> @@ -63,10 +83,26 @@ Media Bus Formats
>  	the driver for capture streams and by the application for output
>  	streams, see :ref:`colorspaces`.
>      * - __u16
> -      - ``reserved``\ [11]
> +      - ``flags``
> +      - flags see:  :ref:v4l2-mbus-framefmt-flags
> +    * - __u16
> +      - ``reserved``\ [10]
>        - Reserved for future extensions. Applications and drivers must set
>  	the array to zero.
>  
> +.. _v4l2-mbus-framefmt-flags:
> +
> +.. flat-table:: v4l2_mbus_framefmt Flags
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       3 1 4
> +
> +    * - ``V4L2_MBUS_FRAMEFMT_HAS_CSC``
> +      - 0x0001
> +      - Set by the application. It is only used for capture and is
> +	ignored for output streams. If set, then request the subdevice to do
> +	colorspace conversion from the received colorspace, only conversions
> +	of Ycbcr encoding, and quantization are supported.

YCbCr?

>  
>  
>  .. _v4l2-mbus-pixelcode:
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> index 7e3142e11d77..125f074543af 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
> @@ -145,6 +145,24 @@ formats in preference order, where preferred formats are returned before
>  	parameters are detected. This flag can only be used in combination
>  	with the ``V4L2_FMT_FLAG_COMPRESSED`` flag, since this applies to
>  	compressed formats only. It is also only applies to stateful codecs.
> +    * - ``V4L2_FMT_FLAG_CSC_YCBCR_ENC``
> +      - 0x0010
> +      - The driver allows the application to try to change the default
> +	ycbcr encoding. This flag is relevant only for capture devices.

YCbCr

> +	The application can ask to configure the ycbcr_enc of the capture device
> +	when calling the :c:func:`VIDIOC_S_FMT` ioctl.
> +    * - ``V4L2_FMT_FLAG_CSC_HSV_ENC``
> +      - 0x0010
> +      - The driver allows the application to try to change the default
> +	hsv encoding. This flag is relevant only for capture devices.
> +	The application can ask to configure the hsv_enc of the capture device
> +	when calling the :c:func:`VIDIOC_S_FMT` ioctl.
> +    * - ``V4L2_FMT_FLAG_CSC_QUANTIZATION``
> +      - 0x0020
> +      - The driver allows the application to try to change the default
> +	quantization. This flag is relevant only for capture devices.
> +	The application can ask to configure the quantization of the capture device
> +	when calling the :c:func:`VIDIOC_S_FMT` ioctl.
>  
>  
>  Return Value
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst b/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
> index 35b8607203a4..4ad87cb74f57 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
> @@ -78,11 +78,34 @@ information about the try formats.
>        - ``which``
>        - Media bus format codes to be enumerated, from enum
>  	:ref:`v4l2_subdev_format_whence <v4l2-subdev-format-whence>`.
> +    * - __u32
> +      - ``flags``
> +      - see :ref:`v4l2-subdev-mbus-code-flags`
>      * - __u32
>        - ``reserved``\ [8]
>        - Reserved for future extensions. Applications and drivers must set
>  	the array to zero.
>  
> +.. _v4l2-subdev-mbus-code-flags:
> +
> +
> +.. tabularcolumns:: |p{4.4cm}|p{4.4cm}|p{7.7cm}|
> +
> +.. flat-table:: flags in struct v4l2_subdev_mbus_code_enum
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC
> +      - 0x00000001
> +      - The driver supports setting the ycbcr encoding by the application
> +	when calling the VIDIOC_SUBDEV_S_FMT ioctl. see :ref:`v4l2-mbus-format`
> +	on how to do this.
> +    * - V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION
> +      - 0x00000002
> +      - The driver supports setting the quantization by the application
> +	when calling the VIDIOC_SUBDEV_S_FMT ioctl. see :ref:`v4l2-mbus-format`
> +	on how to do this.
>  
>  Return Value
>  ============
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index b2ef8e60ea7d..3c7ffb6b15cb 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1029,6 +1029,15 @@ static void v4l_sanitize_format(struct v4l2_format *fmt)
>  		fmt->fmt.pix_mp.num_planes = min_t(u32, fmt->fmt.pix_mp.num_planes,
>  					       VIDEO_MAX_PLANES);
>  
> +	if (fmt->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
> +		if (fmt->fmt.pix_mp.flags & V4L2_PIX_FMT_FLAG_HAS_CSC)
> +			return;

This return statement might end up being confusing in the future,
because one might add further fixups below. Perhaps instead, the inner
condition negated could be added to the outer one?

> +		fmt->fmt.pix_mp.colorspace = V4L2_COLORSPACE_DEFAULT;
> +		fmt->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +		fmt->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
> +		fmt->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
> +	}
> +
>  	/*
>  	 * The v4l2_pix_format structure has been extended with fields that were
>  	 * not previously required to be set to zero by applications. The priv
> @@ -1043,8 +1052,16 @@ static void v4l_sanitize_format(struct v4l2_format *fmt)
>  	    fmt->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
>  		return;
>  
> -	if (fmt->fmt.pix.priv == V4L2_PIX_FMT_PRIV_MAGIC)
> +	if (fmt->fmt.pix.priv == V4L2_PIX_FMT_PRIV_MAGIC) {
> +		if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
> +		    fmt->fmt.pix.flags & V4L2_PIX_FMT_FLAG_HAS_CSC)
> +			return;
> +		fmt->fmt.pix.colorspace = V4L2_COLORSPACE_DEFAULT;
> +		fmt->fmt.pix.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +		fmt->fmt.pix.quantization = V4L2_QUANTIZATION_DEFAULT;
> +		fmt->fmt.pix.xfer_func = V4L2_XFER_FUNC_DEFAULT;
>  		return;
> +	}
>  
>  	fmt->fmt.pix.priv = V4L2_PIX_FMT_PRIV_MAGIC;
>  
> diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-core/v4l2-subdev.c
> index a376b351135f..51e009936aad 100644
> --- a/drivers/media/v4l2-core/v4l2-subdev.c
> +++ b/drivers/media/v4l2-core/v4l2-subdev.c
> @@ -477,6 +477,13 @@ static long subdev_do_ioctl(struct file *file, unsigned int cmd, void *arg)
>  	case VIDIOC_SUBDEV_S_FMT: {
>  		struct v4l2_subdev_format *format = arg;
>  
> +		if (!(format->format.flags & V4L2_MBUS_FRAMEFMT_HAS_CSC)) {
> +			format->format.colorspace = V4L2_COLORSPACE_DEFAULT;
> +			format->format.xfer_func = V4L2_XFER_FUNC_DEFAULT;
> +			format->format.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> +			format->format.quantization = V4L2_QUANTIZATION_DEFAULT;
> +		}

Wouldn't this break setting the colorspaces on the sink pads, for which
the flag isn't required? Actually there is some unfortunate statement in
the documentation related to this:

"This information supplements the colorspace and must be set by the
driver for capture streams and by the application for output streams,
see Colorspaces."

However, I don't think there is any notion of "capture" and "output" for
subdevices, right? Instead, the pad direction would have to be checked,
but AFAICT there is no access to this kind of information from this
wrapper.

> +
>  		memset(format->reserved, 0, sizeof(format->reserved));
>  		memset(format->format.reserved, 0, sizeof(format->format.reserved));
>  		return v4l2_subdev_call(sd, pad, set_fmt, subdev_fh->pad, format);
> diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
> index 123a231001a8..89ff0ad6a631 100644
> --- a/include/uapi/linux/v4l2-mediabus.h
> +++ b/include/uapi/linux/v4l2-mediabus.h
> @@ -16,6 +16,8 @@
>  #include <linux/types.h>
>  #include <linux/videodev2.h>
>  
> +#define V4L2_MBUS_FRAMEFMT_HAS_CSC	0x0001
> +
>  /**
>   * struct v4l2_mbus_framefmt - frame format on the media bus
>   * @width:	image width
> @@ -36,7 +38,8 @@ struct v4l2_mbus_framefmt {
>  	__u16			ycbcr_enc;
>  	__u16			quantization;
>  	__u16			xfer_func;
> -	__u16			reserved[11];
> +	__u16			flags;

Are we okay with a u16 for flags?

Best regards,
Tomasz


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
