Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6894249F90
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 13:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHsNF4BHA8oEc8ng8kySGdy9P+a0d7jU6+1m2P6sX8c=; b=UL4ezil2/losAD
	mCrQJoFnOIEYliDatFOPR0IcAficam0TRJi7Qa6hyXHu86J8s0nOC50RACiTHTY+QYgxllqpa5bDP
	HdH8uvhDAqQpO80pnsThX6CfbbSs9wVIGFQrxokYI1EWvcIWaryVYkHCNO+Ce3yUA5lnactAPwKBg
	B9SnKSEyITwekquBoH0/WooFtQYot6OhyLH9c4zHVRYAwQRNbUDDYwnCwdXX69j5geJKSzfucCnT6
	lIgA2h85qMYw495atDEa3wK31Z1DlxkRfXD6eAv7jzl1FBiwGGJSgYdEj6WIFD02cea7RH+qqZarw
	wFIe77J/UWmWS/Tj0lRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCaU-0000h7-8c; Tue, 18 Jun 2019 11:47:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCaQ-0000gi-RC
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 11:47:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 906C460C5F; Tue, 18 Jun 2019 11:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560858458;
 bh=zsiyismHkNaIwa20jYT3ygpjBUSpDFV20h1wHyoiRi4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=H5tfAqm20VO08QFGVdOVOtMkcVVGFL246Sf3UyVYR2o3TEG6v5OeIXMB8aHE8WN33
 pDspwYOueoJUPxXUit0AQPkd4sK0qCot1aRU7IsQraLuq+vH5r7fO6vlyFCDXr8Nol
 z4SSAolCahXWQV4OslSkw2Crm+rq16NTPpqxpa7c=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 99F376028D;
 Tue, 18 Jun 2019 11:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560858456;
 bh=zsiyismHkNaIwa20jYT3ygpjBUSpDFV20h1wHyoiRi4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=lWS5vBN2n7mllaKBfP/xGUE/WXX3mG7tlT+2NMunARaEo6J1Emg3O4Bd61KfgDnIm
 tS+SssTn8qjpetiuUWVaLkZGKYxngG+qLqIj7cxilaIwLuiNDycKy6gHTRjyNTfOof
 5NF9IZc9lCRLoudqobxCMnGqIAVsAeTxfbXyP68Q=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 99F376028D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v5 0/5] brcmfmac: sdio: Deal better w/ transmission errors
 related to idle
References: <20190617175653.21756-1-dianders@chromium.org>
 <CAPDyKFpaX6DSM_BjtghAHUf7qYCyEG+wMagXPUdgz3Eutovqfw@mail.gmail.com>
 <87v9x39mxf.fsf@kamboji.qca.qualcomm.com>
 <CAPDyKFoE0+KNBT5j3_VpJKcztghVa-eFJhy8887bZcUk8bfN2Q@mail.gmail.com>
