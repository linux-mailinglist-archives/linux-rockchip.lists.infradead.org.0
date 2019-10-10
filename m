Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3A2D21AE
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 09:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvNmdVVyivWk3ErY8/3uvoVS0ClXHgnatWiAf5QDN70=; b=Rc2sAWpwVKkkkD
	yY9ldKUmrzuM75kbjwkYkBk6KdG8KIdOgXG42sH9wM1HeOrkXR6L8C0darYFgeqidJc/rB9PyEPb9
	EPf/scJI6keRDxHREeVyWNKHt7/n2/FkXjpbSyhZpYrDqz80YKWyurmdjGrio1934b05Gf/XgK2s7
	kg4FkTxpIWKe0XY2T2f9p9oukZ/hXOCB/c5rKz7+J3w6nO3dHKx6Roe738fNpv1ODmqaDqAZ0cpCq
	sXsm1+6zUJCw/RCWnM5RwCvFIgzyNuchhhVZJfej+8VemYkJxsepIr0cly1ZGoIWVs7/YpNlH0w/r
	rejUlAtCLBzL8J2BYJ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISzu-0004ag-7a; Thu, 10 Oct 2019 07:36:30 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISzq-0004a0-IA
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 07:36:28 +0000
Received: by mail-ed1-x541.google.com with SMTP id r4so4532129edy.4
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 00:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j2LxCDafDAW02/WxF7QeZcp0q72h+B7Xlq2HfqSe0sE=;
 b=EW/Ygj0EAHXhkRDxuxtERiyCDOa0gnnMecZN7ArVqesXfPWt5j+cnDEqjJzxFn9SnB
 j9tskjx6w94C9tJ7mapr7kCU0T2i8+HA2AIe+JUV2F0DPvq8JpOYq+VgJBevcjD0phY6
 LpCGiVGUqgYtzICLIaLlmgiFFb3/hPYunPhp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j2LxCDafDAW02/WxF7QeZcp0q72h+B7Xlq2HfqSe0sE=;
 b=C0XhwujO5Ky4VnCi4/AWVuHmyszc4hrgbLvwum2rC13ZlATiyb8I7Xdz1h+KtICoHm
 EDnOSWqsQ8MaCjis5qY+EzZggq50z3bIV7I/odiXkeSlx8JgUTFOB7UU6k/JonkKZTDW
 tWcSdKAwWxaNvD9D6FOCz7TBpDRbjQ84bCM9rdYMwhRZko+qvrAmdx6HuRHl0ARz0KVY
 4ASebXnu7juTTCFrGKDTMo9WK+fx7dre0JzY6dxvj+qqufU00HReHPgyBKDDv2dYC7IF
 3fvxFb9WRe1QH25wKcMcMyp3O+BcDXgNNwWgOo/g335YLjTkS1QXIOdJytZ5JixyY53J
 C0lA==
X-Gm-Message-State: APjAAAUMwFiFr/YKgJPL1wBBAfElyOA8b53l1y2nQph405LqojkgNYef
 T0Xck+T28FOtsSfvHPJu0PZmBpkfNZUBCw==
X-Google-Smtp-Source: APXvYqzxcNEH9/uEoBfuN/S3gdhFCICirDNXmlx6DvbTZfj70UoxcQA96owvteqI7pxbNQXjaO77xg==
X-Received: by 2002:aa7:d8d5:: with SMTP id k21mr6932487eds.286.1570692985164; 
 Thu, 10 Oct 2019 00:36:25 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id ng5sm591979ejb.9.2019.10.10.00.36.22
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 00:36:23 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id r19so5765111wmh.2
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 00:36:22 -0700 (PDT)
X-Received: by 2002:a1c:2e50:: with SMTP id u77mr6752094wmu.64.1570692982129; 
 Thu, 10 Oct 2019 00:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com>
 <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com>
 <HE1PR06MB40111D7287970183CF6D0DD1AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5AqYsUJeM5tzOY3WNFRZu74k6Yst3TpxcfB61zZtaHJDA@mail.gmail.com>
 <HE1PR06MB40112032B360DE217C939FB3AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB40112032B360DE217C939FB3AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 16:36:09 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Bmng7SjS7qEnZkyKik1h4iX7KcDFSC4JSN+dby2+xkwA@mail.gmail.com>
Message-ID: <CAAFQd5Bmng7SjS7qEnZkyKik1h4iX7KcDFSC4JSN+dby2+xkwA@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_003626_743791_062AFDE4 
X-CRM114-Status: GOOD (  28.66  )
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

