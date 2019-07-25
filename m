Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D1746A6
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 07:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0947lRvubIR+xJVqWx5pLvdavMkJr0WikxcAT6kQvas=; b=H/a7z2gVRHonrg
	Km54lpgezcHXrLe/BeZErCVi0iCH4jctCUG8S/c1G8YZh+MMlAorMtlbDeAnVGgwlzESPI1VaklTD
	hGFW+PGtSoi2DrznrIA+bJNZyiED5FRZjkgz8LAGI6KQpwcSVyLR5idQ0Ow3zVs8u8mgLE28RZc7o
	1dp5C1cM3cdrylGZosNjNOB7wZpPvBGesX/OA3dOTi46csOPEE4EHyQsgo8Rr1WNGrv3Ts4bo0lPU
	kMREL66WuorBKFjZ8LsZZbVRKYOmGP6Thq9izZrmR3IDBqE7u0+901nLZ6Zbjg68dIsc594fEv7t5
	1kklc+jd5UZEo4vsqFoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWkB-0002BX-5G; Thu, 25 Jul 2019 05:56:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWk7-0002BC-1h
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 05:56:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1D41F6055C; Thu, 25 Jul 2019 05:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564034202;
 bh=obQivilrrq99bI/JADOtPPw40Tam6JqkCOlcQ4u07Pg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=bMsF962d6/5hRs8CNVfvOuFh4McgKgeaYjwiNj3rwaaPtAP6v1KZ5KaO+5ayPT7X8
 Dk0u0GVbi2sdzFC5siDwnBU1Ll2HS92frYguPRwP1uvbB0SUBU8gLoQwBwEQ/gApbq
 43BEiRsKf6jOkmD6Y6EjXSwyN/8B3a+P3AvXqgpA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 80BD960213;
 Thu, 25 Jul 2019 05:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564034201;
 bh=obQivilrrq99bI/JADOtPPw40Tam6JqkCOlcQ4u07Pg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=fk8JO0d1n7CFnbxsgD6H9t57uVvCqUoYRCA9TuaG0rfqi+Tvb2UVr3h4dHScgkhSY
 EQ6SzMH0UOjrdbwzJYMIgy6mDuQfDqre9tdHdaNcPknctiD6v44h7ISBXfHbXfxEoq
 tpwl1W30EdWY0/KUbJAxnaMqr9tlLD3iht+TUTO0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 80BD960213
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/2] mwifiex: Make use of the new sdio_trigger_replug()
 API to reset
References: <20190722193939.125578-3-dianders@chromium.org>
 <20190724113508.47A356021C@smtp.codeaurora.org>
 <CAD=FV=WAsrBV9PzUz1qPzQru+AkOYZ5hsaWdhNYRTNqUfDeOmQ@mail.gmail.com>
Date: Thu, 25 Jul 2019 08:56:35 +0300
In-Reply-To: <CAD=FV=WAsrBV9PzUz1qPzQru+AkOYZ5hsaWdhNYRTNqUfDeOmQ@mail.gmail.com>
 (Doug Anderson's message of "Wed, 24 Jul 2019 13:22:22 -0700")
Message-ID: <87imrqzmgc.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_225643_128797_57DF441A 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Andreas Fenkart <afenkart@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nishant Sarmukadam <nishants@marvell.com>, Avri Altman <avri.altman@wdc.com>,
 Linux MMC List <linux-mmc@vger.kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Doug Anderson <dianders@chromium.org> writes:

> Hi,
>
> On Wed, Jul 24, 2019 at 4:35 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Douglas Anderson <dianders@chromium.org> wrote:
>>
>> > As described in the patch ("mmc: core: Add sdio_trigger_replug()
>> > API"), the current mwifiex_sdio_card_reset() is broken in the cases
>> > where we're running Bluetooth on a second SDIO func on the same card
>> > as WiFi.  The problem goes away if we just use the
>> > sdio_trigger_replug() API call.
>> >
>> > NOTE: Even though with this new solution there is less of a reason to
>> > do our work from a workqueue (the unplug / plug mechanism we're using
>> > is possible for a human to perform at any time so the stack is
>> > supposed to handle it without it needing to be called from a special
>> > context), we still need a workqueue because the Marvell reset function
>> > could called from a context where sleeping is invalid and thus we
>> > can't claim the host.  One example is Marvell's wakeup_timer_fn().
>> >
>> > Cc: Andreas Fenkart <afenkart@gmail.com>
>> > Cc: Brian Norris <briannorris@chromium.org>
>> > Fixes: b4336a282db8 ("mwifiex: sdio: reset adapter using mmc_hw_reset")
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> > Reviewed-by: Brian Norris <briannorris@chromium.org>
>>
>> I assume this is going via some other tree so I'm dropping this from my
>> queue. If I should apply this please resend once the dependency is in
>> wireless-drivers-next.
>>
>> Patch set to Not Applicable.
>
> Thanks.  For now I'll assume that Ulf will pick it up if/when he is
> happy with patch #1 in this series.  Would you be willing to provide
> your Ack on this patch to make it clear to Ulf you're OK with that?

Sure, I was planning to do that already in my previous email but forgot.

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
Kalle Valo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
