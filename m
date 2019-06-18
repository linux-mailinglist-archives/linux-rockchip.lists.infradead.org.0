Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DCC49F67
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 13:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=es24AvLkH71kyzYGyHWCpFxJCNHxOupGU/YquW2Scds=; b=ik1XV/6YFFnJIS
	O/fI7lOBPePUnwvRJ0oHinz8qO0O9YJGXjD/OOpGqpTVy7k0G8ywgQJTsxWZFtM2zuipwwFhkEjFw
	hHltS93f5THeJBmQVC1A6qXZSLbIl1QcgO3OjMi5sO0NohiVHy3NJZEpj7jQN65J3wLCvyJXbhzya
	OeNlP70IVC+vZRnK58yz2QHFKvDYVA/hI4Eoo1a+msQqeNM7dgdmvokOUAfJgF/nnS689T3CqeDGa
	kM6BDIh5THKIg3ojZ0ymoiH9JCvrdriZ/rwg/S1J4erlJLZ69NjxwGdgcaHCmlSzKsym/g7fMh/3r
	+uxLT/Cq/ym9r35AQDVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCUI-0006sd-8I; Tue, 18 Jun 2019 11:41:18 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCUE-0006rw-VU
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 11:41:16 +0000
Received: by mail-vk1-xa43.google.com with SMTP id e83so1822703vke.12
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 04:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aXKWHfiW2fK/oNHPaHV17m2/kXsIPSmEkP6INcYYU9o=;
 b=DbVcJjtjVOUaGpNKJ/DvdYK1FZNzvJnwIpOr3/kA2dreAHCj5DcjBfjZnEnYIrIL9Q
 gq7+EeNVE7nyL4th2fgWCodJu4sRMGXCIaIuRnP5IfcYW4NiepE4lr7gs5enJz5tCw7h
 TtYwfBPaT23F4mPYlUpktE1WjGcT41EhSwpTjDsKDZs9r5rQu8WyDZgBYo1DAdw2a3dR
 Nksam9I88iVRBmH9PNaflQd7Fj28V2t/rj80Z2I9WIYVyxbBH3N22NG6Cv7visa5uDhj
 UZ1yOk9v4J+/L/pEamjjXplcvuLmdPFTyfd9tkHBax7Y6B0OBcNQlPc+nFSUEoGFDVY1
 JKRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aXKWHfiW2fK/oNHPaHV17m2/kXsIPSmEkP6INcYYU9o=;
 b=WkuWxIGgmFb3ANc3LWJlRUZ9b9iD+Zn961qGO0TqBtUpTZmsE8UGQaB52nbsvEwiO+
 kmVZOCcUYaV8Js3qjg+C1fiifyg9PSLlxIClzNTH00p7SM2Fezp45omX26R2dS+o/onM
 2LocME30axnbh8YLtxe/bbuZjm7fDJ+j/zls8sWmbQIp8iRec6R+XUe97EepfE4NNFHm
 3dC+sBD+pKZUyu3jfEwn6I5/aoFaw4No8r+puoRwnaMRZXr7+DPSEnNxcLP53k7Mk3sW
 caReJQRHtlNBKGAFuEXPhfQkMb6pdtoheVBHabUX5Wa0IOsMwYaPFf+ViOB90aKxRD4H
 T/MQ==
X-Gm-Message-State: APjAAAU/S1iNQEbVqSfu0cpAqJhHkyMnv/rq9JCQ4hx2YQAug+De7+1W
 XIqNvlBi4pL7Y0Bt+ni4tR+tREY6uG0myHDMi51UpA==
X-Google-Smtp-Source: APXvYqzAl7wJEEH+9xHNdBIPLlWcQNm3f6xV2K4I/CyVeso07z7k2+LL7fMznGVsUFSpo4IawQFtCpaHljxygG765/Q=
X-Received: by 2002:a1f:ab04:: with SMTP id u4mr26393129vke.40.1560858072830; 
 Tue, 18 Jun 2019 04:41:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190617175653.21756-1-dianders@chromium.org>
 <CAPDyKFpaX6DSM_BjtghAHUf7qYCyEG+wMagXPUdgz3Eutovqfw@mail.gmail.com>
 <87v9x39mxf.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87v9x39mxf.fsf@kamboji.qca.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 18 Jun 2019 13:40:36 +0200