Date: Tue, 18 Jun 2019 14:47:27 +0300
In-Reply-To: <CAPDyKFoE0+KNBT5j3_VpJKcztghVa-eFJhy8887bZcUk8bfN2Q@mail.gmail.com>
 (Ulf Hansson's message of "Tue, 18 Jun 2019 13:28:10 +0200")
Message-ID: <87ef3r9kts.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_044738_917015_46FBD122 
X-CRM114-Status: GOOD (  33.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
 Niklas =?utf-8?Q?S=C3=B6derl?= =?utf-8?Q?und?=
 <niklas.soderlund+renesas@ragnatech.se>,
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

Ulf Hansson <ulf.hansson@linaro.org> writes:

> On Tue, 18 Jun 2019 at 13:02, Kalle Valo <kvalo@codeaurora.org> wrote:
>
>     Ulf Hansson <ulf.hansson@linaro.org> writes:
>     
>     > On Mon, 17 Jun 2019 at 19:57, Douglas Anderson
>     <dianders@chromium.org> wrote:
>     >>
>     >> This series attempts to deal better with the expected
>     transmission
>     >> errors related to the idle states (handled by the
>     Always-On-Subsystem
>     >> or AOS) on the SDIO-based WiFi on rk3288-veyron-minnie,
>     >> rk3288-veyron-speedy, and rk3288-veyron-mickey.
>     >>
>     >> Some details about those errors can be found in
>     >> <https://crbug.com/960222>, but to summarize it here: if we try
>     to
>     >> send the wakeup command to the WiFi card at the same time it
>     has
>     >> decided to wake up itself then it will behave badly on the SDIO
>     bus.
>     >> This can cause timeouts or CRC errors.
>     >>
>     >> When I tested on 4.19 and 4.20 these CRC errors can be seen to
>     cause
>     >> re-tuning. Since I am currently developing on 4.19 this was the
>     >> original problem I attempted to solve.
>     >>
>     >> On mainline it turns out that you don't see the retuning errors
>     but
>     >> you see tons of spam about timeouts trying to wakeup from
>     sleep. I
>     >> tracked down the commit that was causing that and have
>     partially
>     >> reverted it here. I have no real knowledge about Broadcom WiFi,
>     but
>     >> the commit that was causing problems sounds (from the
>     descriptioin) to
>     >> be a hack commit penalizing all Broadcom WiFi users because of
>     a bug
>     >> in a Cypress SD controller. I will let others comment if this
>     is
>     >> truly the case and, if so, what the right solution should be.
>     >>
>     >> For v3 of this series I have added 2 patches to the end of the
>     series
>     >> to address errors that would show up on systems with these same
>     SDIO
>     >> WiFi cards when used on controllers that do periodic retuning.
>     These
>     >> systems need an extra fix to prevent the retuning from
>     happening when
>     >> the card is asleep.
>     >>
>     >> I believe v5 of this series is all ready to go assuming Kalle
>     Valo is
>     >> good with it. I've added after-the-cut notes to patches
>     awaiting his
>     >> Ack and have added other tags collected so far.
>     >>
>     >> Changes in v5:
>     >> - Add missing sdio_retune_crc_enable() in comments (Ulf).
>     >> - /s/reneable/re-enable (Ulf).
>     >> - Remove leftover prototypes: mmc_expect_errors_begin() / end()
>     (Ulf).
>     >> - Rewording of "sleep command" in commit message (Arend).
>     >>
>     >> Changes in v4:
>     >> - Moved to SDIO API only (Adrian, Ulf).
>     >> - Renamed to make it less generic, now retune_crc_disable
>     (Ulf).
>     >> - Function header makes it clear host must be claimed (Ulf).
>     >> - No more WARN_ON (Ulf).
>     >> - Adjust to API rename (Adrian, Ulf).
>     >> - Moved retune hold/release to SDIO API (Adrian).
>     >> - Adjust to API rename (Adrian).
>     >>
>     >> Changes in v3:
>     >> - Took out the spinlock since I believe this is all in one
>     context.
>     >> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
>     >> - ("mmc: core: Export mmc_retune_hold_now() mmc_retune_release
>     ()") new for v3.
>     >> - ("brcmfmac: sdio: Don't tune while the card is off") new for
>     v3.
>     >>
>     >> Changes in v2:
>     >> - A full revert, not just a partial one (Arend). ...with
>     explicit Cc.
>     >> - Updated commit message to clarify based on discussion of v1.
>     >>
>     >> Douglas Anderson (5):
>     >> Revert "brcmfmac: disable command decode in sdio_aos"
>     >> mmc: core: API to temporarily disable retuning for SDIO CRC
>     errors
>     >> brcmfmac: sdio: Disable auto-tuning around commands expected to
>     fail
>     >> mmc: core: Add sdio_retune_hold_now() and sdio_retune_release()
>     >> brcmfmac: sdio: Don't tune while the card is off
>     >>
>     >> drivers/mmc/core/core.c | 5 +-
>     >> drivers/mmc/core/sdio_io.c | 77 +++++++++++++++++++
>     >> .../broadcom/brcm80211/brcmfmac/sdio.c | 17 ++--
>     >> include/linux/mmc/host.h | 1 +
>     >> include/linux/mmc/sdio_func.h | 6 ++
>     >> 5 files changed, 99 insertions(+), 7 deletions(-)
>     >>
>     >> --
>     >> 2.22.0.410.gd8fdbe21b5-goog
>     >>
>     >
>     > Applied for fixes, thanks!
>     >
>     > Some minor changes:
>     > 1) Dropped the a few "commit notes", that was more related to
>     version
>     > and practical information about the series.
>     > 2) Dropped fixes tags for patch 2->5, but instead put a stable
>     tag
>     > targeted for v4.18+.
>     >
>     > Awaiting an ack from Kalle before sending the PR to Linus.
>     >
>     > Kalle, perhaps you prefer to pick patch 1, as it could go
>     separate.
>     > Then please tell - and/or if there is anything else you want me
>     to
>     > change.
>     
>     TBH I haven't followed the thread (or patches) that closely :) So
>     feel
>     free to take them and push them to Linus.
>     
>
> I take that as an ack and will add your tag for it, thanks!

Yes, it was an ack :) I forgot to add:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

BTW, your previous mail was in HTML so most likely it didn't reach the
list.

-- 
Kalle Valo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
