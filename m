Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DF3D2C2B
	for <lists+linux-rockchip@lfdr.de>; Thu, 10 Oct 2019 16:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKKO4QvqRWG8fcgRJONZTTv1jXOLfdgcBeZy2Uh/0Oc=; b=Ype4ZOiDLQBpuA
	seEPJBU79SuSXXUUZVTpgZYL6ATZnKyAxN0mSKNvYzljvqVZrW8LfpabZ+veW9iKwWSlZRGr0EdpN
	HpqdqWJMcY1Az2N/ovt+F5upUihtzfHus+fhii1YOGUZp7BJhUm3jB+wrOizS6tgv8w4L9/8vyaYe
	lrEbVFEU66cTEbvNWpo9LPl84kpoYcyLGHZn5yT0x6Eo6HlFUcf5t2IgxxDqC8nC4krvwtI3xWWi+
	63XzgALe6f+hJbP4P3A0Zw5SjscYiWic7FKGl6UPS/wR5BNuBAp1StjuI6vJC/U8ClIBPjh1PytAQ
	CSygKC0EtUEyBUCHE07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZ9u-0000ja-H3; Thu, 10 Oct 2019 14:11:14 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZ9r-0000hr-1p
 for linux-rockchip@lists.infradead.org; Thu, 10 Oct 2019 14:11:12 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b123so3990475vsb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2019 07:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gA5F+RboE/pq+skSstsxaptbKJRogDAxspae1hZdrlw=;
 b=r/LIxHSW9Hdinc+D0Q6ii6IgfODtEPA7DG+J3nI5G4dmTYbg0AE8kFbjz4uCjpx4tF
 QrLKKae+TVAOXVIm8ul1al4xJKrRBf4PHxbHxvzkzylS2dlImR5Ta9ZS8C8LOnIvCi8Z
 YT/DpA5D0z2tTsdrfvUKjoUGjElPqlkPMxF7J3/BaBDUsUQ+JXlh/jdLQqKjZ2y0T/SN
 LWPgem2QK0RVDs3oPjUFSY0OULoh/0Qonhqby6SdaZMcuFtH7hOoyOSaj2qJWVhkmJEq
 J6EH4NlsThcmjNlAM7KIo+XcHU1nBOjHN8nNi0cFMsvnIW5b1HABIkXZX3x+z3765HHV
 S6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gA5F+RboE/pq+skSstsxaptbKJRogDAxspae1hZdrlw=;
 b=HnNLVzu2250bBPcuTuCVqjg2aSqIsA43hk2XDgH5CjrPZ7JeJqRrsPFBIwZifxuN+r
 Vvc+VMRzFJl7QrCIRLwIRQPU6QLOoUlnqdGKZVB4U+bRutg3rNNmakG+attLmOfVH2Zg
 xKzeqH4cSljeK9+mAwCn2VKXOoue7RbJlD2xtLAY6y3LhjPjB/kZ98gT8MFYN2DoVstY
 G0XonZyKdrtL0PFDH6E3E+J67HnED3KES8Aj3tpsL6jxg++ICP3IT7TKqxBMF+9ebqY8
 fkeyFvBpjoSkxwZAMmhjgww6moqujhm9SoHlGGUZTZuVKCvESi/LOmOiI4gQkBvKrJr8
 Z9Pg==
X-Gm-Message-State: APjAAAUFU+abCQFz1ji7qNnLUgiduiu1IQrfp2EpGEpuP6AG4u+LBP+F
 HZuHrN27tZ6k0Pj46c6DymS7Q8QTZ/DKLoGELU6lgF88Sw0=
X-Google-Smtp-Source: APXvYqx8YwXRB2hrYG/fdZo1ha3XH6HrALf+bCVpuuJw5+7mmU3wP8OnkTRknPuULXGYFLMFs7UbggxceKVIPmCeIC8=
X-Received: by 2002:a67:ef89:: with SMTP id r9mr5830898vsp.200.1570716668861; 
 Thu, 10 Oct 2019 07:11:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
 <20190722193939.125578-2-dianders@chromium.org>