Message-ID: <CAPDyKFqGtui4+shA0TENF=h6Zk0_tgQaJTNSP1xakw7Nb12irg@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_044115_026063_574B2603 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>, YueHaibing <yuehaibing@huawei.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Franky Lin <franky.lin@broadcom.com>, brcm80211-dev-list.pdl@broadcom.com,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 18 Jun 2019 at 13:02, Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Ulf Hansson <ulf.hansson@linaro.org> writes:
>
> > On Mon, 17 Jun 2019 at 19:57, Douglas Anderson <dianders@chromium.org> wrote:
> >>
> >> This series attempts to deal better with the expected transmission
> >> errors related to the idle states (handled by the Always-On-Subsystem
> >> or AOS) on the SDIO-based WiFi on rk3288-veyron-minnie,
> >> rk3288-veyron-speedy, and rk3288-veyron-mickey.
> >>
> >> Some details about those errors can be found in
> >> <https://crbug.com/960222>, but to summarize it here: if we try to
> >> send the wakeup command to the WiFi card at the same time it has
> >> decided to wake up itself then it will behave badly on the SDIO bus.
> >> This can cause timeouts or CRC errors.
> >>
> >> When I tested on 4.19 and 4.20 these CRC errors can be seen to cause
> >> re-tuning.  Since I am currently developing on 4.19 this was the
> >> original problem I attempted to solve.
> >>
> >> On mainline it turns out that you don't see the retuning errors but
> >> you see tons of spam about timeouts trying to wakeup from sleep.  I
> >> tracked down the commit that was causing that and have partially
> >> reverted it here.  I have no real knowledge about Broadcom WiFi, but
> >> the commit that was causing problems sounds (from the descriptioin) to
> >> be a hack commit penalizing all Broadcom WiFi users because of a bug
> >> in a Cypress SD controller.  I will let others comment if this is
> >> truly the case and, if so, what the right solution should be.
> >>
> >> For v3 of this series I have added 2 patches to the end of the series
> >> to address errors that would show up on systems with these same SDIO
> >> WiFi cards when used on controllers that do periodic retuning.  These
> >> systems need an extra fix to prevent the retuning from happening when
> >> the card is asleep.
> >>
> >> I believe v5 of this series is all ready to go assuming Kalle Valo is
> >> good with it.  I've added after-the-cut notes to patches awaiting his
> >> Ack and have added other tags collected so far.
> >>
> >> Changes in v5:
> >> - Add missing sdio_retune_crc_enable() in comments (Ulf).
> >> - /s/reneable/re-enable (Ulf).
> >> - Remove leftover prototypes: mmc_expect_errors_begin() / end() (Ulf).
> >> - Rewording of "sleep command" in commit message (Arend).
> >>
> >> Changes in v4:
> >> - Moved to SDIO API only (Adrian, Ulf).
> >> - Renamed to make it less generic, now retune_crc_disable (Ulf).
> >> - Function header makes it clear host must be claimed (Ulf).
> >> - No more WARN_ON (Ulf).
> >> - Adjust to API rename (Adrian, Ulf).
> >> - Moved retune hold/release to SDIO API (Adrian).
> >> - Adjust to API rename (Adrian).
> >>
> >> Changes in v3:
> >> - Took out the spinlock since I believe this is all in one context.
> >> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> >> - ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.
> >> - ("brcmfmac: sdio: Don't tune while the card is off") new for v3.
> >>
> >> Changes in v2:
> >> - A full revert, not just a partial one (Arend).  ...with explicit Cc.
> >> - Updated commit message to clarify based on discussion of v1.
> >>
> >> Douglas Anderson (5):
> >>   Revert "brcmfmac: disable command decode in sdio_aos"
> >>   mmc: core: API to temporarily disable retuning for SDIO CRC errors
> >>   brcmfmac: sdio: Disable auto-tuning around commands expected to fail
> >>   mmc: core: Add sdio_retune_hold_now() and sdio_retune_release()
> >>   brcmfmac: sdio: Don't tune while the card is off
> >>
> >>  drivers/mmc/core/core.c                       |  5 +-
> >>  drivers/mmc/core/sdio_io.c                    | 77 +++++++++++++++++++
> >>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 ++--
> >>  include/linux/mmc/host.h                      |  1 +
> >>  include/linux/mmc/sdio_func.h                 |  6 ++
> >>  5 files changed, 99 insertions(+), 7 deletions(-)
> >>
> >> --
> >> 2.22.0.410.gd8fdbe21b5-goog
> >>
> >
> > Applied for fixes, thanks!
> >
> > Some minor changes:
> > 1) Dropped the a few "commit notes", that was more related to version
> > and practical information about the series.
> > 2) Dropped fixes tags for patch 2->5, but instead put a stable tag
> > targeted for v4.18+.
> >
> > Awaiting an ack from Kalle before sending the PR to Linus.
> >
> > Kalle, perhaps you prefer to pick patch 1, as it could go separate.
> > Then please tell - and/or if there is anything else you want me to
> > change.
>
> TBH I haven't followed the thread (or patches) that closely :) So feel
> free to take them and push them to Linus.
>

I take that as an ack and will add your tag for it, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
