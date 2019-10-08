Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0EECF6FE
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 12:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8rQGXk3s8zoQy+H099e3girgLFDTAhJ/zBKzud8ooc=; b=GQ2Oe7N2mYWgLr
	h2IlUrhP1hGPATRGg82DFPry0Kio0XS0pgPg0LQxJk958ecasTbTJoFdoCGi7nr/g6jHiQE5R/btA
	oFAlsZkihkel6KbGR9JtUBEgNPh0/fyDV1DZs0rR08MhIPA45OcfwFWlOCWVM55O6Rm4SNRyZSPZG
	hhZWvi85bVUOMAng4s0nRzmUYwxAI7gTOODBpak6JP95Z/INyWscZhQ4gtmMPXtuf3MJEE4LyVaT7
	UgMXBXC7Quo6ofsvGjRrdQmwSYRw6Wu33CweRBw7kGiVwq/Nqc9yQJKYOzjZ0vI1SqMeU7hlIhC9Y
	1ZrCr9+UGQYls8GLJ8oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmhn-00006a-R3; Tue, 08 Oct 2019 10:26:59 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmhj-00005w-SB
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 10:26:57 +0000
Received: by mail-ed1-x541.google.com with SMTP id v8so15172266eds.2
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 03:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TuTp4qSs/ib4dWqdltJLc9xTt5QmDdIVXlg895SiimI=;
 b=anQG58BQbSDFEwGX4sXa027j9aWBAUcj+wsxH2AEo964GdrVfgqTdTeY8elwiU65O3
 QuzoQ6VdSB7i2X3m4gwA0QNl5qMpSg9Euq0ViC/EtK4kjLfBpbA9B6Xov0017C6yDHHU
 93NNIknMKE/eiFm0+EnnelPjm4r0EzvhuQJjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TuTp4qSs/ib4dWqdltJLc9xTt5QmDdIVXlg895SiimI=;
 b=iIHzToOyUk6mFq6FjPMRQZDTmBKSH1Z8I5T2DVSitzPvp6S7LclxMApirNnhQE5+Hm
 yOCIGhnr22dgPZWswHRe3GmRUabp3HJICgajoEbvx4Z1XkGlRJE1Vjdn73lcJ1Cfe4me
 sqt3uP5tUFZcyEkbQdtymGo2709WOC7dlMS+/P6be+CcEQ9SJzmgvqZwczoPvLRgsmKg
 WgasCiQckk24ZIrzxcuvQ8MaJJApIcWNPnJMp/gPiuNScySnijzGgxVCO2G/XbLAcpO+
 qyGsCHtHWZ16xQyXATjK0G2dMBtZqsKDNNVt+LW8Dok8Vp4zjncpuCuUEZ7s6slvCdLy
 t/dg==
X-Gm-Message-State: APjAAAUuqtdjtL03oVo3aUAKtp5K0wE398TSayLkM86I2PRp79DCv5eC
 oqbzrtNbE1GTH/AvSwcCQ1VIphBhvrsmVw==
X-Google-Smtp-Source: APXvYqzCDuWSrw87e54S/1pWWQ9cBQW+HlyWJSm+fB4qvnV/Kq2f6Zz72zRUsRWaJS7QIS9wBlCgfA==
X-Received: by 2002:aa7:c1d4:: with SMTP id d20mr32587532edp.223.1570530413389; 
 Tue, 08 Oct 2019 03:26:53 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id ng5sm2313174ejb.9.2019.10.08.03.26.52
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 03:26:52 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id r5so18679634wrm.12
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 03:26:52 -0700 (PDT)
X-Received: by 2002:a5d:4c45:: with SMTP id n5mr28188191wrt.100.1570530411726; 
 Tue, 08 Oct 2019 03:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com>
 <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com>
 <HE1PR06MB40111D7287970183CF6D0DD1AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB40111D7287970183CF6D0DD1AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 8 Oct 2019 19:26:39 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AqYsUJeM5tzOY3WNFRZu74k6Yst3TpxcfB61zZtaHJDA@mail.gmail.com>
