Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB11748D0E
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 20:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuTWrNWdyPFY482gnm+NxNcQlI/VgWAc1lLK63EMb1I=; b=uTIR5OFIa4y36m
	uQ5d52OOjSuY7IGk9prDotD0Kc8RmxrTkf1gXLR8/aKs8eNCagl81/XVGJ5VhNiFuJ0+Vc5cd4+4z
	OiL5odjw4QKlgeyYo2clDV8oIgkoUlEQBMHr2ZpZdtYj2RLxOKHfVwofvtjkhSqSSsgyrBpUvPG37
	I3ph1YZ0DcTZWvyXv7h1RF6kNf1kZE65+K0CG1ULgHhfYd7wEWbWvSBmRJ8AoJtW0fP+ri84PVPmf
	+Z15bLZbcKVWoDMVdoL59IuvrL67AVWdtdfrF5brn2lxRVAFm4zBD8mkBxU71AuE4KA7IQ8ylJJAp
	3UwIjUJ3O7hmtIxdU79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwmq-0000XW-0e; Mon, 17 Jun 2019 18:55:24 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwmm-0000X0-0U
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 18:55:21 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so23719310ioo.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 11:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N++lS1o+MDz9+i4mzKncc0qVpXXpsoR+Jo3R2g+KlCo=;
 b=SAnZ3X0db+ry3DfdGKhXmDVRB1ay1ZXQyzAHIfdFfY354qGzD+/MI11JpexYGS29uJ
 j/eWkJnZhvOuHS/+zRUH8o7WpVEbUQkgyLS8HmbtOP1YHy+H+Pbb/FMLh460HskPqysH
 pUl3dQYa5lFFHCpPM7xu1Tgu8PXg+wPzShMxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N++lS1o+MDz9+i4mzKncc0qVpXXpsoR+Jo3R2g+KlCo=;
 b=k2MQz3SruwVoiA3kX+V6PkyCj4BkeGBBSahzRkOWH4kx8tGb4tsPJ9Q4hif2rwF4TI
 cUWhuRN/5xB8O/BVDOPWhLbwcA5GNXjiKhy+/X9MoCiHdxezGb7fjm2fC0fiILlVXeGt
 V5gZEytddWAFs/M4wcr+LoSZG7XzLSTLUMHHPKCN8xtKPTaq2jj7si883aeal1eBaCTc
 rcpO8U3GXGDcVxnzqAEsz4Gtc5trszBHEIXoNZftN+94XgVYFGE1Qvttrhh4SM8DQ4T0
 whPYkkVoL2TF15P6STMVlDSyduFDw3d3GXtcqmCXAmbacCbyfRFjEiv01jGa4eipKh+n
 Mufg==
X-Gm-Message-State: APjAAAVJx2zTfXDQkJGfMQk8J7yo0fZavfYKZrIzRWelVLm79oInxnns
 MVodRAPo0tdfP6D+W1CuwmJ1zGeFwCA=
X-Google-Smtp-Source: APXvYqwQOk9/xKx6j2pqfDVC1NNJWoh6OsGw0vN/kRsbctd0eewCg46Lttx/sbZVdxcLYCCRygtqhA==
X-Received: by 2002:a6b:6a01:: with SMTP id x1mr2701645iog.77.1560797718833;
 Mon, 17 Jun 2019 11:55:18 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id n7sm13358324ioo.79.2019.06.17.11.55.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 11:55:18 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id r185so17669418iod.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 11:55:18 -0700 (PDT)
X-Received: by 2002:a5e:db0a:: with SMTP id q10mr77753iop.168.1560797232212;
 Mon, 17 Jun 2019 11:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190617175653.21756-1-dianders@chromium.org>
 <CAPDyKFpaX6DSM_BjtghAHUf7qYCyEG+wMagXPUdgz3Eutovqfw@mail.gmail.com>
