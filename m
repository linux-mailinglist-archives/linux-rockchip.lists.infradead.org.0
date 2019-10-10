Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F88ED219D
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 09:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebkc6YL33lS6xebTENDeD0+dlS7B3PjwXzSBbc64MVI=; b=a9Y8a7UE+AA0Qv
	w9GDb+IcdAkUf5OsXTAJsknh5HE0nKeFgxtQkaR0TrrZYpQs8vsM/r06/f4lx21+0HBvgcBj7xNRl
	DctnEnRDR5DJBCkD14x86FybGEY7BzxkAH3+73HRsjonQuj4LOhrv5FIJmcfcZrUDrVlTf3/fqkLz
	0JeW28qBQ79VKLoJtNrSBK1W7nKyFaAQaf2FANuJs8+tk2jWI6PgsTxZjoC3/iD0eKirmtHLWaa2+
	8eDmpOSysMiz0lPC6qhbzKkfLsG9tXe6QuqUVcgsjon4lSNZzQX2kJ0oTmyzRwri3lqCsw8LyHyKB
	SsXEMw52lr1FmHFKKEIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISo5-0007jp-CX; Thu, 10 Oct 2019 07:24:17 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISo2-0007j3-GH
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 07:24:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id t3so4464096edw.13
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 00:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q3z5xsYuGI9Tu3hogsHQpREAbRY7gTtghNiSpU/J3oU=;
 b=aTpMvin4UR3Y+GqBZUEXUSlE/N1e1h/5CeUiSTAjWqPoyNYd3yCMpw52TAVTtJr7Rp
 H8O9IkcLedmQ5rU4UP+iCw0WxO9d6J8HB6QjuHy172SJ7kJjHHgQ9kWEHGOldZNpvJ6o
 +W3XDpcK0uPJ3Kpk+QRcObX/aRSzQdGq5OB6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q3z5xsYuGI9Tu3hogsHQpREAbRY7gTtghNiSpU/J3oU=;
 b=oRI39CAklb6sx5UOZ8p5ZIftGU1H5EIKa7qpfL/tITtSModjwb2SLXbGGD/qxrwl1V
 sdmy2dtloZ/we4P57FEq0SoRDwrchNjgWTXMIe6Ce2WoSUmGdx8N84pk3JrzbKZnA/lL
 SfMDEeGAFNKg3aBUX03AqCwSIHzhhIJfFVxx6gzaMoVNz35iuNFquyUT+3CRUSn8kQ0b
 hJWwXW1/cyiycWR1sI42xUk3JGsmey5J8ExQ9LDKYphyUlBW1cMKpF40TKhbNuq/09XC
 HpXAI26bGpwxfSlNqmgqaA6Dqk51n86Y3IndhgOK0pMqXuo8PaiGPnrXznXt6WLy3sxE
 CSSg==
X-Gm-Message-State: APjAAAXRZBf1iCQBNnbfbEEOH5l05fzw1a5mJFllEA80JVeWjbXz4ULW
 dn2vNuORe4HeXQeyYIUDTPx0+2p3fRff7Q==
X-Google-Smtp-Source: APXvYqwOwnk0jXj3lMiRWwJLHx2Hr9lqMVPQ9LDiFvmgGE/n4XCXy5XUYz9iPyFFKalRtH/1JeZCKA==
X-Received: by 2002:a05:6402:751:: with SMTP id
 p17mr6742488edy.161.1570692252408; 
 Thu, 10 Oct 2019 00:24:12 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id u30sm772660edd.18.2019.10.10.00.24.09
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 00:24:09 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id r19so5726700wmh.2
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 00:24:09 -0700 (PDT)
X-Received: by 2002:a1c:2e50:: with SMTP id u77mr6698598wmu.64.1570692248666; 
 Thu, 10 Oct 2019 00:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
 <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
 <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 16:23:56 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DEhHF+_oO_0ZKS1mi26hJ-JueFxXfdpyQ3ATzMW5Czaw@mail.gmail.com>
Message-ID: <CAAFQd5DEhHF+_oO_0ZKS1mi26hJ-JueFxXfdpyQ3ATzMW5Czaw@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_002414_571576_C45A7FEE 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 11:12 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-08 15:53, Tomasz Figa wrote:
> > On Tue, Oct 8, 2019 at 10:35 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >> On Tue, Oct 8, 2019 at 7:42 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >>> On Tue, Oct 8, 2019 at 3:31 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> >>>> On 2019-10-08 07:27, Tomasz Figa wrote:
> >>>>> Hi Ezequiel, Jonas,
> >>>>>
> >>>>> On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >>>>>> From: Jonas Karlman <jonas@kwiboo.se>
> >>>>>>
> >>>>>> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> >>>>>> change frmsize max_width/max_height to match TRM.
> >>>>>>
> >>>>>> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> >>>>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> >>>>>> ---
> >>>>>> v2:
> >>>>>> * No changes.
> >>>>>>
> >>>>>>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
> >>>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>>>>>
> >>>>>> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >>>>>> index 6bfcc47d1e58..ebb017b8a334 100644
> >>>>>> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >>>>>> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >>>>>> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
> >>>>>>                 .max_depth = 2,
> >>>>>>                 .frmsize = {
> >>>>>>                         .min_width = 48,
> >>>>>> -                       .max_width = 3840,
> >>>>>> +                       .max_width = 4096,
> >>>>>>                         .step_width = H264_MB_DIM,
> >>>>>>                         .min_height = 48,
> >>>>>> -                       .max_height = 2160,
> >>>>>> +                       .max_height = 2304,
> >>>>> This doesn't match the datasheet I have, which is RK3288 Datasheet Rev
> >>>>> 1.4 and which has the values as in current code. What's the one you
> >>>>> got the values from?
> >>>> The RK3288 TRM vcodec chapter from [1], unknown revision and date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder.
> >>>>
> >>>> I can also confirm that one of my test samples (PUPPIES BATH IN 4K) is 4096x2304 and can be decoded after this patch.
> >>>> However the decoding speed is not optimal at 400Mhz, if I recall correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3288.
> >>>>
> >>>> I am not sure if I should include a v2 of this patch in my v2 series, as-is this patch do not apply on master (H264_MB_DIM has changed to MB_DIM in master).
> >>>>
> >>>> [1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf
> >>> I checked the RK3288 TRM V1.1 too and it refers to 3840x2160@24fps as
> >>> the maximum.
> >>>
> >>> As for performance, we've actually been getting around 33 fps at 400
> >>> MHz with 3840x2160 on our devices (the old RK3288 Asus Chromebook
> >>> Flip).
> >>>
> >>> I guess we might want to check that with Hantro.
> >> Could you check the value of bits 10:0 in register at 0x0c8? That
> >> should be the maximum supported stream width in the units of 16
> >> pixels.
> > Correction: The unit is 1 pixel and there are additional 2 most
> > significant bits at 0x0d8, 15:14.
>
> I will check this later tonight when I have access to my devices.
> The PUPPIES BATH IN 4K (4096x2304) sample decoded without issue using rockchip 4.4 BSP kernel and mpp last time I tested.
>
> The vcodec driver in 4.4 BSP kernel use 300/400 Mhz as default clock rate and will change to 600 Mhz when width is over 2560, see [1]:
>   raise frequency for resolution larger than 1440p avc
>
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/video/rockchip/vcodec/vcodec_service.c#L2551-L2570

How comes it works for us well at 400 MHz? Better DRAM? Differences in
how Vcodec BSP handles the hardware that somehow make the decoding
slower?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