In-Reply-To: <20190722193939.125578-2-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 10 Oct 2019 16:10:32 +0200
Message-ID: <CAPDyKFpKWo4n+nmBXVcDc4TNzFV3vc+3aeKcu_nKaB=hj=RKUQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] mmc: core: Add sdio_trigger_replug() API
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_071111_123493_3FD58F90 
X-CRM114-Status: GOOD (  28.46  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Ganapathi Bhat <gbhat@marvell.com>, Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Andreas Fenkart <afenkart@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nishant Sarmukadam <nishants@marvell.com>,
 Matthias Kaehlcke <mka@chromium.org>, Avri Altman <avri.altman@wdc.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 21:41, Douglas Anderson <dianders@chromium.org> wrote:
>
> When using Marvell WiFi SDIO cards, it is not uncommon for Linux WiFi
> driver to fully lose the communication channel to the firmware running
> on the card.  Presumably the firmware on the card has a bug or two in
> it and occasionally crashes.
>
> The Marvell WiFi driver attempts to recover from this problem.
> Specifically the driver has the function mwifiex_sdio_card_reset()
> which is called when communcation problems are found.  That function
> attempts to reset the state of things by utilizing the mmc_hw_reset()
> function.
>
> The current solution is a bit complex because the Marvell WiFi driver
> needs to manually deinit and reinit the WiFi driver around the reset
> call.  This means it's going through a bunch of code paths that aren't
> normally tested.  However, complexity isn't our only problem.  The
> other (bigger) problem is that Marvell WiFi cards are often combo
> WiFi/Bluetooth cards and Bluetooth runs on a second SDIO func.  While
> the WiFi driver knows that it should re-init its own state around the
> mmc_hw_reset() call there is no good way to inform the Bluetooth
> driver.  That means that in Linux today when you reset the Marvell
> WiFi driver you lose all Bluetooth communication.  Doh!

Thanks for a nice description to the problem!

In principle it makes mmc_hw_reset() quite questionable to use for
SDIO func drivers, at all. However, let's consider that for later.

>
> One way to fix the above problems is to leverage a more standard way
> to reset the Marvell WiFi card where we go through the same code paths
> as card unplug and the card plug.  In this patch we introduce a new
> API call for doing just that: sdio_trigger_replug().  This API call
> will trigger an unplug of the SDIO card followed by a plug of the
> card.  As part of this the card will be nicely reset.

I have been thinking back and forth on this, exploring various
options, perhaps adding some callbacks that the core could invoke to
inform the SDIO func drivers of what is going on.

Although, in the end this boils done to complexity and I think your
approach is simply the most superior in regards to this. However, I
think there is a few things that we can do to even further simply your
approach, let me comment on the code below.

>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v2:
> - s/routnine/routine (Brian Norris, Matthias Kaehlcke).
> - s/contining/containing (Matthias Kaehlcke).
> - Add Matthias Reviewed-by tag.
>
>  drivers/mmc/core/core.c       | 28 ++++++++++++++++++++++++++--
>  drivers/mmc/core/sdio_io.c    | 20 ++++++++++++++++++++
>  include/linux/mmc/host.h      | 15 ++++++++++++++-
>  include/linux/mmc/sdio_func.h |  2 ++
>  4 files changed, 62 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
> index 221127324709..5da365b1fdb4 100644
> --- a/drivers/mmc/core/core.c
> +++ b/drivers/mmc/core/core.c
> @@ -2161,6 +2161,12 @@ int mmc_sw_reset(struct mmc_host *host)
>  }
>  EXPORT_SYMBOL(mmc_sw_reset);
>
> +void mmc_trigger_replug(struct mmc_host *host)
> +{
> +       host->trigger_replug_state = MMC_REPLUG_STATE_UNPLUG;
> +       _mmc_detect_change(host, 0, false);
> +}
> +
>  static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
>  {
>         host->f_init = freq;
> @@ -2214,6 +2220,11 @@ int _mmc_detect_card_removed(struct mmc_host *host)
>         if (!host->card || mmc_card_removed(host->card))
>                 return 1;
>
> +       if (host->trigger_replug_state == MMC_REPLUG_STATE_UNPLUG) {
> +               mmc_card_set_removed(host->card);
> +               return 1;

Do you really need to set state of the card to "removed"?

If I understand correctly, what you need is to allow mmc_rescan() to
run a second time, in particular for non removable cards.

In that path, mmc_rescan should find the card being non-functional,
thus it should remove it and then try to re-initialize it again. Etc.

Do you want me to send a patch to show you what I mean!?

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
