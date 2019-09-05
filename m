Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23813A9BD9
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 09:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u41psF89GE4dUkmqlFkdqdTaXEIyb4zSuZRmWtP6Nnk=; b=OQ4wAsAzoNqBUM
	akdDsXp04ZzDZzi8R3VYRBRGxYYGksn7d/hMwNkxkPtBpmWbKtRrI4nqZorszfGWHDnINmX/CiylK
	UvUBBDAIoU5N4b1HoimPJyOtOwq+HIpNE1RypyjhENsXhH6Cw18QmBNp2DXYR0w0n4+xm8YSZ/V+y
	LKqUN8zXfDCbutv3rPLRYvHCa0MtL3KBhmtvLQJ6TvpYvLdGI7iPN0eJAv1NURnOWyay4YH+g7Nd8
	RFzfZ0ATIUGiv3EDhHznsiGRp7zNMI+qxpxyf39GUhKdex6U78ivsJUVnDdrCc8GewBQDNbv5P7H/
	PozCzOBGDerDQy1DvDOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mEq-0005ma-Jp; Thu, 05 Sep 2019 07:31:28 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mE9-0005cN-Sj
 for linux-rockchip@lists.infradead.org; Thu, 05 Sep 2019 07:30:51 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b11so905692vsq.2
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Sep 2019 00:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IQ0/S8VZ4qMRw3JK6ZvbKs3F/tCm6SUhf9G5EivQXdc=;
 b=UYM/4pTaMPGMdyfvPuMOZOCgbDH/G0Ni+FJW6pxskSIFTL+aEsPWoZPKHIpZVYyllZ
 8yTuO/J7O03xjHJca6yzh94hK3SAWnbDyuL+c+5JQ7cYVyukh/LoPPlGshjdY95pf3Lq
 S8qSUsurOi3OQJ6x1qVP+pXjj73B20oAABO7B9nw8tC3RGD2F+gvDbok1aUi+f3amBTZ
 KfR7KrQ1rWUfmzOSuuqdErJ2r97mXqWON3aUo/7cZRpLy2zOHTDluZtK5/EOLt0pUHXg
 w5llS0QPgMmCjT94tvyi6jNoJWFq4UBg0G4nVD6BQE2pyUuDklWOeY1R4pAGkpcsGu5W
 8lzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IQ0/S8VZ4qMRw3JK6ZvbKs3F/tCm6SUhf9G5EivQXdc=;
 b=m1BOt9ygYdebV5SCFZRWjpk/ApuzLE6aDD/XxN3JgdyQgdt22is+RT1+he+c1Zf03i
 A+i/B4yelGWDxeJz5YX0lN9q3Hgu/beBAp/838UEPAcvW7aD24CtqA6D3idCQlw6C6ZZ
 KMbgdHOcW8B7XJi4iX4fo1ujQd7UnZskhK5G1JgAoRCjkx7jzDGNzunKNnDEEWGgUAk6
 //M0CPd2jD51OEPlaZ6HWVQH/rwO4HQjWvcJ3lIdPfRHo1X4F4x4R2AgBw5YIc57QG8f
 x1d5SkT2JE0bYo8wmzsC4mkmIzqVOqW0QpCrA0r6ZXo90Ql/Oq1x2CNpkdny7aVud5Mg
 MsHg==
X-Gm-Message-State: APjAAAWh3J7MhplGP9Ukc2xLKl4Qw3/jT9hy0/avMn5wnXBuT23eGRHy
 c0JEGXa/r/c3ftQQDFmMVpwoxDQswd3zss/0vsgvlA==
X-Google-Smtp-Source: APXvYqxllVsWEAV7tGPP3LJ4W5SKkNdoOGohNtI9UJQVSXkxZfNZ3BhfODbGFkD56GQJlowJrS1LQqlNWZhtmrW118o=
X-Received: by 2002:a67:e2cf:: with SMTP id i15mr969126vsm.165.1567668644030; 
 Thu, 05 Sep 2019 00:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
 <CAD=FV=Vwmj=LehhLCN5OBbEfNNXp9gULLYRoVV86HtqZBxvEjw@mail.gmail.com>
In-Reply-To: <CAD=FV=Vwmj=LehhLCN5OBbEfNNXp9gULLYRoVV86HtqZBxvEjw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Sep 2019 09:30:08 +0200
Message-ID: <CAPDyKFqbr9Q-aDOf3t+nftw=a1vR95yHHo=-ieoT1fnQ1S-HCQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Using 180 sample phase if all
 phases work
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_003047_160364_4C6168BA 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Linux MMC List <linux-mmc@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 17:44, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Tue, Sep 3, 2019 at 7:28 PM Shawn Lin <shawn.lin@rock-chips.com> wrote:
> >
> > default_sample_phase is used to make sure the cards are enumurated
> > properly and will be set to 0 if not assigned. However, the sample
> > phase should depends on the tuned phase if running higher clock rate.
> > If all phases work but default_sample_phase isn't assigned, driver
> > set sample phase to 0 for this case, which isn't the best choice,
> > because we always expect to set phase to the middle of window. To
> > solve the following continually issues we have seen in the test, we
> > need set phase to the more stable one, 180, if all phases work.
> >
> > mmcblk1: error -84 transferring data, sector 1735064, nr 8, cmd
> > response 0x900, card status 0xb00
> > mmcblk1: retrying using single block read
> > dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
> > mmcblk1: retrying because a re-tune was needed
> >
> > .....
> >
> > mmcblk1: error -84 transferring data, sector 1728672, nr 248, cmd
> > response 0x900, card status 0xb00
> > mmcblk1: retrying using single block read
> > dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
> >
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > ---
> >
> >  drivers/mmc/host/dw_mmc-rockchip.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> > index d4d0213..9ef9723 100644
> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> > @@ -209,9 +209,8 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
> >         }
> >
> >         if (ranges[0].start == 0 && ranges[0].end == priv->num_phases - 1) {
> > -               clk_set_phase(priv->sample_clk, priv->default_sample_phase);
> > -               dev_info(host->dev, "All phases work, using default phase %d.",
> > -                        priv->default_sample_phase);
> > +               clk_set_phase(priv->sample_clk, 180);
> > +               dev_info(host->dev, "All phases work, using phase 180.");
>
> This violates what is documented in the device tree bindings, which says:
>
> * rockchip,default-sample-phase: The default phase to set ciu-sample at
>   probing, low speeds or in case where all phases work at tuning time.
>   If not specified 0 deg will be used.
>
> Specifically:
> * You don't use "default-sample-phase" at all when all phases pass.
> * You don't default to 0 if not specified.
>
> Personally I think we could change the bindings to say: "If not
> specified 180 deg will be used" and then change the code to do the
> same.  If we wanted to keep the "stable ABI" that is device tree we
> could also just do the "180 default" for new SoCs and then manually
> add the device tree fragment to all old dts files.
>

Thanks for spotting this! Let me drop the patch and wait for a new
version from Shawn.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
