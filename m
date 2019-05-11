Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D326C1A5C8
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 02:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3+FbMxUmBXSkIHV6l6BitkEupx1aiWcknMQ7C2OefM=; b=QYVfSECh+drbU/
	Gx4g1G9EBSt0KkH+TLwvgYh5cO2R/HS322tufyAiX1UxMs51L2kj2tbM9VxpyFN+8xcmOovTu56SV
	fHYZRFkZfPKXA45fX83sft0Od4NqarY5icmOcUuUZ5Rc6y54tEgcdf8/5np+lxtdUzH3PUHTAUVjt
	Zii/7KCzdJ3d+ZoPOkzY6msRlH0ZxGXTiGyi9Du+yjpSjsLVXBd1G1DExqRHP84l4wJ/X9ynhIIMQ
	Rn7XjhmHfhJqAuFvP0Jb/CIHNNpvry3JZixfLLsDVcac4zi8zMxSGTW17IV0TYsiEmGzvA9N/jYAN
	O5xzqZv6Iabmd3YN4WxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPFva-0004Yd-7k; Sat, 11 May 2019 00:31:50 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPFvW-0004Xt-NO
 for linux-rockchip@lists.infradead.org; Sat, 11 May 2019 00:31:48 +0000
Received: by mail-yw1-xc41.google.com with SMTP id n76so6150323ywd.1
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 17:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=37gYHYklWiUK8DeeVO0yWIPtkgijLNy1XhumPu2c5I0=;
 b=udkGlzZPnlyiJWvLbW1X17eM6DhssyqZqs16WwVz4guEuDEsAh8rTt+WIdkaoDw2oW
 LQtL8cPNZJ6YP1k5+phgdBQeCIGaVjUz7autVFWsCpmJihlRPgL80CwEKAe7b58Yb+mO
 CHkvQ4qdPoux5SCP59vpVj3sxBowimctiCjRo1yVWA2AjRhClomJNpPaCTn5PWm2VYW4
 hzJw/9nZBnQJOy0x7CIDI9KjHDxXGkz49UD+5bSUBHmSB4HemnFhr5BHpwYBIsClLYp2
 6n155/erwIumXrsjcNgfFGnLsIbHVq5oJh+RfNE9oEvC8EZm9GycY1I+b5Dg+OtFvfSA
 Pfzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=37gYHYklWiUK8DeeVO0yWIPtkgijLNy1XhumPu2c5I0=;
 b=lVjv0OhP8oSj9VQLsWU6dWZUCJx3ataKu8m1DELviicj3y1h2QalMOI72j7UkUzWlc
 qnP1i79EuhH+0j8zOyA82R7L/A+Lwfw7NgG/ZXytxjciAIAgTX4taXIepHonE/z4OeXv
 aP/eM1zblxWvsRuzEf0ajXC9x4Q0daycPUniuOBS908V+pHbm3TKmZzZoni9tZ/GSJyd
 X4VjezOQPGbjcQaqYIv55Xjtba5CexbG0lEYwcqWA9ndYOB8UH3ZvJhiyG4D5s/4JEIm
 9w3KqBuNatGORssbN3k9HlnzoKDpaOWsYVyqB1rJJwYzO0p/DolzG8pavV0Gscw31iJT
 SaFQ==
X-Gm-Message-State: APjAAAWuqBfQiPOpBu/WkYbHCuCGCEtwPU1E3YWFQXqNr1xoEegzdGFx
 2ZnAUWxmuN2hW85sZGRPU6ucwg1nrO58fFz/Q8IJAA==
X-Google-Smtp-Source: APXvYqw0QybtLpZFbHcZuSEwYx/GP5Q6qTzWStLD3kj7kXDzOp9qOhnX5eq+XzYwkaMJFaBb7ksQRi8wwR85zUhCRp8=
X-Received: by 2002:a81:6cc6:: with SMTP id h189mr7514731ywc.320.1557534704776; 
 Fri, 10 May 2019 17:31:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-3-dianders@chromium.org>
In-Reply-To: <20190510223437.84368-3-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Fri, 10 May 2019 17:31:33 -0700
Message-ID: <CABXOdTdgxfsAWLzAdcTuwyj4kbcSGi-UKCr5x2GJyiLfoCR=tA@mail.gmail.com>
Subject: Re: [PATCH 2/4] spi: Allow SPI devices to specify that they are
 timing sensitive
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_173146_791048_996EB8E3 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>
Date: Fri, May 10, 2019 at 3:35 PM
To: Mark Brown, Benson Leung, Enric Balletbo i Serra
Cc: <linux-rockchip@lists.infradead.org>, <drinkcat@chromium.org>,
Guenter Roeck, <briannorris@chromium.org>, <mka@chromium.org>, Douglas
Anderson, <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>

