Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F681F55E1
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 15:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXRNHnpp0LtCm5P9FKF4RmTIMDoOjWEpj7d9hyDkXuw=; b=ltrwAuHiOstxxP
	9BJob7EuD9weQ9WTS0QcD/tSKJxw9aw+W0gpjiNusKO2DehaN0LvGKChcfnebNg661hhp6/ARKfmE
	fePMaDe2P5y9fw6zY8612/vCw46vcA/OooG73TK5xHpHlokJAaeKXwfO8sujsA+RYmqP317G6AEJ/
	sw+P+p2AcJ7q6U64AdMRaWL8V22qQNJWp3nY6ZVUX9D1UFTasLA1rgx88wM4xBZCLfUgz3UIewUPT
	e82zgWhAD6DO+6HpW1WBrOY9UqQxS7aqt8eMgtsz09yok5wDVS39j3Qbzxmb3Al5bMPFPu5oTIK8S
	zbdplthdEEykoMM7crRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj0s0-0006C4-CZ; Wed, 10 Jun 2020 13:34:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj0rx-0006BG-39
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 13:34:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so2302589wru.6
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 06:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YAcxlCbiTC8wO76A5VkRlXWuncJIzqfJLxZ8xCI7lKM=;
 b=XPKv60fIQu2Ll4tuWC6MuV/qC2fIaVmQmVJicFzstdeDOd2rTBfCPqSaHsDowGM4IA
 4b5uShxePug3O/PL5A7kpOWSXeeo8VE70TyDRTd8hMwsHRYCCk7/lhLOUHTp/qI58DKj
 fziZ6D6FBrUiWvXRKamgwAK1qA2S6hFcaPXjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YAcxlCbiTC8wO76A5VkRlXWuncJIzqfJLxZ8xCI7lKM=;
 b=rkkUdcOQM2LZnUTqvMjdJd3XVZTfC2rmHZkGbd49+MlO5bAUk6ONfssIy57a+ZR59x
 bPEKwhzVS0droXAYeau0byYjF5edB2SAiA9tBhTJOSUi9fhu63hKokOwssCfZvB2ANLD
 IZl37Zro2eRDWId+OokfHqgVdaN9ZUVn+UZIqQu5Ox5t4O1dU795QMxBnKFgknvd/fV2
 ExIM82GD9vm1KI/rYiUeQUcnDbkVhcyZfUCAD3uvD/mRIWjUCxDKRO3EVOEae+iQxCCg
 rlUzPUwvEWV/K0hyhWAGLNCuYTWTF8uX8nam06r0kCmwcGVS2n18S8WAdX8SJzpQrg3+
 1AvA==
X-Gm-Message-State: AOAM531Dmucbq4SaSnwHLODcdUS77MIv5icAlL0tjkyVboh3SBTNJ6S2
 ZhVrZipEacYPh0RaLmvx+VfhpA==
X-Google-Smtp-Source: ABdhPJxaBVswr0D7YGCMBvKJKfjMpr3MQg/UvXQWUVdYe2yqybYXEg3YTIzv9UZLjfsSkn6BOQNLJg==
X-Received: by 2002:adf:ed87:: with SMTP id c7mr3805569wro.108.1591796053811; 
 Wed, 10 Jun 2020 06:34:13 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id v7sm8348465wro.76.2020.06.10.06.34.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 06:34:13 -0700 (PDT)
Date: Wed, 10 Jun 2020 13:34:11 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [RFC v3 1/2] v4l2: add support for colorspace conversion for
 video capture
Message-ID: <20200610133411.GA192932@chromium.org>
References: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
 <20200604173901.GA76282@chromium.org>
 <dba58521-a619-91fe-2b60-ea5ce85a9fa2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dba58521-a619-91fe-2b60-ea5ce85a9fa2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_063417_153841_762942EA 
