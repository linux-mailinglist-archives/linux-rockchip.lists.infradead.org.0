Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A662C08D
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 09:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NAWKNgzmtzOxpS00DgpOz/7NHAAhK6dfoTTCJrqAm5Q=; b=F9bYdPqxcylh7iVNGJLncBEjr
	RZeqazaOMjktW4juD6zjADLrq9AEk4VfTYMm1TXMRJ03PcokgKOXaYipP927J+DTWy30GVRjO4Z4A
	3uJlZPDMzBF/uB2/BQtihE6wjzABn3Qk5FiUEE99t7Iam3w3JB2dcXSBxPi5BchuSFUOS9JowjpUS
	aR+YVBiIO5AiEN1CSUNXt6oOGQMruITagi+/As7rPhiy9HKX/Jp3td8TuWEWmeyYRlJendvZEjbA6
	crsNMXXh9ximU+gmCwT5rN5FYh8mRoyarnar+o5/RVBpDtjjRan0nGKjw+25jZrBhPaAlLE0tJGxU
	wmqlRE27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWqE-0002Qy-DP; Tue, 28 May 2019 07:48:14 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWqA-0002Q0-QG
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 07:48:13 +0000
Received: from shawn.lin?rock-chips.com (unknown [192.168.167.139])
 by lucky1.263xmail.com (Postfix) with ESMTP id 15EDC59FD7;
 Tue, 28 May 2019 15:48:02 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11884T140492318693120S1559029676862359_; 
 Tue, 28 May 2019 15:47:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d51cbbad6d0037a5de7fbac59c2fc291>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: kvalo@codeaurora.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2=5d_mmc=3a_dw=5fmmc=3a_Disable_SDIO_inte?=
 =?UTF-8?Q?rrupts_while_suspended_to_fix_suspend/resume=e3=80=90=e8=af=b7?=
 =?UTF-8?B?5rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzaGF3bi5s?=
 =?UTF-8?B?aW49cm9jay1jaGlwcy5jb21AbGlzdHMuaW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Douglas Anderson <dianders@chromium.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>
