Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC162CF55
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 21:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35LDummC146njXD4EfqpmE6dxeGi9xtW3Lulf76L5Fg=; b=RA0Q1F7Mmn7iHn
	Vk++VLRmhXyDmDQIEsE1XqT4wZ0tfxZ+Bkvxaz7Cw4/sY/gjEchmcisoyuO5+v2a2bapUxKEwKMYd
	l3ylJbJuXeZo809pjpaxrDqxY8rObs03VxGzZqNF/6ea4HxkwlAxBHYK5By1d4NVJw0aKkCxaDWgC
	EspRUxvZdCUuLo9qVz1p3F4BmydfUMl97aee6iq1BYAOlkQVgT89MBh7hNbQwXQxxDrL021jCdj5/
	ED9Z4a/mKT68Sgk4rRg3cCsA0PZW7rGV4Av90S07rPJA7VnAF9HWUeR7TuMM0yl2uUFTfSv7P4sI+
	/YPFmBGEIE+y8mR4LXRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhfl-0002eW-81; Tue, 28 May 2019 19:22:09 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhfh-0002dp-GW
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 19:22:07 +0000
Received: by mail-ua1-x942.google.com with SMTP id 49so8469563uas.0
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 12:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o51SeYBfVRyasaL8DkaZePzzAuT4juHYF4hX6xOnKiM=;
 b=Gx+5MLP2FDWOPXWy6czETvegxYXSZwbIucUqOc1Qf8P2FO3umVCVFVhoqkZSx7MT3o
 3ZTGMaIsnzBfkyIVjkiDXwAvuS0DGzp/lIz/e0mfQjdtXUCwCjnRRerWoOPdNC2F9lru
 VeAMhWhHympLCCUHsNWHw8z5EB/X9l93i9mElATUKTrib+XZvaGvGGSW3GqN7GjVUJpa
 SgX5Uwsc8SCY4dBErVxgV6V2v0lg0LFZ8R88NBC61ilOYoaEL/ZccrAoYt/yGjHgjTO3
 8CBZAu3GE3m1Yt93tZWfOTH+kXNTnaXu/nJdgzih09h9ovzcBfr9XPRXLIhwW/SwGVl8
 eGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o51SeYBfVRyasaL8DkaZePzzAuT4juHYF4hX6xOnKiM=;
 b=AW2nzzvu7MatAFF1CLbkZ/6EMJDv6HaQ8knh4NF9wa/g+DWKZbJDQ7a87uVjcXO3Mp
 9Fq8YvmohHRkKQpsKDuPzZmKpXBBf4NbzLr84ODmQc+GIiZJxCecdi8+CcTtosjXZB6Q
 RCBBFDP6V3ZJ5zJzNGAKrq2D8hWfK5stIZbMWUBJTeilAKEML8uTH8B33p2cOjx18Rof
 OK7gNVMpZe12GHOye6GGOjKyoElOJ7zNrIK+uNrCad0Cp25kQp9W1kJ4crUKHnR0fHIg
 2eweleBcocQrGAEUJr6XuVBsZL0oV43nPq+ZKql2xLVD8FmqNEetWyfd+ZQWDELYytg2
 vv4A==
X-Gm-Message-State: APjAAAWBB3fJMIJAMm6U7uUJzhVjBpgHrX+DD45A+sPJyu0XzmrWHAtq
 T0tnt7imoGgM5c4UQ/M5yXecObR7Vx+ImSpHQqVqmw==
X-Google-Smtp-Source: APXvYqxq83kXFEOLbADw2n/1zs0kcaN0zXUr1gStJ+CzcAafZwaxBuMfO06ZSd63b61fxvj11okHHU6DG92954qEiBw=
X-Received: by 2002:a9f:2103:: with SMTP id 3mr57230678uab.100.1559071323390; 
 Tue, 28 May 2019 12:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190429204040.18725-1-dianders@chromium.org>
