Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2F01F59B4
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfJGUT1Aam4AujTPcGPGQUMbOHImYK3fKZszsBELzSo=; b=u9E87jhXWsWb5q
	c/wcvcim+tj/uts7NxxnLv1ywcum4RUCNtmdydxayKvtF2xTBggfjzIMTJMxbvoqBQUVGrkaYIiHw
	Akk+oNFQ6rxH16pz/OfC2JJg+ejdHEF8ZHoBp0dsNOQkMFQvpd9OoRisffeEZHiAPN/9uJbEyQlrE
	Oq94fwI2hmZsa2GUWxHhrpsPf77F5u9mS4tAgRTdtXvXVwQSjtlM87JPG5d1LVQZ8AKivT9GpHas3
	5h+G5vlSShu6WYWZ4GR6Zwbk+sVQtHfehGftlcEDL80B7W+oBDJjaRiQrGtMRL8rpVkJdn9YuQSpM
	ND4kdkpMtHGZJhBimkPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4DR-0000Gg-7a; Wed, 10 Jun 2020 17:08:41 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4DO-0000GL-1e
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:08:39 +0000
Received: by mail-ej1-x642.google.com with SMTP id l27so3462476ejc.1
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CPHTRKjoBXL00GIqtlnXPTK9HEWid5C/nfO25utv9/4=;
 b=HbtztV/lXv0WYy93/e6d2BVAQQmesdiw0YWZH42QwugMA0n+Qtih8qLYe1nevmm/TQ
 pIbX1td4FVa492PhVE55QmAo29nKcjw0ZJ6rDRzgpLcKSYULK4fyPqtvwqldsJPGNhWt
 7yklU4R3km3q5k77xMFqhkRxwOwPybptUvnj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CPHTRKjoBXL00GIqtlnXPTK9HEWid5C/nfO25utv9/4=;
 b=M+0JoiR6FM4SbW0a81jGvEhMeA94rAEIDUMk/JX5vQAHj8vgjz40RVuOgeTXiHs/wL
 osiI/oPyzzNHmkKPu0N9h4OOOot9esFwhDnhHaTijuG2aPy9qTV1/05+aODvuN4dX/TL
 Xrjrx6m/N5vzESZKnitcT0goaEy150XD6h9W3QiQAgq7PpPChQ3pUOH6jGTVt4Wq2loY
 L5t+CuSpRdo5pTPLsz3Vfm7Wsl0MZ/fGacKgTEWgpPqjcIR/D1oSjjdFYYuhzz21wffz
 T06czQgG2D9GyAcGKy0PgePelt1cyZwhXdy9qKpDQDx5zChOXKYcD4jiVaVlcwGhUYiC
 rWUQ==
X-Gm-Message-State: AOAM531ddi+uc0bwys8WbhEfBiCKfGfH9FqkBv2l6igD5yGphMQY9io4
 WAQVEW6Ms+4SH0p+antz/v0ly0UQ7c9c7A==
X-Google-Smtp-Source: ABdhPJy1J0yupSv0ZRlWwKVdgpB1NMDRO0E5h6KcC/EYuj0It181tTNqApw4jbTnbQ/RgVl1R1c0BA==
X-Received: by 2002:a17:906:11c4:: with SMTP id
 o4mr4541846eja.163.1591808915590; 
 Wed, 10 Jun 2020 10:08:35 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id cn14sm149647edb.22.2020.06.10.10.08.34
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 10:08:34 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id l10so3112503wrr.10
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:08:34 -0700 (PDT)
X-Received: by 2002:adf:9c12:: with SMTP id f18mr5159319wrc.105.1591808913803; 
 Wed, 10 Jun 2020 10:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
 <CAAFQd5CKhgMJJUTCn3cmPmgVORbH7-cxq2p0wmaN14MJJSC5iA@mail.gmail.com>
 <6b3a1844-a1e5-dc38-28ef-1645a78babed@collabora.com>
In-Reply-To: <6b3a1844-a1e5-dc38-28ef-1645a78babed@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 10 Jun 2020 19:08:20 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CkL14sw+5o+n-m7-nAPQt1xu7_gvgNyKfpxJKWuhrmYA@mail.gmail.com>
Message-ID: <CAAFQd5CkL14sw+5o+n-m7-nAPQt1xu7_gvgNyKfpxJKWuhrmYA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_100838_104714_4882F866 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
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