Message-ID: <CAAFQd5AqYsUJeM5tzOY3WNFRZu74k6Yst3TpxcfB61zZtaHJDA@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_032655_934775_4D7B3126 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Oct 8, 2019 at 3:23 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-08 05:29, Tomasz Figa wrote:
> > Hi Jonas,
> >
> > On Tue, Oct 8, 2019 at 3:33 AM Jonas Karlman <jonas@kwiboo.se> wrote:
> >> On 2019-10-07 19:45, Ezequiel Garcia wrote:
> >>> From: Francois Buergisser <fbuergisser@chromium.org>
> >>>
> >>> The setting of the motion vectors usage and the setting of motion
> >>> vectors address are currently done under different conditions.
> >>>
> >>> When decoding pre-recorded videos, this results of leaving the motion
> >>> vectors address unset, resulting in faulty memory accesses. Fix it
> >>> by using the same condition everywhere, which matches the profiles
> >>> that support motion vectors.
> >> This does not fully match hantro sdk:
> >>
> >>   enable direct MV writing and POC tables for high/main streams.
> >>   enable it also for any "baseline" stream which have main/high tools enabled.
> >>
> >>   (sps->profile_idc > 66 && sps->constrained_set0_flag == 0) ||
> >>   sps->frame_mbs_only_flag != 1 ||
> >>   sps->chroma_format_idc != 1 ||
> >>   sps->scaling_matrix_present_flag != 0 ||
> >>   pps->entropy_coding_mode_flag != 0 ||
> >>   pps->weighted_pred_flag != 0 ||
> >>   pps->weighted_bi_pred_idc != 0 ||
> >>   pps->transform8x8_flag != 0 ||
> >>   pps->scaling_matrix_present_flag != 0
> > Thanks for double checking this. I can confirm that it's what Hantro
> > SDK does indeed.
> >
> > However, would a stream with sps->profile_idc <= 66 and those other
> > conditions met be still a compliant stream?
>
> You are correct, if a non-compliant video is having decoding problems it should probably be handled
> on userspace side (by not reporting baseline profile) and not in kernel.
> All my video samples that was having the issue fixed in this patch are now decoded correctly.
>
> >
> >> Above check is used when DIR_MV_BASE should be written.
> >> And WRITE_MVS_E is set to nal_ref_idc != 0 when above is true.
> >>
> >> I think it may be safer to always set DIR_MV_BASE and keep the existing nal_ref_idc check for WRITE_MVS_E.
> > That might have a performance penalty or some other side effects,
> > though. Otherwise Hantro SDK wouldn't have enable it conditionally.
> >
> >> (That is what I did in my "media: hantro: H264 fixes and improvements" series, v2 is incoming)
> >> Or have you found any video that is having issues in such case?
> > We've been running the code with sps->profile_idc > 66 in production
> > for 4 years and haven't seen any reports of a stream that wasn't
> > decoded correctly.
> >
> > If we decide to go with a different behavior, I'd suggest thoroughly
> > verifying the behavior on a big number of streams, including some
> > performance measurements.
>
> I agree, I would however suggest to change the if statement to the following (or similar)
> as that should be the optimal for performance reasons and match the hantro sdk.
>
> if (sps->profile_idc > 66 && dec_param->nal_ref_idc)

Sorry for my ignorance, but could you elaborate on this? What's the
meaning of nal_ref_idc? I don't see it being checked in the Hantro SDK
condition you mentioned earlier.

>
> Regards,
> Jonas
>
> >
> > Best regards,
> > Tomasz
> >
> >> Regards,
> >> Jonas
> >>
> >>> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> >>> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> >>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >>> ---
> >>> v2:
> >>> * New patch.
> >>>
> >>>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>> index 7ab534936843..c92460407613 100644
> >>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>> @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
> >>>       if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
> >>>               reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
> >>>       reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
> >>> -     if (dec_param->nal_ref_idc)
> >>> +     if (sps->profile_idc > 66)
> >>>               reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
> >>>
> >>>       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
