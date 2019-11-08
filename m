Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DA0F47B9
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 12:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcwDfKl6CyAAmncBrED2KN8IoyJIkh7YqcmCQDu+f28=; b=utl3eRJTAWaRou
	wHzu0Mo21Xq4qMURhosIFf6EvW44qusYvsZ0vCUZ+mUiAJNkxX8h8NMo/HF/yLb3ToPYmqWJoWqbo
	2Fjpa+SwrYLAuhad4TdanXdP4s2bJzir6jMmUHEibQEcscnXTnrNkYNQDN5kgkjxsODE7lsgSYkBX
	/66Ej9kZTabxkLCbt6u8k+XrdJL3fHHKGaVesIOUTbU5n+mydmdjDChVSQ2Jya88Q3ikIfLkcIW6r
	KfkGH/mEXcwRLEUf5200nBf5gVk08ZDVj4Ae9BN42bkk8P40Qgembsqm9blhEFroTEkl+g8TkEu9X
	cjajqeOeldppPEc1hqxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2oS-0001EM-GK; Fri, 08 Nov 2019 11:52:24 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2oO-0001DS-OV
 for linux-rockchip@lists.infradead.org; Fri, 08 Nov 2019 11:52:22 +0000
Received: by mail-ed1-x544.google.com with SMTP id a21so4777217edj.8
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Nov 2019 03:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IOnxCFh4YN+0QSSZGQhAPojghrwSZUgGpZPmxcpF31E=;
 b=GjMU9TWSMias72NYZf8/pIAPsYqBU2Md+VpsSiGnnatFFveAw6xtOCFAzEi4WXWZHz
 nRfnfimUDj7TuifnpQh3avxk4E2EOp9sjleGFUPM5EGuAX5M85TUlLhYwm1B4mQl9a2c
 0QMn+HUckzrpkgHa6z0QEbNfrdWxRlJE0y1OA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IOnxCFh4YN+0QSSZGQhAPojghrwSZUgGpZPmxcpF31E=;
 b=p5pHJms8Ga53kSBYU1kXaDMQE7r0ChNdfCuZoQ234j9iwXs6hlxVTjFvLJKaorGpbi
 WYCZsc4IhhIJyUOwU9RsDSqzKACatZtqWyvoVd0VnUkI06xA1tlXndLVFMpoetI0eVa3
 JjW2+L0koB6QvPsXwi7Li5I8Ynd0m69Uy3iGlKHXKjtq6sunQuVPcqdVzrl6nFS/Rt5h
 +jlcEriN2X5bM1pu8Yyp8h7pbYDND3vtyWnRmpZkVhlBnblkMOO8ps5DVXnoRNqMKJO1
 zgmD3+NBJ8xZHZwCg9iakORhZ4U+0KRZwSdDPQWBQxNRdCfSBA5/pmK/nSsxxP89ZwSN
 42yQ==
X-Gm-Message-State: APjAAAXI4XL2KTmhc32xc07quLMIgXTFEPwqYxLdHquO1v/ZsLLK3iw0
 b1Bhmnf4oQglZfI8JwiNf+0EC8SM8+96/Q==
X-Google-Smtp-Source: APXvYqy0ioCzvm+2jfqXU+TGsP+7MPkh+U9yfhUE3ATMlbrl/rllg2MSfjZM0TQRmbO4NyYQPVB6pA==
X-Received: by 2002:a17:906:4056:: with SMTP id
 y22mr8451431ejj.188.1573213937323; 
 Fri, 08 Nov 2019 03:52:17 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id m26sm116323edr.16.2019.11.08.03.52.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Nov 2019 03:52:14 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id z10so1414610wrs.12
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Nov 2019 03:52:14 -0800 (PST)
X-Received: by 2002:adf:e505:: with SMTP id j5mr7683403wrm.46.1573213933783;
 Fri, 08 Nov 2019 03:52:13 -0800 (PST)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-2-ezequiel@collabora.com>
 <20191108111950.717db5ce@collabora.com>