In-Reply-To: <20190429204040.18725-1-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 May 2019 21:21:25 +0200
Message-ID: <CAPDyKFp0fQ+3CS-DadE9rO-9Npzve-nztY9hRaMdX7Pw9sUZMw@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: dw_mmc: Disable SDIO interrupts while suspended
 to fix suspend/resume
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_122205_613968_B54762AD 
X-CRM114-Status: GOOD (  42.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Emil Renner Berthing <emil.renner.berthing@gmail.com>,
 Sonny Rao <sonnyrao@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019 at 22:41, Douglas Anderson <dianders@chromium.org> wrote:
>
> Processing SDIO interrupts while dw_mmc is suspended (or partly
> suspended) seems like a bad idea.  We really don't want to be
> processing them until we've gotten ourselves fully powered up.

I fully agree.

Although, this is important not only from the host driver/controller
perspective, but also from the SDIO card (managed by mmc core) point
of view.

In $subject patch you mange the driver/controller issue, but only for
one specific host driver (dw_mmc). I am thinking that this problem may
be a rather common problem, so perhaps we should try to address this
from the core in a way that it affects all host drivers. Did you
consider that?

The other problem I refer to, is in principle a way to prevent
sdio_run_irqs() from being executed before the SDIO card has been
resumed, via mmc_sdio_resume(). It's a separate problem, but certainly
related. This may need some more thinking to address properly, let's
just keep this in mind and discuss this in a separate thread.

>
> You might be wondering how it's even possible to become suspended when
> an SDIO interrupt is active.  As can be seen in
> dw_mci_enable_sdio_irq(), we explicitly keep dw_mmc out of runtime
> suspend when the SDIO interrupt is enabled.  ...but even though we
> stop normal runtime suspend transitions when SDIO interrupts are
> enabled, the dw_mci_runtime_suspend() can still get called for a full
> system suspend.
>
> Let's handle all this by explicitly masking SDIO interrupts in the
> suspend call and unmasking them later in the resume call.  To do this
> cleanly I'll keep track of whether the client requested that SDIO
> interrupts be enabled so that we can reliably restore them regardless
> of whether we're masking them for one reason or another.
>
> It should be noted that if dw_mci_enable_sdio_irq() is never called
> (for instance, if we don't have an SDIO card plugged in) that
> "client_sdio_enb" will always be false.  In those cases this patch
> adds a tiny bit of overhead to suspend/resume (a spinlock and a
> read/write of INTMASK) but other than that is a no-op.  The
> SDMMC_INT_SDIO bit should always be clear and clearing it again won't
> hurt.

Thanks for the detailed problem description. In general your approach
sounds okay to me, but I have a few questions.

1) As kind of stated above, did you consider a solution where the core
simply disables the SDIO IRQ in case it isn't enabled for system
wakeup? In this way all host drivers would benefit.

2) dw_mmc isn't calling device_init_wakeup() during ->probe(), hence I
assume it doesn't support the SDIO IRQ being configured as system
wakeup. Correct? I understand this is platform specific, but still it
would be good to know your view.

3) Because of 2) The below code in dw_mci_runtime_suspend(), puzzles me:
"if (host->slot->mmc->pm_flags & MMC_PM_KEEP_POWER)"
       dw_mci_set_ios(host->slot->mmc, &host->slot->mmc->ios);

Why is 3) needed at all in case system wakeup isn't supported?

A note; the current support in the mmc core for the SDIO IRQ being
used as system wakeup, really needs some re-work. For example, we
should convert to use common wakeup interfaces, as to allow the PM
core to behave correctly during system suspend/resume. These are
changes that have been scheduled on my TODO list since long time ago,
I hope I can get some time to look into them soon.

