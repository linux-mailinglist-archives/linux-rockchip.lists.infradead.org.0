Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190A31FFAD9
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 20:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1g9pivzVMXILDOzE89aNVUd/YXGG7XnXl6DXO95P6c=; b=VcdmpfdU8yQ4hT
	h8bSZvsOvoukTOOh4e0UJtcizIQvbNNrZuYGigziIt2AEsV8AWtasgav+9r1snnMt0GjHARDpirzs
	5CauUeaAjbxSFAqMB2qeYSyPbEqTGDEm+z9bB8hVCJQxelBeEwbEORKDqBTpNXaixeFSCQ4q2GarA
	2fsXGTcA01L0CoFXrpyQeX/Bj5uD2D8qa363y/WNF5KN6OyvYcyUlqJWr1mI4GUcTmqoKD7gyYPYp
	LHToCZ6Isamt/gq/Cmqi0L+UGKvtQE+zTUc+XmSGt455q10Dz4rdIWv040P1ufthRKVBjMqfQsq6Y
	R8smKLBEp+qRnkcwM0ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlz1a-0001Ow-A8; Thu, 18 Jun 2020 18:12:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlz1W-0001O2-Pz
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 18:12:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id g10so6060810wmh.4
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 11:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qCjJUz763V9X2aPqLxzBeHkYJwpTezbUL5uCwE0GBso=;
 b=KQJqU2vxkUxMS5U36ncQbVN1CAhvhJkgWtT1J1cmIhBNtl2oisq08X21qiCbh6DXpi
 rgUuoynO/uAsKP5RKTnn2intMYZOTzCg+b3dlKaUPbvlZxTxonlCdgEQAUHZYp1pBlcf
 fmjVGnh0S31kkNb+ATZKgFyiq1gNR7Pas6q6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qCjJUz763V9X2aPqLxzBeHkYJwpTezbUL5uCwE0GBso=;
 b=HtDp0ZwU4yf1aBPnkUERXNQfNEydE4qUhvQlOxdhq04JkILDbMsYeHQ347HYAUUwPO
 aDrggHYEgw3VzcVDzDBhc4OVYs/nTBABfGWGRa23ZdDExRdfCPV/8rmoP++qim9l5Azs
 rGFG4D0RgC7sHSHU1Ulu+SWKHMwatNIayQQSO13775i4x/LygcY3lY41FUdshvH0sx7J
 8QB20wsJRZZ1+7tA7On1CE71wWVc0xaR/UssP5a18sC/dobGHwOz0VQ/QZW4ymvhZMI4
 5SZeUWvZ4g5sDmQWomKIryEO0gBuotdjL5jDLo5bfPeSJqasDQ7lOzhGKZXa4a0Gw4F8
 3UDA==
X-Gm-Message-State: AOAM533pYUXXvpEeDxxUTsa2hkV0cbnIjFnNCP+Lqcg66gEeqAj0n8iV
 +V9Ata1F8br3KDJ4abs6nBdeSQ==
X-Google-Smtp-Source: ABdhPJyXhrR4dDjEN0O62TWdCr/5hUNZoDgkcGIgNtY/TWGaFV+qs0hJrrA1hWNpcNTlRdT26Y4Y0g==
X-Received: by 2002:a05:600c:4102:: with SMTP id
 j2mr5258531wmi.48.1592503942678; 
 Thu, 18 Jun 2020 11:12:22 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id e5sm4477852wrw.19.2020.06.18.11.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:12:22 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:12:20 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
Message-ID: <20200618181220.GC10831@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
 <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
 <aa52f9f8-d9e9-06b2-22df-bbab2d26b516@collabora.com>
 <20200618174752.GA10831@chromium.org>
 <9ee01443-985d-751c-fff9-fa90337de68d@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ee01443-985d-751c-fff9-fa90337de68d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_111226_860062_0CCFFD13 