In-Reply-To: <CAPDyKFpaX6DSM_BjtghAHUf7qYCyEG+wMagXPUdgz3Eutovqfw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 17 Jun 2019 11:46:59 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U5+j8V7qckLJf0N+xMeuaOqF+ThL3th98y63aTAVe57g@mail.gmail.com>
Message-ID: <CAD=FV=U5+j8V7qckLJf0N+xMeuaOqF+ThL3th98y63aTAVe57g@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_115520_057274_1C3CF7CE 
X-CRM114-Status: GOOD (  30.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: Ondrej Jirman <megous@megous.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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
 Double Lo <double.lo@cypress.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Avri Altman <avri.altman@wdc.com>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com, netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Kalle Valo <kvalo@codeaurora.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 17, 2019 at 11:39 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 17 Jun 2019 at 19:57, Douglas Anderson <dianders@chromium.org> wrote:
> >
> > This series attempts to deal better with the expected transmission
> > errors related to the idle states (handled by the Always-On-Subsystem
> > or AOS) on the SDIO-based WiFi on rk3288-veyron-minnie,
> > rk3288-veyron-speedy, and rk3288-veyron-mickey.
> >
> > Some details about those errors can be found in
> > <https://crbug.com/960222>, but to summarize it here: if we try to
> > send the wakeup command to the WiFi card at the same time it has
> > decided to wake up itself then it will behave badly on the SDIO bus.
> > This can cause timeouts or CRC errors.
> >
> > When I tested on 4.19 and 4.20 these CRC errors can be seen to cause
> > re-tuning.  Since I am currently developing on 4.19 this was the
> > original problem I attempted to solve.
> >
> > On mainline it turns out that you don't see the retuning errors but
> > you see tons of spam about timeouts trying to wakeup from sleep.  I
> > tracked down the commit that was causing that and have partially
> > reverted it here.  I have no real knowledge about Broadcom WiFi, but
> > the commit that was causing problems sounds (from the descriptioin) to
> > be a hack commit penalizing all Broadcom WiFi users because of a bug
> > in a Cypress SD controller.  I will let others comment if this is
> > truly the case and, if so, what the right solution should be.
> >
> > For v3 of this series I have added 2 patches to the end of the series
> > to address errors that would show up on systems with these same SDIO
> > WiFi cards when used on controllers that do periodic retuning.  These
> > systems need an extra fix to prevent the retuning from happening when
> > the card is asleep.
> >
> > I believe v5 of this series is all ready to go assuming Kalle Valo is
> > good with it.  I've added after-the-cut notes to patches awaiting his
> > Ack and have added other tags collected so far.
> >
> > Changes in v5:
> > - Add missing sdio_retune_crc_enable() in comments (Ulf).
> > - /s/reneable/re-enable (Ulf).
> > - Remove leftover prototypes: mmc_expect_errors_begin() / end() (Ulf).
> > - Rewording of "sleep command" in commit message (Arend).
> >
> > Changes in v4:
> > - Moved to SDIO API only (Adrian, Ulf).
> > - Renamed to make it less generic, now retune_crc_disable (Ulf).
> > - Function header makes it clear host must be claimed (Ulf).
> > - No more WARN_ON (Ulf).
> > - Adjust to API rename (Adrian, Ulf).
> > - Moved retune hold/release to SDIO API (Adrian).
> > - Adjust to API rename (Adrian).
> >
> > Changes in v3:
> > - Took out the spinlock since I believe this is all in one context.
> > - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> > - ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.
> > - ("brcmfmac: sdio: Don't tune while the card is off") new for v3.
> >
> > Changes in v2:
> > - A full revert, not just a partial one (Arend).  ...with explicit Cc.
> > - Updated commit message to clarify based on discussion of v1.
> >
> > Douglas Anderson (5):
> >   Revert "brcmfmac: disable command decode in sdio_aos"
> >   mmc: core: API to temporarily disable retuning for SDIO CRC errors
> >   brcmfmac: sdio: Disable auto-tuning around commands expected to fail
> >   mmc: core: Add sdio_retune_hold_now() and sdio_retune_release()
> >   brcmfmac: sdio: Don't tune while the card is off
> >
> >  drivers/mmc/core/core.c                       |  5 +-
> >  drivers/mmc/core/sdio_io.c                    | 77 +++++++++++++++++++
> >  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 ++--
> >  include/linux/mmc/host.h                      |  1 +
> >  include/linux/mmc/sdio_func.h                 |  6 ++
> >  5 files changed, 99 insertions(+), 7 deletions(-)
> >
> > --
> > 2.22.0.410.gd8fdbe21b5-goog
> >
>
> Applied for fixes, thanks!
>
> Some minor changes:
> 1) Dropped the a few "commit notes", that was more related to version
> and practical information about the series.
> 2) Dropped fixes tags for patch 2->5, but instead put a stable tag
> targeted for v4.18+.

OK, sounds good.  Thanks!  :-)

I guess when I see the # v4.18+ in the commit message it makes me
believe that the problem only existed on 4.18+, but maybe that's just
me reading too much into it.  ;-)  In any case, presumably anyone who
had these problems on earlier kernels already has solved them with
local patches.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