>
> Without this fix it can be seen that rk3288-veyron Chromebooks with
> Marvell WiFi would sometimes fail to resume WiFi even after picking my
> recent mwifiex patch [1].  Specifically you'd see messages like this:
>   mwifiex_sdio mmc1:0001:1: Firmware wakeup failed
>   mwifiex_sdio mmc1:0001:1: PREP_CMD: FW in reset state
>
> ...and tracing through the resume code in the failing cases showed
> that we were processing a SDIO interrupt really early in the resume
> call.
>
> NOTE: downstream in Chrome OS 3.14 and 3.18 kernels (both of which
> support the Marvell SDIO WiFi card) we had a patch ("CHROMIUM: sdio:
> Defer SDIO interrupt handling until after resume") [2].  Presumably
> this is the same problem that was solved by that patch.

Seems reasonable.

>
> [1] https://lkml.kernel.org/r/20190404040106.40519-1-dianders@chromium.org
> [2] https://crrev.com/c/230765
>
> Cc: <stable@vger.kernel.org> # 4.14.x
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> I didn't put any "Fixes" tag here, but presumably this could be
> backported to whichever kernels folks found it useful for.  I have at
> least confirmed that kernels v4.14 and v4.19 (as well as v5.1-rc2)
> show the problem.  It is very easy to pick this to v4.19 and it
> definitely fixes the problem there.
>
> I haven't spent the time to pick this to 4.14 myself, but presumably
> it wouldn't be too hard to backport this as far as v4.13 since that
> contains commit 32dba73772f8 ("mmc: dw_mmc: Convert to use
> MMC_CAP2_SDIO_IRQ_NOTHREAD for SDIO IRQs").  Prior to that it might
> make sense for anyone experiencing this problem to just pick the old
> CHROMIUM patch to fix them.
>
> Changes in v2:
> - Suggested 4.14+ in the stable tag (Sasha-bot)
> - Extra note that this is a noop on non-SDIO (Shawn / Emil)
> - Make boolean logic cleaner as per https://crrev.com/c/1586207/1
> - Hopefully clear comments as per https://crrev.com/c/1586207/1
>
>  drivers/mmc/host/dw_mmc.c | 27 +++++++++++++++++++++++----
>  drivers/mmc/host/dw_mmc.h |  3 +++
>  2 files changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> index 80dc2fd6576c..480067b87a94 100644
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -1664,7 +1664,8 @@ static void dw_mci_init_card(struct mmc_host *mmc, struct mmc_card *card)
>         }
>  }
>
> -static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, int enb)
> +static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, bool enb,
> +                                    bool client_requested)
>  {
>         struct dw_mci *host = slot->host;
>         unsigned long irqflags;
> @@ -1672,6 +1673,20 @@ static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, int enb)
>
>         spin_lock_irqsave(&host->irq_lock, irqflags);
>
> +       /*
> +        * If we're being called directly from dw_mci_enable_sdio_irq()
> +        * (which means that the client driver actually wants to enable or
> +        * disable interrupts) then save the request.  Otherwise this
> +        * wasn't directly requested by the client and we should logically
> +        * AND it with the client request since we want to disable if
> +        * _either_ the client disabled OR we have some other reason to
> +        * disable temporarily.
> +        */
> +       if (client_requested)
> +               host->client_sdio_enb = enb;
> +       else
> +               enb &= host->client_sdio_enb;
> +
>         /* Enable/disable Slot Specific SDIO interrupt */
>         int_mask = mci_readl(host, INTMASK);
>         if (enb)
> @@ -1688,7 +1703,7 @@ static void dw_mci_enable_sdio_irq(struct mmc_host *mmc, int enb)
>         struct dw_mci_slot *slot = mmc_priv(mmc);
>         struct dw_mci *host = slot->host;
>
> -       __dw_mci_enable_sdio_irq(slot, enb);
> +       __dw_mci_enable_sdio_irq(slot, enb, true);
>
>         /* Avoid runtime suspending the device when SDIO IRQ is enabled */
>         if (enb)
> @@ -1701,7 +1716,7 @@ static void dw_mci_ack_sdio_irq(struct mmc_host *mmc)
>  {
>         struct dw_mci_slot *slot = mmc_priv(mmc);
>
> -       __dw_mci_enable_sdio_irq(slot, 1);
> +       __dw_mci_enable_sdio_irq(slot, true, false);
>  }
>
>  static int dw_mci_execute_tuning(struct mmc_host *mmc, u32 opcode)
> @@ -2734,7 +2749,7 @@ static irqreturn_t dw_mci_interrupt(int irq, void *dev_id)
>                 if (pending & SDMMC_INT_SDIO(slot->sdio_id)) {
>                         mci_writel(host, RINTSTS,
>                                    SDMMC_INT_SDIO(slot->sdio_id));
> -                       __dw_mci_enable_sdio_irq(slot, 0);
> +                       __dw_mci_enable_sdio_irq(slot, false, false);
>                         sdio_signal_irq(slot->mmc);
>                 }
>
> @@ -3424,6 +3439,8 @@ int dw_mci_runtime_suspend(struct device *dev)
>  {
>         struct dw_mci *host = dev_get_drvdata(dev);
>
> +       __dw_mci_enable_sdio_irq(host->slot, false, false);
> +
>         if (host->use_dma && host->dma_ops->exit)
>                 host->dma_ops->exit(host);
>
> @@ -3490,6 +3507,8 @@ int dw_mci_runtime_resume(struct device *dev)
>         /* Now that slots are all setup, we can enable card detect */
>         dw_mci_enable_cd(host);
>
> +       __dw_mci_enable_sdio_irq(host->slot, true, false);
> +
>         return 0;
>
>  err:
> diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
> index 46e9f8ec5398..dfbace0f5043 100644
> --- a/drivers/mmc/host/dw_mmc.h
> +++ b/drivers/mmc/host/dw_mmc.h
> @@ -127,6 +127,7 @@ struct dw_mci_dma_slave {
>   * @cmd11_timer: Timer for SD3.0 voltage switch over scheme.
>   * @cto_timer: Timer for broken command transfer over scheme.
>   * @dto_timer: Timer for broken data transfer over scheme.
> + * @client_sdio_enb: The value last passed to enable_sdio_irq.
>   *
>   * Locking
>   * =======
> @@ -234,6 +235,8 @@ struct dw_mci {
>         struct timer_list       cmd11_timer;
>         struct timer_list       cto_timer;
>         struct timer_list       dto_timer;
> +
> +       bool                    client_sdio_enb;
>  };
>
>  /* DMA ops for Internal/External DMAC interface */
> --
> 2.21.0.593.g511ec345e18-goog
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
