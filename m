Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAAF1F742B
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 08:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbFr3XlBXC2dHnXpQS406zTxEKFsPoDy0qb8om/n/tI=; b=KwDKerBbHk8rh1
	cEgQX8QqnNDpUUGaA10xTA/tD6BNWIFr/7lis7KhqejNreB4sB9rR8LIUo+aUba3c/mr5FxKHN2y8
	/KuJ3XzyjXnM13r/I4HNA/keoHbjzrqnq5VuivyufP8v1awod8IyCJBdp7oZwmQouFjm/8pIRjSj9
	hwTrBx1EJcVwykehgzW4LObNY94u/5jxkFoYIiRN8/WCOYTngcLmkZ2E5evnovx0TW19aXXDv1DZf
	3oKQvp2Hk2Djtm/ay3WM+zpFPgLVZBbUXYaCdv4kIvqkMkZV1bQ/N2/gr6mERXavG/VnDXCAl6JQ+
	OKdZi+QnlSAodpiwxdNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdXG-0001e4-BV; Fri, 12 Jun 2020 06:51:30 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdXD-0001dj-CH
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 06:51:29 +0000
Received: by mail-ed1-x541.google.com with SMTP id d15so5641212edm.10
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2020 23:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ObJuuOuZ5/Seh8KSpu9fZpaoam6IDkFHhN2T9E3INYw=;
 b=T3rrvHbKuhCzWh0JCzAUnDkKuNNKX9cY7wi+MoUYGuGkb6bbDNV+36cw93dtNxIjLl
 e0We6JlXyzUMequaoT9y5Y3QaMBFlDXYudkEsxOd1vqxEwX5Bo7+zrky2AUZDl3Us0SO
 RH6E4DtmAo47dupr0tUqQ6AG9BsEAamcZEgc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ObJuuOuZ5/Seh8KSpu9fZpaoam6IDkFHhN2T9E3INYw=;
 b=kIM/4e2Pg93YeWh34zdu4JnHtNfrikv6KcE+z33+Wg8TSWZIZUbXlI0AGSrlmBBQvC
 AbeD5VNd7bb0+CFSD8NPCMztspt1i67DT+I4cZ0f3cEdRKO3lVfvZU/lZJa3DMpZZiQ5
 SO6OIDcQbl942WWNtyKwdEK8IUH6kSwv7WaSuwM3fDf6DYfekoHgPj/Kwl24JeHWcH5L
 6rLExgVM0NhQTkjNunI8iGcCT0lz+W9bDxh94TiIi75KGbBzvVKjYVzmmrqvDTFZ00Fk
 IHSA/Tyhe/PqzxUlYOFZ0reFKHa3+ztkP1McMtw42pbGuHPfKXeiZJMpTx89LBsg2bwn
 w4NA==
X-Gm-Message-State: AOAM531zcv843aY7dbR96xmoK3V+bwpWfsfJsH5IIpiS1BhidRjzGBmQ
 lniJwR3Cs/MU9tMS3HnQ5M3ast/PQtqYNAV6yn0u0g==
X-Google-Smtp-Source: ABdhPJxqI/Ddp6H43iEOvc5rnWF1w/7KgpoKFguVhO5s7k4K2AixCS41XtVttCAO0HTc82sITBD1PnywGyFZjo65NlI=
X-Received: by 2002:a05:6402:a4d:: with SMTP id
 bt13mr10400609edb.338.1591944685742; 
 Thu, 11 Jun 2020 23:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200610114402epcas1p279b1c47dc902904c44d39d50c8e169e8@epcas1p2.samsung.com>
 <20200610114347.118501-1-jagan@amarulasolutions.com>
 <8c7edc3c-2876-f407-86a5-708a0164db1d@samsung.com>
In-Reply-To: <8c7edc3c-2876-f407-86a5-708a0164db1d@samsung.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 12 Jun 2020 12:21:12 +0530
Message-ID: <CAMty3ZBrY+rzFfNw=o7T-YBP49MoPAF55rgro8-Eo=QcL01jsg@mail.gmail.com>
Subject: Re: [PATCH v3] mmc: sdhci: Fix HISPD bit handling
To: Jaehoon Chung <jh80.chung@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_235127_565745_60DCDD60 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Marc Zyngier <maz@kernel.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 5:36 PM Jaehoon Chung <jh80.chung@samsung.com> wrote:
>
> Hi Jagan,
>
> On 6/10/20 8:43 PM, Jagan Teki wrote:
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
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Kever Yang <kever.yang@rock-chips.com>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> > Tested-by: Marc Zyngier <maz@kernel.org> # nanopc-t4
> > Tested-by: Suniel Mahesh <sunil@amarulasolutions.com> # roc-rk3399-pc
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - use && for quirk check.
> >
> >  drivers/mmc/sdhci.c | 23 +++++++++++++++--------
> >  1 file changed, 15 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> > index 92cc8434af..a7db278a0e 100644
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
> > +     if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) &&
> > +         !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
>
> Sorry, it needs to check more. Because it's different with kernel code.
> Kernel code is only checking condition about SDHCI_QUIRK_NO_HISPD_BIT.
> but in u-boot, one more checking about SDHCI_QUIRK_BROKEN_HISPD_MODE.
>
> So if it doesn't set to both, it's possible to set SDHCI_CTRL_HISPD as ctrl's flags.
>
> > +             if (mmc->selected_mode == MMC_HS ||
> > +                 mmc->selected_mode == SD_HS ||
> > +                 mmc->selected_mode == MMC_DDR_52 ||
> > +                 mmc->selected_mode == MMC_HS_200 ||
> > +                 mmc->selected_mode == MMC_HS_400 ||
> > +                 mmc->selected_mode == UHS_SDR25 ||
> > +                 mmc->selected_mode == UHS_SDR50 ||
> > +                 mmc->selected_mode == UHS_SDR104 ||
> > +                 mmc->selected_mode == UHS_DDR50)
> > +                     ctrl |= SDHCI_CTRL_HISPD;
> > +             else
> > +                     ctrl &= ~SDHCI_CTRL_HISPD;
> > +     }
> >
> I think that needs to add at here
>          else
>                 ctrl &= ~SDHCI_CTRL_HISPD;

Okay, Can you look at this logic?

--- a/drivers/mmc/sdhci.c
+++ b/drivers/mmc/sdhci.c
@@ -567,6 +567,7 @@ static int sdhci_set_ios(struct mmc *mmc)
 #endif
        u32 ctrl;
        struct sdhci_host *host = mmc->priv;
+       bool no_hispd_bit = false;

        if (host->ops && host->ops->set_control_reg)
                host->ops->set_control_reg(host);
@@ -594,13 +595,16 @@ static int sdhci_set_ios(struct mmc *mmc)
                        ctrl &= ~SDHCI_CTRL_4BITBUS;
        }

-       if (mmc->clock > 26000000)
-               ctrl |= SDHCI_CTRL_HISPD;
-       else
-               ctrl &= ~SDHCI_CTRL_HISPD;
-
        if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
            (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
+               no_hispd_bit = true;
+
+       if (((mmc->selected_mode != MMC_LEGACY) ||
+             (mmc->selected_mode != MMC_HS_52) ||
+             (mmc->selected_mode != UHS_SDR12) ||
+             (mmc->selected_mode != MMC_HS_400_ES)) && !no_hispd_bit)
+               ctrl |= SDHCI_CTRL_HISPD;
+       else
                ctrl &= ~SDHCI_CTRL_HISPD;

        sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