X-CRM114-Status: GOOD (  35.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Thu, Jun 18, 2020 at 08:00:37PM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 18.06.20 19:47, Tomasz Figa wrote:
> > On Fri, Jun 12, 2020 at 02:45:00PM +0200, Dafna Hirschfeld wrote:
> > > 
> > > 
> > > On 27.05.20 01:09, Tomasz Figa wrote:
> > > > On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> > > > <dafna.hirschfeld@collabora.com> wrote:
> > > > > 
> > > > > If the capture format is YUV444M then the memory input format
> > > > > should be YUV422, so the resizer should not change the default
> > > > > hdiv, vdiv in that case.
> > > > > 
> > > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > > ---
> > > > >    drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
> > > > >    1 file changed, 4 insertions(+), 3 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > index 04a29af8cc92..5f9740ddd558 100644
> > > > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> > > > >            * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
> > > > >            * streams should be set according to the pixel format in the capture.
> > > > >            * The resizer always gets the input as YUV422. If the capture format
> > > > > -        * is RGB then the memory input (the resizer output) should be YUV422
> > > > > -        * so we use the hdiv, vdiv of the YUV422 info in this case.
> > > > > +        * is RGB or YUV444 then the memory input (the resizer output) should
> > > > > +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
> > > > >            */
> > > > > -       if (v4l2_is_format_yuv(cap->pix.info)) {
> > > > > +       if (v4l2_is_format_yuv(cap->pix.info) &&
> > > > > +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
> > > > >                   src_c.width = cap->pix.info->hdiv;
> > > > >                   src_c.height = cap->pix.info->vdiv;
> > > > 
> > > > As pointed out in another thread, this should have been the original
> > > > size divided by the divisor and not just the latter alone.
> > > > 
> > > > It seems a bit suspicious to me that we don't need to upscale the
> > > > chroma planes here, because it would mean that the MI itself would be
> > > > doing some horizontal pixel doubling. The hardware documentation
> > > > doesn't really explain this, though.
> > > > 
> > > > Have you been able to validate that the setting without upscaling
> > > > indeed produces correct output?
> > > 
> > > Hi,
> > > I investigated it again, without this patch, the frames on mainpath for YUV444 look good: https://imgur.com/a/NtazWhY
> > > but there is a problem on selfpath: https://imgur.com/a/vQJPqAn
> > > 
> > > This patch somehow solves the problem on selfpath but ruins the frames on mainpath.
> > > 
> > > I think the bug is actually in another place in the code. The function 'rkisp1_sp_config'
> > > sets a constant value RKISP1_MI_CTRL_SP_INPUT_YUV422 as the input format on the RKISP1_CIF_MI_CTRL register.
> > > But the value should be set according to the configuration. For some reason the problem arises only
> > > when trying to capture yuv444. When I capture yuv420 on the selfpath the frame looks good although the
> > > value RKISP1_MI_CTRL_SP_INPUT_YUV422 is set.
> > > Setting the the SP_INPUT_* according to the configuration seems to solve the problem.
> > 
> > Looking at the datasheet, SP seems to have some internal format
> > conversion capability - one can set SP_OUTPUT_FORMAT and SP_INPUT_FORMAT
> > to different YUV subsampling modes or even some RGB formats. MP doesn't
> > have this capability - it can only write whatever it receives.
> > 
> > I think this needs to be reflected in the driver, if it isn't yet.
> > Depending on the resizer source format, the MP video node must allow
> > only formats with matching subsampling mode.
> 
> Hi,
> I work on v3 now that does that, it supports several yuv mbus codes on the source pads of the resizers
> and then in the link_validation callback of the capture it checks that the subsampling matches.

Is it enough? I believe the principle is that within the same entity the
state needs to stay consistent, i.e. if the sink pad changes, the source
pad or video node must be updated to expose only correct formats,
including resetting the current format.

> 
> It is not clear to me what is the meaning of the input/output capapility of the selfpath except of RGB convertion.
> Since yuv subsampling is what the resizer does.

Could be some historical legacy, a byproduct of some feature (e.g.
RGB could be bundled with support for other formats) or could be there
on purpose.

It would be worth checking whether there are any quality or
performance/power differences depending on whether the resizer or the SP
is used for resampling. For example, one could be using some
interpolation algorithm, while the other just a simple pixel doubling or
decimation.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
