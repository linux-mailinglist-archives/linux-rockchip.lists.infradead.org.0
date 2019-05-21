Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DFA24957
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 09:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQ4SQYxoDWgypjZwW+/0rrca0xSKRR3NJbZOM4lQNpU=; b=XF9zJX52zxAovx
	HC3rpxtzjjPB6mb6SZxCwTN0juXglw10c+agZW88hc0NF9JJQlep3CzvcwirDKGGAAu5vc11CG/tu
	KX67Jz5JZ6vw4SFjXWjjz0LohwmknudXy1tINdPqndc2W7LMBN34/WQfAh+iz7sLIXSNkL4CNMDr5
	KnY5hE0lg6aWp7pYOx2mHQFokiXJj2UOQjjUI0WH+pf5Y29Fcl+lJPiBYWcItXWERgTSC2FHm296u
	SyOtSVcDFv+4zsCX07gWfwm6enY1rctbAMEotem5eZrxmTi6iZ3wVj67iPB+QsvBSBELo/DJL30lm
	MnxBA7iT8lX2S72Vav/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzWv-00077g-03; Tue, 21 May 2019 07:49:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzWr-00076x-Re
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 07:49:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5AC9E284620
Subject: Re: [PATCH v4 2/3] spi: Allow SPI devices to request the pumping
 thread be realtime
To: Douglas Anderson <dianders@chromium.org>, Mark Brown
 <broonie@kernel.org>, Benson Leung <bleung@chromium.org>
References: <20190515164814.258898-1-dianders@chromium.org>
 <20190515164814.258898-3-dianders@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <21d93d23-40c4-0db5-934e-77329b4dc93c@collabora.com>
Date: Tue, 21 May 2019 09:49:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515164814.258898-3-dianders@chromium.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_004946_151448_0E2C0536 
X-CRM114-Status: GOOD (  27.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 15/5/19 18:48, Douglas Anderson wrote:
> Right now the only way to get the SPI pumping thread bumped up to
> realtime priority is for the controller to request it.  However it may
> be that the controller works fine with the normal priority but
> communication to a particular SPI device on the bus needs realtime
> priority.
> 
> Let's add a way for devices to request realtime priority when they set
> themselves up.
> 
> NOTE: this will just affect the priority of transfers that end up on
> the SPI core's pumping thread.  In many cases transfers happen in the
> context of the caller so if you need realtime priority for all
> transfers you should ensure the calling context is also realtime
> priority.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Guenter Roeck <groeck@chromium.org>

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
 Enric

> ---
> 
> Changes in v4: None
> Changes in v3:
> - SPI core change now like patch v1 patch #2 (with name "rt").
> 
> Changes in v2:
> - Now only force transfers to the thread for devices that want it.
> - Squashed patch #1 and #2 together.
> - Renamed variable to "force_rt_transfers".
> 
>  drivers/spi/spi.c       | 36 ++++++++++++++++++++++++++++++------
>  include/linux/spi/spi.h |  2 ++
>  2 files changed, 32 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 8eb7460dd744..466984796dd9 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -1364,10 +1364,32 @@ static void spi_pump_messages(struct kthread_work *work)
>  	__spi_pump_messages(ctlr, true);
>  }
>  
> -static int spi_init_queue(struct spi_controller *ctlr)
> +/**
> + * spi_set_thread_rt - set the controller to pump at realtime priority
> + * @ctlr: controller to boost priority of
> + *
> + * This can be called because the controller requested realtime priority
> + * (by setting the ->rt value before calling spi_register_controller()) or
> + * because a device on the bus said that its transfers needed realtime
> + * priority.
> + *
> + * NOTE: at the moment if any device on a bus says it needs realtime then
> + * the thread will be at realtime priority for all transfers on that
> + * controller.  If this eventually becomes a problem we may see if we can
> + * find a way to boost the priority only temporarily during relevant
> + * transfers.
> + */
> +static void spi_set_thread_rt(struct spi_controller *ctlr)
>  {
>  	struct sched_param param = { .sched_priority = MAX_RT_PRIO - 1 };
>  
> +	dev_info(&ctlr->dev,
> +		"will run message pump with realtime priority\n");
> +	sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
> +}
> +
> +static int spi_init_queue(struct spi_controller *ctlr)
> +{
>  	ctlr->running = false;
>  	ctlr->busy = false;
>  
> @@ -1387,11 +1409,8 @@ static int spi_init_queue(struct spi_controller *ctlr)
>  	 * request and the scheduling of the message pump thread. Without this
>  	 * setting the message pump thread will remain at default priority.
>  	 */
> -	if (ctlr->rt) {
> -		dev_info(&ctlr->dev,
> -			"will run message pump with realtime priority\n");
> -		sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
> -	}
> +	if (ctlr->rt)
> +		spi_set_thread_rt(ctlr);
>  
>  	return 0;
>  }
> @@ -2982,6 +3001,11 @@ int spi_setup(struct spi_device *spi)
>  
>  	spi_set_cs(spi, false);
>  
> +	if (spi->rt && !spi->controller->rt) {
> +		spi->controller->rt = true;
> +		spi_set_thread_rt(spi->controller);
> +	}
> +
>  	dev_dbg(&spi->dev, "setup mode %d, %s%s%s%s%u bits/w, %u Hz max --> %d\n",
>  			(int) (spi->mode & (SPI_CPOL | SPI_CPHA)),
>  			(spi->mode & SPI_CS_HIGH) ? "cs_high, " : "",
> diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
> index 053abd22ad31..15505c2485d6 100644
> --- a/include/linux/spi/spi.h
> +++ b/include/linux/spi/spi.h
> @@ -109,6 +109,7 @@ void spi_statistics_add_transfer_stats(struct spi_statistics *stats,
>   *	This may be changed by the device's driver, or left at the
>   *	default (0) indicating protocol words are eight bit bytes.
>   *	The spi_transfer.bits_per_word can override this for each transfer.
> + * @rt: Make the pump thread real time priority.
>   * @irq: Negative, or the number passed to request_irq() to receive
>   *	interrupts from this device.
>   * @controller_state: Controller's runtime state
> @@ -143,6 +144,7 @@ struct spi_device {
>  	u32			max_speed_hz;
>  	u8			chip_select;
>  	u8			bits_per_word;
> +	bool			rt;
>  	u32			mode;
>  #define	SPI_CPHA	0x01			/* clock phase */
>  #define	SPI_CPOL	0x02			/* clock polarity */
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
