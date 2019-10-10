Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A1AD21A2
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 09:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+k1/DaXwZo1kcF9kaVE2/VqknCdEg80wv170K5UfeA=; b=KybXaWw4ZxWh+e
	ivcgvW3pUUNCXfEMzIULGn6W2LHIzZW6tXdOkvqh613uHX6yc2H86KS/D/E5DFPRyRHU4k5SJn9+x
	fbaqsAG6K3j1Xn4oA9LNQra4hec41qXCOFIJ92RekBPVNUOnjE1rtKxdBOM90nBaZWx7vM706nzzl
	R8cJ7MQAc0nBt6XAB7OJezgWOoCWaKhxxvbAsqv+P3ALrsqe4dVrBO9akJT+Cv+h1047zcqHsPDho
	kZU+YefAyNUMd3fs9yrP6JenHZXfh/I2tNL0Ljhmv2BecxZ4bGycGbaak1FURRkDkOGdgDBqfWOB4
	IzcOCvIuzhiOZuT0bQZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISrw-0000vZ-86; Thu, 10 Oct 2019 07:28:16 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISrs-0000uW-Lc
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 07:28:14 +0000
Received: by mail-ed1-x541.google.com with SMTP id a15so4505650edt.6
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 00:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vJlsoh59oqAW/FaeFtNhF8aeiLWws7tRN/rM3DPOGVk=;
 b=c456C2yYsszcTskT+OjzXqm9fVBu3NJ5qlbw7ZUpE1S9D86PePnNay+vuANzmvUm92
 upiwGqr0jcyA9imn8XkWzMB3rUlysShx8nSJvJZ33ARM0S4QGBjMkBg5Rl/59wXkViik
 nvCry4o/SQdvSs13kRgdKD0hN8VZvijYv6jQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vJlsoh59oqAW/FaeFtNhF8aeiLWws7tRN/rM3DPOGVk=;
 b=fxCMFfuq4GFHRjyZJXpCdbM/bWJH2VGCMUXHZuE94STTiSYoZANxwBf/B3P8yXH3no
 gPSRFniK1NznUfoAr7Gc359kpIhDERw6LRAlEzYlcrMyKOId0p55DHR2obDxMBRviPKj
 nRsR6EG18gXRgLrB//fXZdPP9s39+StpD53sA2AwxcmBhJymHbWfYMfIc2HMoD8fmVoR
 r7Z1Q+wN1XXPzVrjvY7pLnmBo/PqF+JT0fTudeJF1Y42UbbX8sn/PzMI79nngS1n5/Yg
 EH00M5bXnQpYcKMqFXwwQbJMVL4b1bzsM7sQDwo68CUZBFEusozWuovB+2DHcUuKB+v/
 Uq6A==
X-Gm-Message-State: APjAAAX45KEpFYwcwC/T/38FsF0N5GtOki8dfyv8Ec0gxHl7pdLa+VES
 FGIyAXCRJjTpspqfs7R+kY5GI9CV2ZzFzg==
X-Google-Smtp-Source: APXvYqyX5dh2WdXB2C6yYFcPeQ33aoO2rVLgzRffPfyP1okUy5TF2EKDXX6b4yz5+DJe/GYNm6jQaw==
X-Received: by 2002:a50:ed0b:: with SMTP id j11mr6890449eds.50.1570692490431; 
 Thu, 10 Oct 2019 00:28:10 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id 60sm779162edg.10.2019.10.10.00.28.09
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Oct 2019 00:28:09 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id z9so6435278wrl.11
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 00:28:09 -0700 (PDT)
X-Received: by 2002:adf:fc42:: with SMTP id e2mr7509472wrs.100.1570692489004; 
 Thu, 10 Oct 2019 00:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
 <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
 <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <HE1PR06MB4011D0189027292BD1107CAFAC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011D0189027292BD1107CAFAC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 16:27:56 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C4nH1YmrWy3b281By2ER=SCMYu6NqE=ObAgrq4Kg+yxg@mail.gmail.com>