On Wed, Jun 10, 2020 at 7:01 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> On 27.05.20 00:44, Tomasz Figa wrote:
> > Hi Dafna,
> >
> > On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> > <dafna.hirschfeld@collabora.com> wrote:
> >>
> >> The resize block of rkisp1 always get the input as yuv422.
> >> Instead of defining the default hdiv, vdiv as macros, the
> >> code is more clear if it takes the (hv)div from the YUV422P
> >> info. This makes it clear where those values come from.
> >> The patch also adds documentation to explain that.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
> >>   1 file changed, 12 insertions(+), 13 deletions(-)
> >>
> >
> > Thank you for the effort on improving this driver! Please see my comments below.
> >
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> index d049374413dc..04a29af8cc92 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> @@ -16,9 +16,6 @@
> >>   #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
> >>   #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
> >>
> >> -#define RKISP1_MBUS_FMT_HDIV 2
> >> -#define RKISP1_MBUS_FMT_VDIV 1
> >> -
> >>   enum rkisp1_shadow_regs_when {
> >>          RKISP1_SHADOW_REGS_SYNC,
> >>          RKISP1_SHADOW_REGS_ASYNC,
> >> @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> >>   static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>                                enum rkisp1_shadow_regs_when when)
> >>   {
> >> -       u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
> >>          struct v4l2_rect sink_y, sink_c, src_y, src_c;
> >>          struct v4l2_mbus_framefmt *src_fmt;
> >>          struct v4l2_rect *sink_crop;
> >>          struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
> >> +       const struct v4l2_format_info *yuv422_info =
> >> +               v4l2_format_info(V4L2_PIX_FMT_YUV422P);
> >
> > As I mentioned in another reply, this is a memory format, but we're
> > using it to configure a local (i.e. non-DMA) input.
> >
> >>
> >>          sink_crop = rkisp1_rsz_get_pad_crop(rsz, NULL, RKISP1_RSZ_PAD_SINK,
> >>                                              V4L2_SUBDEV_FORMAT_ACTIVE);
> >> @@ -386,8 +384,9 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>          src_y.width = src_fmt->width;
> >>          src_y.height = src_fmt->height;
> >>
> >> -       sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
> >> -       sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
> >> +       /* The input format of the resizer is always yuv422 */
> >> +       sink_c.width = sink_y.width / yuv422_info->hdiv;
> >> +       sink_c.height = sink_y.height / yuv422_info->vdiv;
> >
> > I'd honestly go the opposite way and just make it:
> >
> > /* The resizer input is always YUV 4:2:2 and so horizontally subsampled by 2. */
> > sink_c.width = sink_y.width / 2;
> > sink_c.height = sink_y.height;
> >
> >>
> >>          /*
> >>           * The resizer is used not only to change the dimensions of the frame
> >> @@ -395,17 +394,17 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>           * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
> >>           * streams should be set according to the pixel format in the capture.
> >>           * The resizer always gets the input as YUV422. If the capture format
> >> -        * is RGB then the memory input should be YUV422 so we don't change the
> >> -        * default hdiv, vdiv in that case.
> >> +        * is RGB then the memory input (the resizer output) should be YUV422
> >
> > It could be just me, but "memory input" sounds like there was an input
> > DMA involved, which is not the case. How about "Memory Interface
> > input"?
> >
> > Also, if already amending this, I would also fix the overuse of
> > "should". How about the following?
> >
> > "According to the hardware pipeline, the resizer input is always YUV
> > 4:2:2. For YUV formats, the Memory Interface requires its input to be
> > already properly subsampled. We can achieve subsampling factors other
> > than YUV 4:2:2 by scaling the planes appropriately. For RGB formats,
> > the Memory Interface requires YUV 4:2:2 input, so no additional
> > scaling is needed."
> >
> >> +        * so we use the hdiv, vdiv of the YUV422 info in this case.
> >>           */
> >>          if (v4l2_is_format_yuv(cap->pix.info)) {
> >> -               hdiv = cap->pix.info->hdiv;
> >> -               vdiv = cap->pix.info->vdiv;
> >> +               src_c.width = cap->pix.info->hdiv;
> >> +               src_c.height = cap->pix.info->vdiv;
> >> +       } else {
> >
> > How about making it an explicit else if (v4l2_is_format_rgb(...))?
> Actually the right way to deal with YUV downscaling is to support
> MEDIA_BUS_FMT_YUYV8_1_5X8 (which is YUV420) on the src format
> and not to look on what is configured on the capture.

Good point. Since we're dealing with the resizer configuration, it
should be contained within the resizer subdev. My mind was still stuck
with our downstream topology.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
