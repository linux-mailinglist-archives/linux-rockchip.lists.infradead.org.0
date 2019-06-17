Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ED648C30
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 20:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XyT8cW6EImLJ3nTJO+NLlUZdiQmmFlr+kMv1k9HYdM=; b=t4HrWcsy9e+2RD
	3u+PTBl/pZOE4Pm0RjviAFY3ZR7/uToq9N6aLD0PhVqu6LnmO0Wkasqi8UcmvjtGzCYyUX56EWd66
	v/v17TBInAYdnrK2XeYLyTiqWLQ+hs3YMGfxNOpCCnR7lqv5pg+E4Rn6fvWKcju+4+t6IwNpPeZe1
	nt0DxP5zZCg0kyLX7Ijnb8dSlYDGRnCSCsm4CAJ5R4Pe9Q/c5d43la4BbWAWn48OeLlAnlMhYGblG
	4wK8NVs1fJpe+pwUzRaylfCgs4i/6fthuOtrQI7EPayMvLW7/vZlZvckl+ZKH6/spwFvHErIJhc74
	rUlF/6/PpzHdKtQ9hXDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwXT-0001rz-33; Mon, 17 Jun 2019 18:39:31 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwXP-0001r7-KX
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 18:39:29 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 2so3682499vso.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 11:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HrHPxKrferT1JAd/MlzxZwSuGBA6gb0ENjpbrrRdk7w=;
 b=SV7VogTP85EMqFS3Mzv6FQo/JuabZthZ0z2+w+f7x6cgdpjYwsindOdSBj6DYL7muZ
 Ga32lSPxZzQMNTqIEKijrS3U0njBt8U1FGuYY4Bn4rgrKgquOm2fNDP7UUQXEBYolnJI
 tn7JP7FeZbZ7RVkn3KRu0VDYevg8MpiDclJsfbC/y/ZrEIOggA73s9uvPuFHFS8yA2CC
 heFrSIiAspsjbKU9EDZhdgXpre73gO+mIjJxiUOamg5k40ct/femc0WlL7O6TSLb3A4G
 NRNKGp3iBcehgOVQvRCRA+xB8ZQD3fwNi1wkLzgmuBNRk4xNZhqIfi/sgaDYqDvi0YmT
 6ceA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HrHPxKrferT1JAd/MlzxZwSuGBA6gb0ENjpbrrRdk7w=;
 b=WPmpbTrf5xVmVRJG4EI8SJvb8hKXQP3mcqrQPXf4zqu3zv5O3Iq6SveHA54ii7BvCj
 7g6V8trBoCLOaVkHl1GUbq+pS2UqglXsbkfGNBWmttQHNYmsrbiHJ0xrmmOvivE7QqyD
 gM3piE1mlVD1Dize9J0SKYuOflLMwLNRzl5Q3ESUPVBldEjeUnLo0B8g/dYW+BVmRgUm
 l9fZWTkTe9QvT4iYWb/cFvUFFsmj+Ni8aRl2770fex9Xuiys5SIXXLggD/vcdpXhpKx4
 fcDzZyW0qeLwNJogLgwVwRMRkPmvgR/6DRbHyetwvc0j93it+jKXWJ4RqIGjqZSu61f1
 udew==
X-Gm-Message-State: APjAAAXOnQTeF8FkBEVnVJm85sKUFG9EiBb4N0Ylfirl8lir6YDFSIWl
 H6g98tzEhstBNPixgajV2/NpsD0M+fk3dl811XEYFw==
X-Google-Smtp-Source: APXvYqy0hy2tVDS6IPNJlT9E1K+7AzXLT3TMlyyG420beOQJMtebGkOnRtHj86zAn/Yfs7K2PHcRzwGpAQjwvWrfiXQ=
X-Received: by 2002:a67:ee5b:: with SMTP id g27mr1171014vsp.165.1560796765659; 
 Mon, 17 Jun 2019 11:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190617175653.21756-1-dianders@chromium.org>
