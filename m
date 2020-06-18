Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF31FFB4D
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 20:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btfCNML3BvLTGnWOSPQnEN21Eo2tR2MX5JtBs+35H3s=; b=oDQj6bF9MV+NBd
	1hA+k3zzQeTgg2hi+ZijbxlNd03pZtSDQ3vWWXl96aR7ub0oCvq4mj1Uk/OYIqVYaTjCB2FTwMIxS
	x4rQsnlli95nsxpJdMxQPhG9k9D8CfF5RGAfD5QpTcQL0w6bcA/8xT2+x38uPMPz+cb7gtA8FUXtN
	nEGdkRvrfAQ9y71SNgfDfHQtn7Q4/xDCOdSX4M3QNVVyo/6H0FdrkZYipDOtkJcBhzarXSJ2V573B
	5FrI44n4sn5DNDE+XG4UIG2WBRqRq8ub89wM1hAYyDKv40O49hd9yRJqcq7OTJlayNGm4liBiKVpA
	ojEne4ymF+KRAdlzeGAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzbP-0008RJ-SL; Thu, 18 Jun 2020 18:49:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzbM-0008Qi-Eq
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 18:49:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so7162375wrs.11
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 11:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fOALoFuzNLDdBMDGQQAzofsHZ6jfjcNQximZ8cQT8Cc=;
 b=HcKzCaWQOxIVmwJ3kbqIDwSy2qTOcfxfntlsg6RIBmuzT6AAzIJFtxFhf6Tsf6iXrH
 avIvCkPEW2LfagTU/Jn9nP2cDGvlW9Upo8GQyhyasx9ODJp6LqdN56nmZD/WjoGw8uo7
 F1M31GwXruyf+nQIbdZ2F+RcjQrtlV+ZPwPSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fOALoFuzNLDdBMDGQQAzofsHZ6jfjcNQximZ8cQT8Cc=;
 b=KjbpmDV5EsZig1d9wYQGj12/vgETl4diDHbGe2IrZ+g3i1n4/CQ7SN+rEoDaY58Ieg
 iUqbWKpb4k/Rjnq9qkfAf/XPM3Q+sR1g8G3qC8y9uaMM+LbjtBnIfV2f5UybRWpCjckV
 vgyDu/QrAMyyVc1FfSt2oZIpai3oFBRJpXg/a18C1YhfzbCvloaxMbZeSoDsteb95wJJ
 pfGWR+xTKnmKvnUssGBJ+R8GLlLahJ17WJOjNZuNLPrKi0LEyuSNW4xBbKwX7PHx0llW
 8PiLPvQG4sND81XCAXjvO/NqChfGD/UOkR9RLNuJx0J5Kb5/4sajDRp8xf3Zxkj+bPXH
 fPuQ==
X-Gm-Message-State: AOAM533jbVAFhdzG0kiNqkviWZblHRl5aq7ryblTXzEb8QZ/n62cwVD2
 yqIZ7fn2g1LhDHUnTIGHjly86A==
X-Google-Smtp-Source: ABdhPJz+z1eYK0NcxUx9WnZS4oNSncSNCP0rES2CZ2hGitoPB7maXnxG+7iaoZmL8EUztQAbMcrb7w==
X-Received: by 2002:adf:f5c6:: with SMTP id k6mr6317372wrp.358.1592506165575; 
 Thu, 18 Jun 2020 11:49:25 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id g3sm5135921wrb.46.2020.06.18.11.49.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:49:25 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:49:23 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [RFC v3 2/2] media: staging: rkisp1: allow quantization
 conversion from userspace for isp source pad
Message-ID: <20200618184923.GB68039@chromium.org>
References: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
 <20200416145605.12399-2-dafna.hirschfeld@collabora.com>
 <20200604175443.GB76282@chromium.org>
 <87f11ebf-aecf-7eee-f18c-98dd4e8d692b@collabora.com>
 <CAAFQd5BPOUFsKb0Qa_6QiytE6=OM3jjSVWyoikdgyNvr4vu0fw@mail.gmail.com>
 <CAAFQd5DoUu+bMO1GeSX0qbsW5u-KDmRvtO2kfGePghrv59bQmw@mail.gmail.com>
 <62611ccd-e4cd-728a-355b-532661b36be0@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62611ccd-e4cd-728a-355b-532661b36be0@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_114928_500968_C4B989E3 