> If a device on the SPI bus is very sensitive to timing then it may be
> necessary (for correctness) not to get interrupted during a transfer.
> One example is the EC (Embedded Controller) on Chromebooks.  The
> Chrome OS EC will drop a transfer if more than ~8ms passes between the
> chip select being asserted and the transfer finishing.
>
> The SPI framework already has code to handle the case where transfers
> are timing senstive.  It can set its message pumping thread to
> realtime to to minimize interruptions during the transfer.  However,
> at the moment, this mode can only be requested by a SPI controller.
> Let's allow the drivers for SPI devices to also request this mode.
>
> NOTE: at the moment if a given device on a bus says that it's timing
> sensitive then we'll pump all messages on that bus at high priority.
> It is possible we might want to relax this in the future but it seems
> like it should be fine for now.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Nitpick: I would use 'rt' instead of 'timing_sensitive' as name for the
new variable.

Otherwise:

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
>  drivers/spi/spi.c       | 34 ++++++++++++++++++++++++++++------
>  include/linux/spi/spi.h |  3 +++
>  2 files changed, 31 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 0597f7086de3..d117ab3adafa 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -1367,10 +1367,30 @@ static void spi_pump_messages(struct kthread_work *work)
>         __spi_pump_messages(ctlr, true);
>  }
>
> -static int spi_init_queue(struct spi_controller *ctlr)
> +/**
> + * spi_boost_thread_priority - set the controller to pump at realtime priority
> + * @ctlr: controller to boost priority of
> + *
> + * This can be called because the controller requested realtime priority
> + * (by setting the ->rt value before calling spi_register_controller()) or
> + * because a device on the bus said that its transfers were timing senstive.
> + *
> + * NOTE: at the moment if any device on a bus says it is timing sensitive then
> + * all the devices on this bus will do transfers at realtime priority.  If
> + * this eventually becomes a problem we may see if we can find a way to boost
> + * the priority only temporarily during relevant transfers.
> + */
> +static void spi_boost_thread_priority(struct spi_controller *ctlr)
>  {
>         struct sched_param param = { .sched_priority = MAX_RT_PRIO - 1 };
>
> +       dev_info(&ctlr->dev,
> +               "will run message pump with realtime priority\n");
> +       sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
> +}
> +
> +static int spi_init_queue(struct spi_controller *ctlr)
> +{
>         ctlr->running = false;
>         ctlr->busy = false;
>
> @@ -1390,11 +1410,8 @@ static int spi_init_queue(struct spi_controller *ctlr)
>          * request and the scheduling of the message pump thread. Without this
>          * setting the message pump thread will remain at default priority.
>          */
> -       if (ctlr->rt) {
> -               dev_info(&ctlr->dev,
> -                       "will run message pump with realtime priority\n");
> -               sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
> -       }
> +       if (ctlr->rt)
> +               spi_boost_thread_priority(ctlr);
>
>         return 0;
>  }
> @@ -2985,6 +3002,11 @@ int spi_setup(struct spi_device *spi)
>
>         spi_set_cs(spi, false);
>
> +       if (spi->timing_sensitive && !spi->controller->rt) {
> +               spi->controller->rt = true;
> +               spi_boost_thread_priority(spi->controller);
> +       }
> +
>         dev_dbg(&spi->dev, "setup mode %d, %s%s%s%s%u bits/w, %u Hz max --> %d\n",
>                         (int) (spi->mode & (SPI_CPOL | SPI_CPHA)),
>                         (spi->mode & SPI_CS_HIGH) ? "cs_high, " : "",
> diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
> index 053abd22ad31..ef6bdd4d25f2 100644
> --- a/include/linux/spi/spi.h
> +++ b/include/linux/spi/spi.h
> @@ -109,6 +109,8 @@ void spi_statistics_add_transfer_stats(struct spi_statistics *stats,
>   *     This may be changed by the device's driver, or left at the
>   *     default (0) indicating protocol words are eight bit bytes.
>   *     The spi_transfer.bits_per_word can override this for each transfer.
> + * @timing_sensitive: Transfers for this device are senstive to timing
> + *     so we should do our transfer at high priority.
>   * @irq: Negative, or the number passed to request_irq() to receive
>   *     interrupts from this device.
>   * @controller_state: Controller's runtime state
> @@ -143,6 +145,7 @@ struct spi_device {
>         u32                     max_speed_hz;
>         u8                      chip_select;
>         u8                      bits_per_word;
> +       bool                    timing_sensitive;
>         u32                     mode;
>  #define        SPI_CPHA        0x01                    /* clock phase */
>  #define        SPI_CPOL        0x02                    /* clock polarity */
> --
> 2.21.0.1020.gf2820cf01a-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