In-Reply-To: <20190617175653.21756-1-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 20:38:49 +0200
Message-ID: <CAPDyKFpaX6DSM_BjtghAHUf7qYCyEG+wMagXPUdgz3Eutovqfw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
To: Douglas Anderson <dianders@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_113927_738799_4B2CA771 
X-CRM114-Status: GOOD (  26.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Franky Lin <franky.lin@broadcom.com>, brcm80211-dev-list.pdl@broadcom.com,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 19:57, Douglas Anderson <dianders@chromium.org> wrote:
>
> This series attempts to deal better with the expected transmission
> errors related to the idle states (handled by the Always-On-Subsystem
> or AOS) on the SDIO-based WiFi on rk3288-veyron-minnie,
> rk3288-veyron-speedy, and rk3288-veyron-mickey.
>
> Some details about those errors can be found in
> <https://crbug.com/960222>, but to summarize it here: if we try to
> send the wakeup command to the WiFi card at the same time it has
> decided to wake up itself then it will behave badly on the SDIO bus.
> This can cause timeouts or CRC errors.
>
> When I tested on 4.19 and 4.20 these CRC errors can be seen to cause
> re-tuning.  Since I am currently developing on 4.19 this was the
> original problem I attempted to solve.
>
> On mainline it turns out that you don't see the retuning errors but
> you see tons of spam about timeouts trying to wakeup from sleep.  I
> tracked down the commit that was causing that and have partially
> reverted it here.  I have no real knowledge about Broadcom WiFi, but
> the commit that was causing problems sounds (from the descriptioin) to
> be a hack commit penalizing all Broadcom WiFi users because of a bug
> in a Cypress SD controller.  I will let others comment if this is
> truly the case and, if so, what the right solution should be.
>
> For v3 of this series I have added 2 patches to the end of the series
> to address errors that would show up on systems with these same SDIO
> WiFi cards when used on controllers that do periodic retuning.  These
> systems need an extra fix to prevent the retuning from happening when
> the card is asleep.
>
> I believe v5 of this series is all ready to go assuming Kalle Valo is
> good with it.  I've added after-the-cut notes to patches awaiting his
> Ack and have added other tags collected so far.
>
> Changes in v5:
> - Add missing sdio_retune_crc_enable() in comments (Ulf).
> - /s/reneable/re-enable (Ulf).
> - Remove leftover prototypes: mmc_expect_errors_begin() / end() (Ulf).
> - Rewording of "sleep command" in commit message (Arend).
>
> Changes in v4:
> - Moved to SDIO API only (Adrian, Ulf).
> - Renamed to make it less generic, now retune_crc_disable (Ulf).
> - Function header makes it clear host must be claimed (Ulf).
> - No more WARN_ON (Ulf).
> - Adjust to API rename (Adrian, Ulf).
> - Moved retune hold/release to SDIO API (Adrian).
> - Adjust to API rename (Adrian).
>
> Changes in v3:
> - Took out the spinlock since I believe this is all in one context.
> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> - ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release()") new for v3.
> - ("brcmfmac: sdio: Don't tune while the card is off") new for v3.
>
> Changes in v2:
> - A full revert, not just a partial one (Arend).  ...with explicit Cc.
> - Updated commit message to clarify based on discussion of v1.
>
> Douglas Anderson (5):
>   Revert "brcmfmac: disable command decode in sdio_aos"
>   mmc: core: API to temporarily disable retuning for SDIO CRC errors
>   brcmfmac: sdio: Disable auto-tuning around commands expected to fail
>   mmc: core: Add sdio_retune_hold_now() and sdio_retune_release()
>   brcmfmac: sdio: Don't tune while the card is off
>
>  drivers/mmc/core/core.c                       |  5 +-
>  drivers/mmc/core/sdio_io.c                    | 77 +++++++++++++++++++
>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 ++--
>  include/linux/mmc/host.h                      |  1 +
>  include/linux/mmc/sdio_func.h                 |  6 ++
>  5 files changed, 99 insertions(+), 7 deletions(-)
>
> --
> 2.22.0.410.gd8fdbe21b5-goog
>

Applied for fixes, thanks!

Some minor changes:
1) Dropped the a few "commit notes", that was more related to version
and practical information about the series.
2) Dropped fixes tags for patch 2->5, but instead put a stable tag
targeted for v4.18+.

Awaiting an ack from Kalle before sending the PR to Linus.

Kalle, perhaps you prefer to pick patch 1, as it could go separate.
Then please tell - and/or if there is anything else you want me to
change.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