X-CRM114-Status: GOOD (  29.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 08:26:33PM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 18.06.20 19:27, Tomasz Figa wrote:
> > On Wed, Jun 10, 2020 at 2:08 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > > 
> > > On Thu, Jun 4, 2020 at 9:11 PM Dafna Hirschfeld
> > > <dafna.hirschfeld@collabora.com> wrote:
> > > > 
> > > > Hi
> > > > 
> > > > On 04.06.20 19:54, Tomasz Figa wrote:
> > > > > On Thu, Apr 16, 2020 at 04:56:05PM +0200, Dafna Hirschfeld wrote:
> > > > > > The isp entity has a hardware support to force full range quantization
> > > > > > for YUV formats. Use the new API to indicate userspace that
> > > > > > quantization conversion is supported by adding the flag
> > > > > > V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION during media code enumeration.
> > > > > > Then uppon s_fmt on the video source pad, we assign the
> > > > > > quantization from userspace for YUV formats.
> > > > > > Also in the capture and resizer entities we retrieve the colorspace
> > > > > > from the isp entity.
> > > > > > 
> > > > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > > > ---
> > > > > >    drivers/staging/media/rkisp1/rkisp1-capture.c | 28 ++++++-------
> > > > > >    drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +
> > > > > >    drivers/staging/media/rkisp1/rkisp1-isp.c     | 39 +++++++++++++++++--
> > > > > >    drivers/staging/media/rkisp1/rkisp1-resizer.c | 13 +++++++
> > > > > >    4 files changed, 65 insertions(+), 17 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > > > > > index fbf62399fe3d..aca0f93bc772 100644
> > > > > > --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> > > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > > > > > @@ -1066,14 +1066,13 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
> > > > > >                          const struct v4l2_format_info **fmt_info)
> > > > > >    {
> > > > > >       const struct rkisp1_capture_config *config = cap->config;
> > > > > > -    struct rkisp1_capture *other_cap =
> > > > > > -                    &cap->rkisp1->capture_devs[cap->id ^ 1];
> > > > > >       const struct rkisp1_capture_fmt_cfg *fmt;
> > > > > >       const struct v4l2_format_info *info;
> > > > > >       const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> > > > > >                                           RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> > > > > >       const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> > > > > >                                            RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
> > > > > > +    struct v4l2_subdev_format isp_sd_fmt;
> > > > > > 
> > > > > >       fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
> > > > > >       if (!fmt) {
> > > > > > @@ -1081,24 +1080,27 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
> > > > > >               pixm->pixelformat = fmt->fourcc;
> > > > > >       }
> > > > > > 
> > > > > > +    rkisp1_get_isp_src_fmt(cap->rkisp1, &isp_sd_fmt);
> > > > > > +    pixm->field = isp_sd_fmt.format.field;
> > > > > > +    pixm->colorspace = isp_sd_fmt.format.colorspace;
> > > > > > +    pixm->ycbcr_enc = isp_sd_fmt.format.ycbcr_enc;
> > > > > > +    pixm->xfer_func = isp_sd_fmt.format.xfer_func;
> > > > > > +
> > > > > > +    /*
> > > > > > +     * isp has a feature to set full range quantization for yuv formats.
> > > > > 
> > > > > How about "select between limited and full range for YUV formats"?
> > > > > 
> > > > > > +     * so we need to get the format from the isp.
> > > > > > +     */
> > > > > > +    pixm->quantization = isp_sd_fmt.format.quantization;
> > > > > > +    if (!v4l2_is_format_yuv(cap->pix.info))
> > > > > > +            pixm->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> > > > > > +
> > > > > >       pixm->width = clamp_t(u32, pixm->width,
> > > > > >                             RKISP1_RSZ_SRC_MIN_WIDTH, max_widths[cap->id]);
> > > > > >       pixm->height = clamp_t(u32, pixm->height,
> > > > > >                              RKISP1_RSZ_SRC_MIN_HEIGHT, max_heights[cap->id]);
> > > > > > 
> > > > > > -    pixm->field = V4L2_FIELD_NONE;
> > > > > > -    pixm->colorspace = V4L2_COLORSPACE_DEFAULT;
> > > > > > -    pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > > > > -
> > > > > >       info = rkisp1_fill_pixfmt(pixm, cap->id);
> > > > > > 
> > > > > > -    /* can not change quantization when stream-on */
> > > > > > -    if (other_cap->is_streaming)
> > > > > > -            pixm->quantization = other_cap->pix.fmt.quantization;
> > > > > > -    /* output full range by default, take effect in params */
> > > > > > -    else if (!pixm->quantization ||
> > > > > > -             pixm->quantization > V4L2_QUANTIZATION_LIM_RANGE)
> > > > > > -            pixm->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> > > > > > 
> > > > > >       if (fmt_cfg)
> > > > > >               *fmt_cfg = fmt;
> > > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> > > > > > index 2d7b7e078636..7a5576fa14c9 100644
> > > > > > --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> > > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> > > > > > @@ -300,6 +300,8 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
> > > > > >                       struct v4l2_device *v4l2_dev);
> > > > > >    void rkisp1_isp_unregister(struct rkisp1_device *rkisp1);
> > > > > > 
> > > > > > +int rkisp1_get_isp_src_fmt(struct rkisp1_device *rkisp1,
> > > > > > +                       struct v4l2_subdev_format *sd_fmt);
> > > > > >    const struct rkisp1_isp_mbus_info *rkisp1_isp_mbus_info_get(u32 mbus_code);
> > > > > > 
> > > > > >    irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1);
> > > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > > > > > index dee8e96f3900..6fdf5ed0b6b1 100644
> > > > > > --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> > > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > > > > > @@ -613,6 +613,10 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
> > > > > > 
> > > > > >               if (code->index == pos - 1) {
> > > > > >                       code->code = fmt->mbus_code;
> > > > > > +                    if (fmt->pixel_enc == V4L2_PIXEL_ENC_YUV &&
> > > > > > +                        dir == RKISP1_DIR_SRC)
> > > > > > +                            code->flags =
> > > > > > +                                    V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION;
> > > > > >                       return 0;
> > > > > >               }
> > > > > >       }
> > > > > > @@ -639,12 +643,21 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
> > > > > >       sink_crop->height = RKISP1_DEFAULT_HEIGHT;
> > > > > >       sink_crop->left = 0;
> > > > > >       sink_crop->top = 0;
> > > > > > +    sink_fmt->colorspace = V4L2_COLORSPACE_SRGB;
> > > > > > +    sink_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(sink_fmt->colorspace);
> > > > > > +    sink_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(sink_fmt->colorspace);
> > > > > > +    sink_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> > > > > > +
> > > > > > 
> > > > > >       src_fmt = v4l2_subdev_get_try_format(sd, cfg,
> > > > > >                                            RKISP1_ISP_PAD_SOURCE_VIDEO);
> > > > > >       *src_fmt = *sink_fmt;
> > > > > >       src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
> > > > > > -    src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> > > > > > +    src_fmt->colorspace = V4L2_COLORSPACE_SRGB;
> > > > > > +    src_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(src_fmt->colorspace);
> > > > > > +    src_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(src_fmt->colorspace);
> > > > > > +    src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
> > > > > > +
> > > > > > 
> > > > > >       src_crop = v4l2_subdev_get_try_crop(sd, cfg,
> > > > > >                                           RKISP1_ISP_PAD_SOURCE_VIDEO);
> > > > > > @@ -687,10 +700,17 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
> > > > > >               isp->src_fmt = mbus_info;
> > > > > >       src_fmt->width  = src_crop->width;
> > > > > >       src_fmt->height = src_crop->height;
> > > > > > -    src_fmt->quantization = format->quantization;
> > > > > > -    /* full range by default */
> > > > > > -    if (!src_fmt->quantization)
> > > > > > +
> > > > > > +    src_fmt->colorspace = V4L2_COLORSPACE_SRGB;
> > > > > > +    src_fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(src_fmt->colorspace);
> > > > > > +    src_fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(src_fmt->colorspace);
> > > > > > +
> > > > > > +    if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_BAYER)
> > > > > >               src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> > > > > > +    else if (format->quantization == V4L2_QUANTIZATION_DEFAULT)
> > > > > > +            src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
> > > > > > +    else
> > > > > > +            src_fmt->quantization = format->quantization;
> > > > > > 
> > > > > >       *format = *src_fmt;
> > > > > >    }
> > > > > > @@ -1068,6 +1088,17 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
> > > > > >       return ret;
> > > > > >    }
> > > > > > 
> > > > > > +int rkisp1_get_isp_src_fmt(struct rkisp1_device *rkisp1,
> > > > > > +                       struct v4l2_subdev_format *sd_fmt)
> > > > > > +{
> > > > > > +    struct rkisp1_isp *isp = &rkisp1->isp;
> > > > > > +
> > > > > > +    sd_fmt->which = V4L2_SUBDEV_FORMAT_ACTIVE;
> > > > > > +    sd_fmt->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
> > > > > > +
> > > > > > +    return v4l2_subdev_call(&isp->sd, pad, get_fmt, NULL, sd_fmt);
> > > > > 
> > > > > Do we need to get through the external API to access data that is
> > > > > driver-internal anyway?
> > > > > 
> > > > > > +}
> > > > > > +
> > > > > >    void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
> > > > > >    {
> > > > > >       struct v4l2_subdev *sd = &rkisp1->isp.sd;
> > > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > index 7b6b7ddd4169..8705b133de68 100644
> > > > > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > @@ -525,6 +525,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
> > > > > >       const struct rkisp1_isp_mbus_info *mbus_info;
> > > > > >       struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
> > > > > >       struct v4l2_rect *sink_crop;
> > > > > > +    struct v4l2_subdev_format isp_sd_fmt;
> > > > > > 
> > > > > >       sink_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SINK, which);
> > > > > >       src_fmt = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SRC, which);
> > > > > > @@ -539,8 +540,20 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
> > > > > >       if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
> > > > > >               rsz->pixel_enc = mbus_info->pixel_enc;
> > > > > > 
> > > > > > +    rkisp1_get_isp_src_fmt(rsz->rkisp1, &isp_sd_fmt);
> > > > > > +
> > > > > 
> > > > > Is this necessary? My understanding was that in the subdev model, it was
> > > > > the userspace responsibility to propagate any configuration changes through
> > > > > the graph.
> > > > > 
> > > > > Also, doing this only here wouldn't fully maintain the
> > > > > consistency of the state. For example, if one sets the ISP subdev format
> > > > > first, then the resizer subdev and then the ISP subdev again, wouldn't the
> > > > > resizer subdev end up with a wrong format?
> > > > 
> > > > yes, this is indeed a bug, I am preparing v4 now.
> > > > What I thought to do is adding quantization conversion
> > > > support also on ther resizer and capture entities.
> > > > Then in the 'link_validation' callbacks, there
> > > > is a validation that the quantization fields matches.
> > > 
> > > My understanding is that, if we have the following topology
> > > 
> > > [ ISP ] -> [ Resizer ] -> [ Video node ]
> > > 
> > > then the ISP source pad would have the csc capability, while resizer
> > > and video node would just accept whatever is configured on their sink
> > > pads (no need for csc capability for that) and propagate that to their
> > > outputs, i.e. resizer source pad and video node CAPTURE format.
> > > 
> > > Is this what you were going to implement?
> Hi, I sent a v4 where the CSC capability is set on the reiszer and capture as well.
> I can send a v5 implementing it the way you suggest. Currently the doc says that the colorspace fields
> must be set by the driver for capture streams. This implies that userspace can set it
> only if the CSC is supported.

Why would the userspace have to set it for the capture stream on the
resizer and video nodes? Couldn't the userspace set it to DEFAULT and
then the driver override to whatever it received on the corresponding
sink?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