On Tue, Oct 8, 2019 at 10:57 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-08 12:26, Tomasz Figa wrote:
> > On Tue, Oct 8, 2019 at 3:23 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> >> On 2019-10-08 05:29, Tomasz Figa wrote:
> >>> Hi Jonas,
> >>>
> >>> On Tue, Oct 8, 2019 at 3:33 AM Jonas Karlman <jonas@kwiboo.se> wrote:
> >>>> On 2019-10-07 19:45, Ezequiel Garcia wrote:
> >>>>> From: Francois Buergisser <fbuergisser@chromium.org>
> >>>>>
> >>>>> The setting of the motion vectors usage and the setting of motion
> >>>>> vectors address are currently done under different conditions.
> >>>>>
> >>>>> When decoding pre-recorded videos, this results of leaving the motion
> >>>>> vectors address unset, resulting in faulty memory accesses. Fix it
> >>>>> by using the same condition everywhere, which matches the profiles
> >>>>> that support motion vectors.
> >>>> This does not fully match hantro sdk:
> >>>>
> >>>>   enable direct MV writing and POC tables for high/main streams.
> >>>>   enable it also for any "baseline" stream which have main/high tools enabled.
> >>>>
> >>>>   (sps->profile_idc > 66 && sps->constrained_set0_flag == 0) ||
> >>>>   sps->frame_mbs_only_flag != 1 ||
> >>>>   sps->chroma_format_idc != 1 ||
> >>>>   sps->scaling_matrix_present_flag != 0 ||
> >>>>   pps->entropy_coding_mode_flag != 0 ||
> >>>>   pps->weighted_pred_flag != 0 ||
> >>>>   pps->weighted_bi_pred_idc != 0 ||
> >>>>   pps->transform8x8_flag != 0 ||
> >>>>   pps->scaling_matrix_present_flag != 0
> >>> Thanks for double checking this. I can confirm that it's what Hantro
> >>> SDK does indeed.
> >>>
> >>> However, would a stream with sps->profile_idc <= 66 and those other
> >>> conditions met be still a compliant stream?
> >> You are correct, if a non-compliant video is having decoding problems it should probably be handled
> >> on userspace side (by not reporting baseline profile) and not in kernel.
> >> All my video samples that was having the issue fixed in this patch are now decoded correctly.
> >>
> >>>> Above check is used when DIR_MV_BASE should be written.
> >>>> And WRITE_MVS_E is set to nal_ref_idc != 0 when above is true.
> >>>>
> >>>> I think it may be safer to always set DIR_MV_BASE and keep the existing nal_ref_idc check for WRITE_MVS_E.
> >>> That might have a performance penalty or some other side effects,
> >>> though. Otherwise Hantro SDK wouldn't have enable it conditionally.
> >>>
> >>>> (That is what I did in my "media: hantro: H264 fixes and improvements" series, v2 is incoming)
> >>>> Or have you found any video that is having issues in such case?
> >>> We've been running the code with sps->profile_idc > 66 in production
> >>> for 4 years and haven't seen any reports of a stream that wasn't
> >>> decoded correctly.
> >>>
> >>> If we decide to go with a different behavior, I'd suggest thoroughly
> >>> verifying the behavior on a big number of streams, including some
> >>> performance measurements.
> >> I agree, I would however suggest to change the if statement to the following (or similar)
> >> as that should be the optimal for performance reasons and match the hantro sdk.
> >>
> >> if (sps->profile_idc > 66 && dec_param->nal_ref_idc)
> > Sorry for my ignorance, but could you elaborate on this? What's the
> > meaning of nal_ref_idc? I don't see it being checked in the Hantro SDK
> > condition you mentioned earlier.
>
> My somewhat limited understanding of h264 spec is that nal_ref_idc should be 0 for non-reference field/frame/pictures
> and because of this there should not be any need to write motion vector data as the field/frame should not be referenced.
>
> My base for the hantro sdk code is the imx8 imx-vpu-hantro package and it uses (simplified):
>   SetDecRegister(h264_regs, HWIF_WRITE_MVS_E, nal_ref_idc != 0)
> for MVC there is an additional condition.

Aha, completely makes sense. Thanks for clarifying.

Best regards,
Tomasz

>
> Regards,
> Jonas
>
> >
> >> Regards,
> >> Jonas
> >>
> >>> Best regards,
> >>> Tomasz
> >>>
> >>>> Regards,
> >>>> Jonas
> >>>>
> >>>>> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> >>>>> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> >>>>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >>>>> ---
> >>>>> v2:
> >>>>> * New patch.
> >>>>>
> >>>>>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
> >>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>>>> index 7ab534936843..c92460407613 100644
> >>>>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>>>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>>>> @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
> >>>>>       if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
> >>>>>               reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
> >>>>>       reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
> >>>>> -     if (dec_param->nal_ref_idc)
> >>>>> +     if (sps->profile_idc > 66)
> >>>>>               reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
> >>>>>
> >>>>>       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
