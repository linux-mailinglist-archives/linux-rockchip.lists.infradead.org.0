Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3143D1FFA7F
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 19:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQGAwXH0U6AJdtOUGvErrT/riiNXwVYXntJii4ohN9M=; b=JBJJB7Dbhn4bno
	0wHL9+6dLMudpery5/KZMpHRDdeWn1WNI3Yz8/rLz8lDDWq2ul7hpLdE1hyZsWXYBhF4c8TKzx318
	uOWq4E8Td4aiwfR5e/FtOxELGOWLUg2E5KSDjizdjLA895uWfiCKLFeIKXywzwQf2lTPtmNmN+Dj/
	i151gHpB2me6n6rTh71e+CRxr1fMKA45wkZnT/NpM4DW2iQViLxmVblqUx1C2oYajiADBg8D/azCo
	uUsqwXuLHOI3C289IX+s2tibRgbyc4R9AJkUGwbNmgeMpW63bLH2prerT6a18IXeF5ExNI90JF4PS
	FY/GvTuqCJRhU+3+oSuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyds-0004gJ-Ii; Thu, 18 Jun 2020 17:48:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlydo-0004fy-7k
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 17:47:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id l17so6009937wmj.0
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 10:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nD3+toXLKogeefPD64vrqBCxoKS7Czs8tQsrmBrXEpg=;
 b=acarjsE8bCYNSFGMhlznykkFeMSrWl5bq32liYMxhRt/S1Fhag8MCou+0r6l0zJ5FR
 W4mLPr6WOgYV2HYdOFO443JNxIFN0WiOeL4jQc9EzNIQlz1OzsD9ul7vvVyJ5IFBBBL8
 IR6nZmkeIs+f1UAOyRk57+BaRg3fV1HGXZCzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nD3+toXLKogeefPD64vrqBCxoKS7Czs8tQsrmBrXEpg=;
 b=tMFvqaD/uZYNdYWo5aIUc8aOGADWQ0VXduG2sF7HiMhP46V96fiQL59Ep2HKNr4sYB
 Oh+PFVRRTxnukSp0hT9jzVg4QksZLKdSBE7IAnkffaWl3P8auk3+GI72zosIFx2T8xeq
 LOCHyvWXM+MV/4Go4pD7rQpLiajhrCQgzZChswNTaZZ7jcnjVMoKisqc4QzrlT1cUY8T
 gw1XJogI8EZW5SQhjjWSHI+a3IRuwj14U0vjZY8Ma5t1qpKcoAka8Q+NFlgSf/eLCX5G
 YNfImwPqmSvYiFYzbSa+Uf6LNUPw//viaPQyiJZp0XB/G8/hc+iK92JY8vcgbtce1bcn
 o9PQ==
X-Gm-Message-State: AOAM531owbncS5sX9F0IQEeVpxVc1CyT3zjdE3pn4OUHKshHL+YaCNmJ
 6ExTXegQJ10bEfhRRQQqRwoHfA==
X-Google-Smtp-Source: ABdhPJwZfdBS3GcYC01vmWWR86hP6NMV6sARuWbfkBdOrafNNLQlYWYu2fkQWKkr0t1uFu2Z37phjg==
X-Received: by 2002:a7b:cf02:: with SMTP id l2mr5226379wmg.136.1592502474261; 
 Thu, 18 Jun 2020 10:47:54 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id k206sm4394277wma.39.2020.06.18.10.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 10:47:53 -0700 (PDT)
Date: Thu, 18 Jun 2020 17:47:52 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
Message-ID: <20200618174752.GA10831@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
 <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
 <aa52f9f8-d9e9-06b2-22df-bbab2d26b516@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa52f9f8-d9e9-06b2-22df-bbab2d26b516@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_104756_295290_C9D5B940 
X-CRM114-Status: GOOD (  29.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Fri, Jun 12, 2020 at 02:45:00PM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 27.05.20 01:09, Tomasz Figa wrote:
> > On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> > <dafna.hirschfeld@collabora.com> wrote:
> > > 
> > > If the capture format is YUV444M then the memory input format
> > > should be YUV422, so the resizer should not change the default
> > > hdiv, vdiv in that case.
> > > 
> > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > ---
> > >   drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
> > >   1 file changed, 4 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > index 04a29af8cc92..5f9740ddd558 100644
> > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> > >           * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
> > >           * streams should be set according to the pixel format in the capture.
> > >           * The resizer always gets the input as YUV422. If the capture format
> > > -        * is RGB then the memory input (the resizer output) should be YUV422
> > > -        * so we use the hdiv, vdiv of the YUV422 info in this case.
> > > +        * is RGB or YUV444 then the memory input (the resizer output) should
> > > +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
> > >           */
> > > -       if (v4l2_is_format_yuv(cap->pix.info)) {
> > > +       if (v4l2_is_format_yuv(cap->pix.info) &&
> > > +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
> > >                  src_c.width = cap->pix.info->hdiv;
> > >                  src_c.height = cap->pix.info->vdiv;
> > 
> > As pointed out in another thread, this should have been the original
> > size divided by the divisor and not just the latter alone.
> > 
> > It seems a bit suspicious to me that we don't need to upscale the
> > chroma planes here, because it would mean that the MI itself would be
> > doing some horizontal pixel doubling. The hardware documentation
> > doesn't really explain this, though.
> > 
> > Have you been able to validate that the setting without upscaling
> > indeed produces correct output?
> 
> Hi,
> I investigated it again, without this patch, the frames on mainpath for YUV444 look good: https://imgur.com/a/NtazWhY
> but there is a problem on selfpath: https://imgur.com/a/vQJPqAn
> 
> This patch somehow solves the problem on selfpath but ruins the frames on mainpath.
> 
> I think the bug is actually in another place in the code. The function 'rkisp1_sp_config'
> sets a constant value RKISP1_MI_CTRL_SP_INPUT_YUV422 as the input format on the RKISP1_CIF_MI_CTRL register.
> But the value should be set according to the configuration. For some reason the problem arises only
> when trying to capture yuv444. When I capture yuv420 on the selfpath the frame looks good although the
> value RKISP1_MI_CTRL_SP_INPUT_YUV422 is set.
> Setting the the SP_INPUT_* according to the configuration seems to solve the problem.

Looking at the datasheet, SP seems to have some internal format
conversion capability - one can set SP_OUTPUT_FORMAT and SP_INPUT_FORMAT
to different YUV subsampling modes or even some RGB formats. MP doesn't
have this capability - it can only write whatever it receives.

I think this needs to be reflected in the driver, if it isn't yet.
Depending on the resizer source format, the MP video node must allow
only formats with matching subsampling mode.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