Message-ID: <CAAFQd5C4nH1YmrWy3b281By2ER=SCMYu6NqE=ObAgrq4Kg+yxg@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_002812_710307_28ABDC92 
X-CRM114-Status: GOOD (  23.41  )
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
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 5:39 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-08 16:12, Jonas Karlman wrote:
> > On 2019-10-08 15:53, Tomasz Figa wrote:
> >> On Tue, Oct 8, 2019 at 10:35 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >>> On Tue, Oct 8, 2019 at 7:42 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >>>> On Tue, Oct 8, 2019 at 3:31 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> >>>>> On 2019-10-08 07:27, Tomasz Figa wrote:
> >>>>>> Hi Ezequiel, Jonas,
> >>>>>>
> >>>>>> On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >>>>>>> From: Jonas Karlman <jonas@kwiboo.se>
> >>>>>>>
> >>>>>>> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> >>>>>>> change frmsize max_width/max_height to match TRM.
> >>>>>>>
> >>>>>>> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> >>>>>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> >>>>>>> ---
> >>>>>>> v2:
> >>>>>>> * No changes.
> >>>>>>>
> >>>>>>>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
> >>>>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>>>>>>
> >>>>>>> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >>>>>>> index 6bfcc47d1e58..ebb017b8a334 100644
> >>>>>>> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >>>>>>> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >>>>>>> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
> >>>>>>>                 .max_depth = 2,
> >>>>>>>                 .frmsize = {
> >>>>>>>                         .min_width = 48,
> >>>>>>> -                       .max_width = 3840,
> >>>>>>> +                       .max_width = 4096,
> >>>>>>>                         .step_width = H264_MB_DIM,
> >>>>>>>                         .min_height = 48,
> >>>>>>> -                       .max_height = 2160,
> >>>>>>> +                       .max_height = 2304,
> >>>>>> This doesn't match the datasheet I have, which is RK3288 Datasheet Rev
> >>>>>> 1.4 and which has the values as in current code. What's the one you
> >>>>>> got the values from?
> >>>>> The RK3288 TRM vcodec chapter from [1], unknown revision and date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder.
> >>>>>
> >>>>> I can also confirm that one of my test samples (PUPPIES BATH IN 4K) is 4096x2304 and can be decoded after this patch.
> >>>>> However the decoding speed is not optimal at 400Mhz, if I recall correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3288.
> >>>>>
> >>>>> I am not sure if I should include a v2 of this patch in my v2 series, as-is this patch do not apply on master (H264_MB_DIM has changed to MB_DIM in master).
> >>>>>
> >>>>> [1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf
> >>>> I checked the RK3288 TRM V1.1 too and it refers to 3840x2160@24fps as
> >>>> the maximum.
> >>>>
> >>>> As for performance, we've actually been getting around 33 fps at 400
> >>>> MHz with 3840x2160 on our devices (the old RK3288 Asus Chromebook
> >>>> Flip).
> >>>>
> >>>> I guess we might want to check that with Hantro.
> >>> Could you check the value of bits 10:0 in register at 0x0c8? That
> >>> should be the maximum supported stream width in the units of 16
> >>> pixels.
> >> Correction: The unit is 1 pixel and there are additional 2 most
> >> significant bits at 0x0d8, 15:14.
> > I will check this later tonight when I have access to my devices.
>
> My Asus Tinker Board S (RK3288-C) is reporting support for 0x780 / 1920 pixels:
>
> 0x000  (0) = 0x67313688
> 0x0c8 (50) = 0xfbb56f80
> 0x0d8 (54) = 0xe5da0000
>

Looks like that register doesn't work very well in Rockchip's
implementation... Thanks for checking anyway.

I guess we can allow 4096x2304 for the time being and see what happens.

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
