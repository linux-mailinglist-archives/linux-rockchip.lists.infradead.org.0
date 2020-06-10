Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9439E1F53B8
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 13:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC1Pm1lYvVzBvVRsek1oeYvYH+7/9dvIOr7RuhEXebc=; b=Z8Y0CbY8u0lZKt
	h6D3DYBIQKHr2S30b4jYvPX+FDvJoizoI/2We30aohdFcGGFIUj0tj8M19yzeAbDlokbyOPphLr72
	I534wIhSivjtPGz9Mx0rgkDOakc1alP1TTiTD3JARp1foUbDabC6DMIQJ5EDkz3uJyWi+u8MNK7vw
	tlJBlKIXxUkQnoRqaGkV+9KxdLJdmJnqcEZSFeLZR5SZZT2l67vW5tgCNJ+lyVAImvMOlfLwVOwBu
	A62VS4Wgh+7rz97eJWlo0d9lD2KZKtbVhbcsWqb5e4laBGsCYJiH4uvl5OvfFnO9JCQUY7bDlINx5
	0XcuyNjvVhA6sgvOn67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiz9x-0005yV-1i; Wed, 10 Jun 2020 11:44:45 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiz9t-0005y7-D2
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 11:44:42 +0000
Received: by mail-ej1-x642.google.com with SMTP id p20so2159903ejd.13
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 04:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w1lWW7yd5ssNKWZABsgT1qB2jqQjtV579wcoYiy0844=;
 b=DIq0bvpIpZrBB30iJOgdV3f9dC7tK5Tae8WSaK2wS1oXilKL+HnVuzjnfQ59ZvOYMt
 5CN9umhDPRU4+SONf8akh4waoKVTOkHs2hIVQN2/nKbtBaMbBXWJbwVBsyig+Lh43wB+
 z/qg799DPA9DggZ9E0Q8ViA+VNVBXYRnW0wGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w1lWW7yd5ssNKWZABsgT1qB2jqQjtV579wcoYiy0844=;
 b=HjlHpFnDReJbG+ijDGSS51GYwH+SbA/EUYT9JUfE4hZSZKcdnKRIz/7I7jDlo35Cm+
 4DSRl3MXr3SwoZVnewao0RvgCnlZYPH1wp/CeYaXLtQRIHucdGn80h00352tOatLnkm4
 XM8A6SmCMGKO4M+IEKV1ZVDonbVRoJGDvR8YScj/tBowTWc3i0f8mhEikYEru2ZZO71T
 HGJz/IYUGWXj0qTn8U70FmpYnWxzv46GXRFXjjZ2rYZv6TiLIjzmiOxMTAvQE8nwkXQd
 hfQKIrKtJxZOmCfFUi8db6jLk9f7VOUSVl6D04bMJEcRG+h+59/ccw5FVGIxy67sdZtl
 EfpQ==
X-Gm-Message-State: AOAM531gz5xXjBFFcQv0E5mtK5CfQzPgkpiH8fJywb2W6F6UE4LsxugT
 xQHG8yKjDfvDgHKxPYu0M8D1tH4Ljc7okB2g7Dfte/8tFpc=
X-Google-Smtp-Source: ABdhPJyShQrMQxohGQTel1Zv8IrOHDGaPanKyWbSatXnxOFojIRH4vqjnt3xGV7p1XvSZTEV2b73uBuyyHU78x1kbaY=
X-Received: by 2002:a17:906:470c:: with SMTP id
 y12mr3067619ejq.336.1591789478672; 
 Wed, 10 Jun 2020 04:44:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
 <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
In-Reply-To: <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 10 Jun 2020 17:14:26 +0530
Message-ID: <CAMty3ZAFB8twYFa7qUtQSYDQ-=C63-kaq9ezmy1bebE3WZbv6A@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_044441_442975_6D66AA8A 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 8:08 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-06-09 15:01, Jagan Teki wrote:
> > SDHCI HISPD bits need to be configured based on desired mmc
> > timings mode and some HISPD quirks.
> >
> > So, handle the HISPD bit based on the mmc computed selected
> > mode(timing parameter) rather than fixed mmc card clock
> > frequency.
> >
> > Linux handle the HISPD similar like this in below commit,
> >
> > commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")
> >
> > This eventually fixed the mmc write issue observed in
> > rk3399 sdhci controller.
> >
> > Bug log for refernece,
> > => gpt write mmc 0 $partitions
> > Writing GPT: mmc write failed
> > ** Can't write to device 0 **
> > ** Can't write to device 0 **
> > error!
> >
> > Cc: Kever Yang <kever.yang@rock-chips.com>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - collect Jaehoon R-b
> >
> >   drivers/mmc/sdhci.c | 23 +++++++++++++++--------
> >   1 file changed, 15 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> > index 92cc8434af..280b8c88eb 100644
> > --- a/drivers/mmc/sdhci.c
> > +++ b/drivers/mmc/sdhci.c
> > @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
> >                       ctrl &= ~SDHCI_CTRL_4BITBUS;
> >       }
> >
> > -     if (mmc->clock > 26000000)
> > -             ctrl |= SDHCI_CTRL_HISPD;
> > -     else
> > -             ctrl &= ~SDHCI_CTRL_HISPD;
> > -
> > -     if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> > -         (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
> > -             ctrl &= ~SDHCI_CTRL_HISPD;
> > +     if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
>
> Should that be "&&" rather than "||"? Otherwise this will always
> evaluate to true unless *both* quirks are set, which isn't equivalent to
> the check being removed above.

Correct, thanks for the catch. I have updated ib v3.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
