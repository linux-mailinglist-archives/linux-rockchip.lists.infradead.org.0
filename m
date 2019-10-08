Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7FECFBA3
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 15:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODLAnoNHiIaboK32VoJwxPs7vOZ1mdxHz27BR0yCby8=; b=hRs8sdJC6qpffg
	B5KOxZFw/tRLGaRrNOPhScjfPngHw+YW4PNIcYACHc5rzsuyAoHAnoJmxwGa8f/LzomDXkA+VfH/d
	K/t68uoqDkZ6ExS3oFtYxKHDuet1MIPoulhIxRYYi7rwoMpPxOBBDZjHnEA00lZilXcuM8H9LBwLE
	uYGvLYbNZunqrc24tAWWrQ3eePgVQzJD03bNT8JNZ7A/o2yAVVQOFJiqxveZJU+Izbg1h4xouRmA9
	xUIRRm+Ca5u4rOB9ahuMB0CaV/FFYpMWrNhhxoTegUPkcej4TDQ/ID/43DnjsPWgV4KvbLHQ9wIrO
	km3bYgCkXY8NAgBNAkZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHpwQ-0005ij-QN; Tue, 08 Oct 2019 13:54:18 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHpwN-0005WA-4q
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 13:54:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id r4so15700902edy.4
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VQS/Qj2ND8v944kFO5rho9xg1dVm9pVNi7V4CDUfWyo=;
 b=WzzmG5vYA/2jMSBgIPMlnot27v5BdCPtHn8dUcldsLNmzJrDs1r/CDiobI8kzsuahX
 84BU8uDMNsgr86N++x4zaqtUNPgLDGCHcqp55fqmZmIu1+gLHdLjvkW648Q2NBomyLHK
 97F2T3tCBI6HZ31MShEgJssW7SZwgeQ2rYDz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VQS/Qj2ND8v944kFO5rho9xg1dVm9pVNi7V4CDUfWyo=;
 b=GINwqkxb/7m2e/Ogv1fv5TDHu9VBR4nZgDO+0TW6tUQuNp5raHaqcO4uvc0cwgEeCd
 XVPQnt74+hMxQiSdLX3XJxayEn6YEWTJw2uj9H/2JHS5urAopvg2UPsJv+NSpDidY/0j
 RJNoT04Y68iUn6CtfV3xja8ncBQII4LThfN8/74mMK/lgs115GPHwTxLuKpwxbbyE4g6
 sihjxi1S5CCYTjb94j5I0wwZBcW8txE+2WkkXVPyN8HfWEH2ah5akT74zX4SZwfZkMv1
 RuodH0Mkc6ZWzd5OF9YtcTD3glgpFw066Dp7OlA2+SZpjKlwNrjCzmFO7ATCwDWtOkmz
 R1EQ==
X-Gm-Message-State: APjAAAW/tAOcWGFitRVdPSE6wNoAGUfUeXrvYIxvi2Z77ZwY7LNxQlTe
 xUgX0dk/yxlBj9WuDVhewX7WqT7f1stxtA==
X-Google-Smtp-Source: APXvYqyMIyeBcpKWMy3aAratjRCe8EDx9DAwn1MGnsSB0IQUfsfuxeXE8rPgdiqgBeVJqKmSay7K+Q==
X-Received: by 2002:aa7:d2c4:: with SMTP id k4mr33184553edr.169.1570542853308; 
 Tue, 08 Oct 2019 06:54:13 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id k20sm3823895eds.66.2019.10.08.06.54.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 06:54:10 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id r19so3266526wmh.2
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 06:54:10 -0700 (PDT)
X-Received: by 2002:a1c:2e50:: with SMTP id u77mr4189007wmu.64.1570542850077; 
 Tue, 08 Oct 2019 06:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
In-Reply-To: <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 8 Oct 2019 22:53:59 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
Message-ID: <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_065415_221334_B7B0BEB2 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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

On Tue, Oct 8, 2019 at 10:35 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Tue, Oct 8, 2019 at 7:42 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > On Tue, Oct 8, 2019 at 3:31 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> > >
> > > On 2019-10-08 07:27, Tomasz Figa wrote:
> > > > Hi Ezequiel, Jonas,
> > > >
> > > > On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > > >> From: Jonas Karlman <jonas@kwiboo.se>
> > > >>
> > > >> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> > > >> change frmsize max_width/max_height to match TRM.
> > > >>
> > > >> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> > > >> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > > >> ---
> > > >> v2:
> > > >> * No changes.
> > > >>
> > > >>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
> > > >>  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >>
> > > >> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > >> index 6bfcc47d1e58..ebb017b8a334 100644
> > > >> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > >> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > >> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
> > > >>                 .max_depth = 2,
> > > >>                 .frmsize = {
> > > >>                         .min_width = 48,
> > > >> -                       .max_width = 3840,
> > > >> +                       .max_width = 4096,
> > > >>                         .step_width = H264_MB_DIM,
> > > >>                         .min_height = 48,
> > > >> -                       .max_height = 2160,
> > > >> +                       .max_height = 2304,
> > > > This doesn't match the datasheet I have, which is RK3288 Datasheet Rev
> > > > 1.4 and which has the values as in current code. What's the one you
> > > > got the values from?
> > >
> > > The RK3288 TRM vcodec chapter from [1], unknown revision and date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder.
> > >
> > > I can also confirm that one of my test samples (PUPPIES BATH IN 4K) is 4096x2304 and can be decoded after this patch.
> > > However the decoding speed is not optimal at 400Mhz, if I recall correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3288.
> > >
> > > I am not sure if I should include a v2 of this patch in my v2 series, as-is this patch do not apply on master (H264_MB_DIM has changed to MB_DIM in master).
> > >
> > > [1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf
> >
> > I checked the RK3288 TRM V1.1 too and it refers to 3840x2160@24fps as
> > the maximum.
> >
> > As for performance, we've actually been getting around 33 fps at 400
> > MHz with 3840x2160 on our devices (the old RK3288 Asus Chromebook
> > Flip).
> >
> > I guess we might want to check that with Hantro.
>
> Could you check the value of bits 10:0 in register at 0x0c8? That
> should be the maximum supported stream width in the units of 16
> pixels.

Correction: The unit is 1 pixel and there are additional 2 most
significant bits at 0x0d8, 15:14.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