In-Reply-To: <20191108111950.717db5ce@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 8 Nov 2019 20:52:02 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DiAnP5pc4SoPV3aDM7k71wYmPtAHzN7thquf47EOioHw@mail.gmail.com>
Message-ID: <CAAFQd5DiAnP5pc4SoPV3aDM7k71wYmPtAHzN7thquf47EOioHw@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_035220_823044_455FFD4D 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:20 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Mon,  7 Oct 2019 14:45:02 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> > Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> > changed the conditions under S_FMT was allowed for OUTPUT
> > CAPTURE buffers.
> >
> > However, and according to the mem-to-mem stateless decoder specification,
> > in order to support dynamic resolution changes, S_FMT should be allowed
> > even if OUTPUT buffers have been allocated.
> >
> > Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
> > modification, provided the pixel format stays the same.
> >
> > Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
> >
> > Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > --
> > v2:
> > * Call try_fmt_out before using the format,
> >   pointed out by Philipp.
> >
> >  drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
> >  1 file changed, 19 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > index 3dae52abb96c..586d243cc3cc 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > @@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> >  {
> >       struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> >       struct hantro_ctx *ctx = fh_to_ctx(priv);
> > +     struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> >       const struct hantro_fmt *formats;
> >       unsigned int num_fmts;
> > -     struct vb2_queue *vq;
> >       int ret;
> >
> > -     /* Change not allowed if queue is busy. */
> > -     vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> > -     if (vb2_is_busy(vq))
> > -             return -EBUSY;
> > +     ret = vidioc_try_fmt_out_mplane(file, priv, f);
> > +     if (ret)
> > +             return ret;
> >
> >       if (!hantro_is_encoder_ctx(ctx)) {
> >               struct vb2_queue *peer_vq;
> >
> > +             /*
> > +              * In other to support dynamic resolution change,
>
>                       ^ order
>
> > +              * the decoder admits a resolution change, as long
> > +              * as the pixelformat remains. Can't be done if streaming.
> > +              */
> > +             if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> > +                 pix_mp->pixelformat != ctx->src_fmt.pixelformat))
> > +                     return -EBUSY;
>
> Sorry to chime in only now, but I'm currently looking at the VP9 spec
> and it seems the resolution is allowed to change dynamically [1] (I
> guess the same applies to VP8). IIU the spec correctly, coded frames
> using the new resolution can reference decoded frames using the old
> one (can be higher or lower res BTW). If we force a streamoff to change
> the resolution (as seems to be the case here), we'll lose those ref
> frames (see the hantro_return_bufs() in stop streaming), right?
> Hans, Tomasz, any idea how this dynamic resolution change could/should
> be supported?

The same problem applies to stateful decoders as well. This is an
inherent limitation of the current V4L2 API. To handle this kind of
streams we would have to make the format a per-buffer parameter,
rather than per-queue as it is defined currently.

Best regards,
Tomasz

>
> >               /*
> >                * Since format change on the OUTPUT queue will reset
> >                * the CAPTURE queue, we can't allow doing so
> > @@ -389,12 +396,15 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> >                                         V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> >               if (vb2_is_busy(peer_vq))
> >                       return -EBUSY;
> > +     } else {
> > +             /*
> > +              * The encoder doesn't admit a format change if
> > +              * there are OUTPUT buffers allocated.
> > +              */
> > +             if (vb2_is_busy(vq))
> > +                     return -EBUSY;
> >       }
> >
> > -     ret = vidioc_try_fmt_out_mplane(file, priv, f);
> > -     if (ret)
> > -             return ret;
> > -
> >       formats = hantro_get_formats(ctx, &num_fmts);
> >       ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
> >                                             pix_mp->pixelformat);
>
> [1] Section "5.16 Reference frame scaling" of
>     https://storage.googleapis.com/downloads.webmproject.org/docs/vp9/vp9-bitstream-specification-v0.6-20160331-draft.pdf

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