X-CRM114-Status: GOOD (  32.04  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, dafna3@gmail.com,
 Hans Verkuil <HansVerkuil@cisco.com>, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 12:11:33PM +0200, Dafna Hirschfeld wrote:
> Hi,
> 
> On 04.06.20 19:39, Tomasz Figa wrote:
> > Hi Dafna,
> > 
> > On Thu, Apr 16, 2020 at 04:56:04PM +0200, Dafna Hirschfeld wrote:
> > > From: Philipp Zabel <p.zabel@pengutronix.de>
> > > 
> > > For video capture it is the driver that reports the colorspace,
> > > Y'CbCr/HSV encoding, quantization range and transfer function
> > > used by the video, and there is no way to request something
> > > different, even though many HDTV receivers have some sort of
> > > colorspace conversion capabilities.
> > > 
> > 
> > Thanks for working on this! Please see my comments inline.
> > 
> > > For output video this feature already exists since the application
> > > specifies this information for the video format it will send out, and
> > > the transmitter will enable any available CSC if a format conversion has
> > > to be performed in order to match the capabilities of the sink.
> > > 
> > > For video capture we propose adding new pix_format flag:
> > > V4L2_PIX_FMT_FLAG_HAS_CSC. The flag is set by the application,
> > > the driver will interpret the ycbcr_enc/hsv_enc, and quantization fields
> > > as the requested colorspace information and will attempt to
> > > do the conversion it supports.
> > > 
> > > Drivers set the flags
> > > V4L2_FMT_FLAG_CSC_YCBCR_ENC,
> > > V4L2_FMT_FLAG_CSC_HSV_ENC,
> > > V4L2_FMT_FLAG_CSC_HSV_QUANTIZATION,
> > 
> > Do we need this level of granularity? The drivers would ignore
> > unsupported encoding/quantization settings and reset them to supported
> > ones anyway, so if one doesn't support changing given parameter, it
> > would just return back the original stream parameter.
> 
> I think this granularity allows userspace to know ahead what is supported
> and what is not so it doesn't have to guess.
>

The userspace needs to guess anyway, because there is no way to
enumerate the supported target parameters. For example, even if the
CSC_YCBCR_ENC bit is set, only only DEFAULT, 601 and BT2020 could be
supported. If the userspace wants to get the 709 encoding, it needs to
explicitly try setting it and see if the TRY_FMT/S_FMT operation accepts
the setting.

[snip]
> > > diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-core/v4l2-subdev.c
> > > index a376b351135f..51e009936aad 100644
> > > --- a/drivers/media/v4l2-core/v4l2-subdev.c
> > > +++ b/drivers/media/v4l2-core/v4l2-subdev.c
> > > @@ -477,6 +477,13 @@ static long subdev_do_ioctl(struct file *file, unsigned int cmd, void *arg)
> > >   	case VIDIOC_SUBDEV_S_FMT: {
> > >   		struct v4l2_subdev_format *format = arg;
> > > +		if (!(format->format.flags & V4L2_MBUS_FRAMEFMT_HAS_CSC)) {
> > > +			format->format.colorspace = V4L2_COLORSPACE_DEFAULT;
> > > +			format->format.xfer_func = V4L2_XFER_FUNC_DEFAULT;
> > > +			format->format.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > +			format->format.quantization = V4L2_QUANTIZATION_DEFAULT;
> > > +		}
> > 
> > Wouldn't this break setting the colorspaces on the sink pads, for which
> > the flag isn't required? Actually there is some unfortunate statement in
> > the documentation related to this:
> > 
> > "This information supplements the colorspace and must be set by the
> > driver for capture streams and by the application for output streams,
> > see Colorspaces."
> > 
> > However, I don't think there is any notion of "capture" and "output" for
> > subdevices, right? Instead, the pad direction would have to be checked,
> > but AFAICT there is no access to this kind of information from this
> > wrapper.
> 
> Actually in coming v4 there is no new code added accept of the new fields and
> macros of the API. I think there is no need to change any code.
> 
> 

Agreed.

> > 
> > > +
> > >   		memset(format->reserved, 0, sizeof(format->reserved));
> > >   		memset(format->format.reserved, 0, sizeof(format->format.reserved));
> > >   		return v4l2_subdev_call(sd, pad, set_fmt, subdev_fh->pad, format);
> > > diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
> > > index 123a231001a8..89ff0ad6a631 100644
> > > --- a/include/uapi/linux/v4l2-mediabus.h
> > > +++ b/include/uapi/linux/v4l2-mediabus.h
> > > @@ -16,6 +16,8 @@
> > >   #include <linux/types.h>
> > >   #include <linux/videodev2.h>
> > > +#define V4L2_MBUS_FRAMEFMT_HAS_CSC	0x0001
> > > +
> > >   /**
> > >    * struct v4l2_mbus_framefmt - frame format on the media bus
> > >    * @width:	image width
> > > @@ -36,7 +38,8 @@ struct v4l2_mbus_framefmt {
> > >   	__u16			ycbcr_enc;
> > >   	__u16			quantization;
> > >   	__u16			xfer_func;
> > > -	__u16			reserved[11];
> > > +	__u16			flags;
> > 
> > Are we okay with a u16 for flags?
> 
> I am fine with it, though don't mind changing it if there are objections.
> 

I'd suggest making it a u32 to be a bit more future-proof.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
