Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A5BCF143
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 05:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV1rtvkwrpCjSIVK37025gj7CMIgVz1DOUsY8o13d48=; b=WznYH9Ti2XWTIe
	RTMiOtEZvtnn5WCeLkDRSeZJltqlal422XJOjLypy1Qoa8OdXC2U0O9MxGHpJFeUgWGjJ5dnrb4Qw
	CfWdQgDJeBRg7+/fbxdJijVrkGWtmLVOT8IH8MkUirypZs3i7mEw8PzaM00cWPBpLJHkHfgOmt+JT
	p5YntGDZxj/5xTLrE7IW1utkGUtRIEUoegkJZ86gkVqGDzNK0GoZRM6CZWO/yWHjR2fSXpTJgd7q3
	m44hiZNe/1H9Tt0y3przjmeImRxCht1zE9iBmlVZm1l1k7mFErI5JxmXcHjZg+DHOw7nr5103FQSN
	COGq1cc6rXxU+WMzdfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHgC0-0000D6-6F; Tue, 08 Oct 2019 03:29:44 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHgBu-0000CA-UO
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 03:29:42 +0000
Received: by mail-ed1-x541.google.com with SMTP id t3so14284882edw.13
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2019 20:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EvafDVJviid1Lod+sDu0bEw60oGKxGZ5GVF0o7ApXbk=;
 b=Bqopbd1fSDtzVkQJrSaKPt8f5oWAzVJy4oUD3Au2A8ZU2xbsPXki7QEQ6F8ZTZSZHz
 V2zz9TR2KCF5Ma3jlofSqdC+ChNfxdcaa07+hMltQlqqZRRE21I+gpOzAJJLkuhBAzq5
 rZ5Z0ip3O/EYiXMt0uDz40T+TuPpnGDBil6u4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EvafDVJviid1Lod+sDu0bEw60oGKxGZ5GVF0o7ApXbk=;
 b=NLuiwkZasKnRSADp25qNJQ214XMUVA1jx10+e3L6XIRjRjwhSHX3A3hrJ3WppyhM3O
 QmJsb1PYbSsFa6NEDRPAHjPX+84Z0lbC4McuL1vlbCPwuX8OFFujGDBrgDcezLKJYstg
 NLkDAm5pwUl/EeCR/+Pxjjox480fl7vDliR8BD+q3ZF+yzmO9+kEQPzLINW2TGwYoTEM
 0UMPCBoNeJvkLXozCFH/7M6zIuOVGuJAWqFYDaDuMfVBqr4hnuFkkJzkd7p7gvM9ZUv8
 1H/hiWOGV+On6l2acMvdcYRSarQl48zFAKI/8rzYyy6If6efNpFXfxfwq66jBcM4eASB
 4Kxw==
X-Gm-Message-State: APjAAAWeF2R7VLW6izWgt0TwX/XFGkEro7pLOMkH297OiCXJZ2YOhpHQ
 dF5GubWuajYhRbALQfnLNn+vERJmoCyAeg==
X-Google-Smtp-Source: APXvYqxBysz++ZGxr2sCu1ZpZ/Lie1AnOTUYri7awidKoZfOcHqyNagDQsfsWCP5CInsUmKugvPfMQ==
X-Received: by 2002:a17:906:3298:: with SMTP id
 24mr27029838ejw.136.1570505376044; 
 Mon, 07 Oct 2019 20:29:36 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id k22sm2098681eja.56.2019.10.07.20.29.34
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 20:29:34 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id r19so1465293wmh.2
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2019 20:29:34 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr1979936wme.116.1570505374139; 
 Mon, 07 Oct 2019 20:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com>
 <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 8 Oct 2019 12:29:22 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com>
Message-ID: <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_202939_007081_10305E73 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: "fbuergisser@chromium.org" <fbuergisser@chromium.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonas,

On Tue, Oct 8, 2019 at 3:33 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-07 19:45, Ezequiel Garcia wrote:
> > From: Francois Buergisser <fbuergisser@chromium.org>
> >
> > The setting of the motion vectors usage and the setting of motion
> > vectors address are currently done under different conditions.
> >
> > When decoding pre-recorded videos, this results of leaving the motion
> > vectors address unset, resulting in faulty memory accesses. Fix it
> > by using the same condition everywhere, which matches the profiles
> > that support motion vectors.
>
> This does not fully match hantro sdk:
>
>   enable direct MV writing and POC tables for high/main streams.
>   enable it also for any "baseline" stream which have main/high tools enabled.
>
>   (sps->profile_idc > 66 && sps->constrained_set0_flag == 0) ||
>   sps->frame_mbs_only_flag != 1 ||
>   sps->chroma_format_idc != 1 ||
>   sps->scaling_matrix_present_flag != 0 ||
>   pps->entropy_coding_mode_flag != 0 ||
>   pps->weighted_pred_flag != 0 ||
>   pps->weighted_bi_pred_idc != 0 ||
>   pps->transform8x8_flag != 0 ||
>   pps->scaling_matrix_present_flag != 0

Thanks for double checking this. I can confirm that it's what Hantro
SDK does indeed.

However, would a stream with sps->profile_idc <= 66 and those other
conditions met be still a compliant stream?

>
> Above check is used when DIR_MV_BASE should be written.
> And WRITE_MVS_E is set to nal_ref_idc != 0 when above is true.
>
> I think it may be safer to always set DIR_MV_BASE and keep the existing nal_ref_idc check for WRITE_MVS_E.

That might have a performance penalty or some other side effects,
though. Otherwise Hantro SDK wouldn't have enable it conditionally.

> (That is what I did in my "media: hantro: H264 fixes and improvements" series, v2 is incoming)
> Or have you found any video that is having issues in such case?

We've been running the code with sps->profile_idc > 66 in production
for 4 years and haven't seen any reports of a stream that wasn't
decoded correctly.

If we decide to go with a different behavior, I'd suggest thoroughly
verifying the behavior on a big number of streams, including some
performance measurements.

Best regards,
Tomasz

>
> Regards,
> Jonas
>
> >
> > Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> > Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > v2:
> > * New patch.
> >
> >  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> > index 7ab534936843..c92460407613 100644
> > --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> > +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> > @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
> >       if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
> >               reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
> >       reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
> > -     if (dec_param->nal_ref_idc)
> > +     if (sps->profile_idc > 66)
> >               reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
> >
> >       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
