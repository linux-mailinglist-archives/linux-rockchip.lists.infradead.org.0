Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FF7CF757
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 12:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTG2hoinAX8PYzLXqGaP9ipdN5evjYBov1cUzGzxxyE=; b=TuWdPMCBdPxEFj
	amQwvjZJeFaeG0VieqYhQga2SKzyR3+F+3suhunsJ/+X5sF3zWGX/5l/OErdGP0K02v8FKkc1Ce9u
	77ZuyJuOt1ZPLVMuGoL4nOXQt0iB0uHCnhl5wQ8spFE1TZIBi1cpFPuIC+kajQ4kxeOzes5ZhYMAT
	OeGyQN1HPjaPs0Fp95jSKlYT/WlczOyIfvQYntYiqLJde19gE+1pH2wdScBcTepsqg16Rp0ZSQDsr
	zqET+B2igG1GgIt2ecCS85MviKs+16NrXekfs+DHOkHCzh5WyZGOXu7zN5v3aYcXqK1aMW4DqnjJw
	w5UHUU0iRfyn3sKTwXUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmwn-0004pO-Qz; Tue, 08 Oct 2019 10:42:29 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmwk-0004oR-5u
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 10:42:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id p10so15215794edq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 03:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GlbSEHsat/uhnrc6ji92FO04rhx1+BWt+c9sCRWvAxU=;
 b=Nz5DCDDhGBHxplALcQZGaCTG5mV3Z4jpVK314QjWtvnqS7b/x79n6UlR6EKH0pSuUQ
 Ta/sGeucBtoOKc+GGpsFuh0ci0OIaG75nGDsmjab/9c8JpYDC99GMBB80ipOn3+cbiHW
 Dl8tvsmwndue4YZ60xP4Q3cHJpGZlDwOeSr0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlbSEHsat/uhnrc6ji92FO04rhx1+BWt+c9sCRWvAxU=;
 b=f0Co1bR4fwpQtOOcreqc+3IDWBGlOcuAioR4+IXz9/5aTSIBKUXejMBTjv9xZ3peH3
 samg6UcuXqzWK13tJ+oE/ZP9lTnzjOM5fQzYUjoP/M5d+zr0g+VpjOvVyyflaPrK0rH5
 9v+1jRruyqzMPblGqyTbJIWikB/lE8XmzVB0fhXKJrtSAZ/CVHX77oDRf5jbJsxMuYGr
 Zu80RvuJ1fFrYITsOj28juY5yY6SFgQ/IulKUITgnigii1ypnW5/F9m1PbjUhkFlYQdr
 nzZ5U0U78crPYfkjfj5uh9ouv3rxX0IDbvfbNLZhw4BBiBwNrjP9oszYZ6ceywqygY56
 svyw==
X-Gm-Message-State: APjAAAVbFNcqJzk/BnDeXCSHov5nYcRePoe4UI8J72U8xFQsP8ygemDC
 47aXOegsoQVATX7wurNH9F8jnFvCnvmIGA==
X-Google-Smtp-Source: APXvYqye/9Uf12n1tgwnhFKwWU1f4uokjQ3MTMrWX0fL+lMLbqNaYBmFVIB8sxtP1MOTbMS7l2G/pw==
X-Received: by 2002:a50:c3c7:: with SMTP id i7mr33331654edf.138.1570531342149; 
 Tue, 08 Oct 2019 03:42:22 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id br14sm2253629ejb.15.2019.10.08.03.42.20
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 03:42:21 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id h4so10079738wrv.7
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2019 03:42:20 -0700 (PDT)
X-Received: by 2002:a5d:4b47:: with SMTP id w7mr20090970wrs.7.1570531340404;
 Tue, 08 Oct 2019 03:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 8 Oct 2019 19:42:09 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
Message-ID: <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_034226_244986_BC83AA6B 
X-CRM114-Status: GOOD (  19.57  )
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

On Tue, Oct 8, 2019 at 3:31 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-08 07:27, Tomasz Figa wrote:
> > Hi Ezequiel, Jonas,
> >
> > On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >> From: Jonas Karlman <jonas@kwiboo.se>
> >>
> >> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
> >> change frmsize max_width/max_height to match TRM.
> >>
> >> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
> >> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> >> ---
> >> v2:
> >> * No changes.
> >>
> >>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >> index 6bfcc47d1e58..ebb017b8a334 100644
> >> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
> >>                 .max_depth = 2,
> >>                 .frmsize = {
> >>                         .min_width = 48,
> >> -                       .max_width = 3840,
> >> +                       .max_width = 4096,
> >>                         .step_width = H264_MB_DIM,
> >>                         .min_height = 48,
> >> -                       .max_height = 2160,
> >> +                       .max_height = 2304,
> > This doesn't match the datasheet I have, which is RK3288 Datasheet Rev
> > 1.4 and which has the values as in current code. What's the one you
> > got the values from?
>
> The RK3288 TRM vcodec chapter from [1], unknown revision and date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder.
>
> I can also confirm that one of my test samples (PUPPIES BATH IN 4K) is 4096x2304 and can be decoded after this patch.
> However the decoding speed is not optimal at 400Mhz, if I recall correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3288.
>
> I am not sure if I should include a v2 of this patch in my v2 series, as-is this patch do not apply on master (H264_MB_DIM has changed to MB_DIM in master).
>
> [1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf

I checked the RK3288 TRM V1.1 too and it refers to 3840x2160@24fps as
the maximum.

As for performance, we've actually been getting around 33 fps at 400
MHz with 3840x2160 on our devices (the old RK3288 Asus Chromebook
Flip).

I guess we might want to check that with Hantro.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