References: <20190429204040.18725-1-dianders@chromium.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <982ffba1-c599-e73d-e5e0-b1be5668851c@rock-chips.com>
Date: Tue, 28 May 2019 15:47:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429204040.18725-1-dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_004811_168854_DFC957BA 
X-CRM114-Status: GOOD (  37.23  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: heiko@sntech.de, linux-mmc@vger.kernel.org, shawn.lin@rock-chips.com,
 briannorris@chromium.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org,
 Guenter Roeck <groeck@chromium.org>,
 Emil Renner Berthing <emil.renner.berthing@gmail.com>,
 Sonny Rao <sonnyrao@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


On 2019/4/30 4:40, Douglas Anderson wrote:
> Processing SDIO interrupts while dw_mmc is suspended (or partly
> suspended) seems like a bad idea.  We really don't want to be
> processing them until we've gotten ourselves fully powered up.
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
> 
> Without this fix it can be seen that rk3288-veyron Chromebooks with
> Marvell WiFi would sometimes fail to resume WiFi even after picking my
> recent mwifiex patch [1].  Specifically you'd see messages like this:
>    mwifiex_sdio mmc1:0001:1: Firmware wakeup failed
>    mwifiex_sdio mmc1:0001:1: PREP_CMD: FW in reset state
> 
> ...and tracing through the resume code in the failing cases showed
> that we were processing a SDIO interrupt really early in the resume
> call.
> 
> NOTE: downstream in Chrome OS 3.14 and 3.18 kernels (both of which
> support the Marvell SDIO WiFi card) we had a patch ("CHROMIUM: sdio:
> Defer SDIO interrupt handling until after resume") [2].  Presumably
> this is the same problem that was solved by that patch.
> 
> [1] https://lkml.kernel.org/r/20190404040106.40519-1-dianders@chromium.org
> [2] https://crrev.com/c/230765
> 

Sorry for late, but FWIW:

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

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
>   drivers/mmc/host/dw_mmc.c | 27 +++++++++++++++++++++++----
>   drivers/mmc/host/dw_mmc.h |  3 +++
>   2 files changed, 26 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> index 80dc2fd6576c..480067b87a94 100644
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -1664,7 +1664,8 @@ static void dw_mci_init_card(struct mmc_host *mmc, struct mmc_card *card)
>   	}
>   }
>   
> -static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, int enb)
> +static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, bool enb,
> +				     bool client_requested)
>   {
>   	struct dw_mci *host = slot->host;
>   	unsigned long irqflags;
> @@ -1672,6 +1673,20 @@ static void __dw_mci_enable_sdio_irq(struct dw_mci_slot *slot, int enb)
>   
>   	spin_lock_irqsave(&host->irq_lock, irqflags);
>   
> +	/*
> +	 * If we're being called directly from dw_mci_enable_sdio_irq()
> +	 * (which means that the client driver actually wants to enable or
> +	 * disable interrupts) then save the request.  Otherwise this
> +	 * wasn't directly requested by the client and we should logically
> +	 * AND it with the client request since we want to disable if
> +	 * _either_ the client disabled OR we have some other reason to
> +	 * disable temporarily.
> +	 */
> +	if (client_requested)
> +		host->client_sdio_enb = enb;
> +	else
> +		enb &= host->client_sdio_enb;
> +
>   	/* Enable/disable Slot Specific SDIO interrupt */
>   	int_mask = mci_readl(host, INTMASK);
>   	if (enb)
> @@ -1688,7 +1703,7 @@ static void dw_mci_enable_sdio_irq(struct mmc_host *mmc, int enb)
>   	struct dw_mci_slot *slot = mmc_priv(mmc);
>   	struct dw_mci *host = slot->host;
>   
> -	__dw_mci_enable_sdio_irq(slot, enb);
> +	__dw_mci_enable_sdio_irq(slot, enb, true);
>   
>   	/* Avoid runtime suspending the device when SDIO IRQ is enabled */
>   	if (enb)
> @@ -1701,7 +1716,7 @@ static void dw_mci_ack_sdio_irq(struct mmc_host *mmc)
>   {
>   	struct dw_mci_slot *slot = mmc_priv(mmc);
>   
> -	__dw_mci_enable_sdio_irq(slot, 1);
> +	__dw_mci_enable_sdio_irq(slot, true, false);
>   }
>   
>   static int dw_mci_execute_tuning(struct mmc_host *mmc, u32 opcode)
> @@ -2734,7 +2749,7 @@ static irqreturn_t dw_mci_interrupt(int irq, void *dev_id)
>   		if (pending & SDMMC_INT_SDIO(slot->sdio_id)) {
>   			mci_writel(host, RINTSTS,
>   				   SDMMC_INT_SDIO(slot->sdio_id));
> -			__dw_mci_enable_sdio_irq(slot, 0);
> +			__dw_mci_enable_sdio_irq(slot, false, false);
>   			sdio_signal_irq(slot->mmc);
>   		}
>   
> @@ -3424,6 +3439,8 @@ int dw_mci_runtime_suspend(struct device *dev)
>   {
>   	struct dw_mci *host = dev_get_drvdata(dev);
>   
> +	__dw_mci_enable_sdio_irq(host->slot, false, false);
> +
>   	if (host->use_dma && host->dma_ops->exit)
>   		host->dma_ops->exit(host);
>   
> @@ -3490,6 +3507,8 @@ int dw_mci_runtime_resume(struct device *dev)
>   	/* Now that slots are all setup, we can enable card detect */
>   	dw_mci_enable_cd(host);
>   
> +	__dw_mci_enable_sdio_irq(host->slot, true, false);
> +
>   	return 0;
>   
>   err:
> diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
> index 46e9f8ec5398..dfbace0f5043 100644
> --- a/drivers/mmc/host/dw_mmc.h
> +++ b/drivers/mmc/host/dw_mmc.h
> @@ -127,6 +127,7 @@ struct dw_mci_dma_slave {
>    * @cmd11_timer: Timer for SD3.0 voltage switch over scheme.
>    * @cto_timer: Timer for broken command transfer over scheme.
>    * @dto_timer: Timer for broken data transfer over scheme.
> + * @client_sdio_enb: The value last passed to enable_sdio_irq.
>    *
>    * Locking
>    * =======
> @@ -234,6 +235,8 @@ struct dw_mci {
>   	struct timer_list       cmd11_timer;
>   	struct timer_list       cto_timer;
>   	struct timer_list       dto_timer;
> +
> +	bool			client_sdio_enb;
>   };
>   
>   /* DMA ops for Internal/External DMAC interface */
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
