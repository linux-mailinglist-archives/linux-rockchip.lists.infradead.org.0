Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E646D1D021
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 21:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPQE/SEiwWBt4Q8riwg96Ic04gGJrTIzZnzCrFrlpy8=; b=FUjgiPWva7ZiX+
	bl/BSENE+NlTkHOQ3V7jLrCkbcH+Msb2mXKDi5YkjVgPb4Hs9WkG28aH48ByRfZ7CRvC4kp3n8co6
	xhXQ9cHe89hPbPzAsB5S4D9Ul2882liWI3eGbvfd65fTH9wzO+YY0Qbhg/yFIklWa81HzVBx8/qS+
	yOLp0wuP5CmtFhvFmzX9f1KIpPG314BntkNbR6FXAxuy14SHxW418suv0TgzQeVeFdXcft28INsWZ
	F+Jpg2+fLzM5gkIPYfUD6eXwbRf9XQ8pLVZHQ2La7cRLWFgrNb/QhGDg9zysEPH94AU6Tnda/NPzG
	EsqJCxe/8xhe8uXoZJSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdMA-00085E-7M; Tue, 14 May 2019 19:44:58 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdM6-00084r-Qe
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 19:44:56 +0000
Received: by mail-yw1-xc42.google.com with SMTP id w18so225020ywa.12
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 12:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WWNzgUR578IGEFBbLtpCrpyvIXcz+Pq8uV/vbHZGD+s=;
 b=OXIGVEAclJ24CckrLwHBe7KOlCnYTPq5OOSitVLOpgVht6ZiCChl6+yJ7aViSYPpGG
 9HvafLnLPzRF7WTia1W/ogZktH7Y1zNQdDO5C4+g+ctGVR8yqDtV789qJ/hmv0u79aWn
 N1Gh12znkPe1RXUlTVzjwqOTzT8BP/iDSGPg4wvQktMNZxi4o5Gnti4yFH0njCQSYr90
 QeRfMooTXFqqP4heorGGkr/7435EboXPhnO1GLpleZQNJtVFJVhew8xXfSk9wpSMbcis
 H8CMdDo7bs4IaRmG9Ahp7GgrHPIpHiD+p2RDNOqGL+8ERsu32UKtkDtqUAm67ugQ4DDB
 L/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WWNzgUR578IGEFBbLtpCrpyvIXcz+Pq8uV/vbHZGD+s=;
 b=n3/pNCz4pH3S5K0Kyzf3rjwPl0Y16xrZ2J7MJj51sB5Wfv7vNejzt9OIr5I1JAuwKN
 kZEpP1BDxSCYXguLMrqzxIbQE+vOcJPffHBUphQQ+vsiImmcRH0HHOaARa4oQI2dsSdE
 IDNWm9Em8oZYRnNPk05dklvMlfrFehX1Xkb+7/8k2tTYH6AnPDvpmgifR7tHqZ3uA+pJ
 Jr0VGXFzbhKjhSY1ZEejWruA4PV9AaB8oGqYqinhtmgEOk8xuE6nNOZKMNyEcVpRx9+7
 QBv6+MTid6ChfT0Thnob1kSliuRru40tWMKHIlIGIjWSSmMRJ3Fo6XxAlK4rpUhYS5Tb
 XSCA==
X-Gm-Message-State: APjAAAWptdtq8BXML6iwlP2S2nEh4Nt+MHOH4UHe8y4reiM8899ivBV7
 CTruFhM23stg33DfwbUrsUGlia8S5rILf6viZwc6mQ==
X-Google-Smtp-Source: APXvYqx9Q+7nW0k0HhrbLDn+euVlJ8+dDDSqHxkodW9CqTuwRx1EbaZHRhc2S2IKSuQF/Pyrgiz6q2gHxOQRNronuo4=
X-Received: by 2002:a81:2513:: with SMTP id l19mr13039829ywl.299.1557863093359; 
 Tue, 14 May 2019 12:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190514183935.143463-1-dianders@chromium.org>
 <20190514183935.143463-3-dianders@chromium.org>
In-Reply-To: <20190514183935.143463-3-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Tue, 14 May 2019 12:44:42 -0700
Message-ID: <CABXOdTdiEgF2Jypha1qZ4s1X2bkYqVTmT7XNYge19WQtSarSVw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] spi: Allow SPI devices to request the pumping
 thread be realtime
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124454_890579_B4DCE58A 
X-CRM114-Status: GOOD (  27.21  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Tue, May 14, 2019 at 11:40 AM Douglas Anderson <dianders@chromium.org> wrote:
>
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

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
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
>         __spi_pump_messages(ctlr, true);
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
> @@ -1387,11 +1409,8 @@ static int spi_init_queue(struct spi_controller *ctlr)
>          * request and the scheduling of the message pump thread. Without this
>          * setting the message pump thread will remain at default priority.
>          */
> -       if (ctlr->rt) {
> -               dev_info(&ctlr->dev,
> -                       "will run message pump with realtime priority\n");
> -               sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
> -       }
> +       if (ctlr->rt)
> +               spi_set_thread_rt(ctlr);
>
>         return 0;
>  }
> @@ -2982,6 +3001,11 @@ int spi_setup(struct spi_device *spi)
>
>         spi_set_cs(spi, false);
>
> +       if (spi->rt && !spi->controller->rt) {
> +               spi->controller->rt = true;
> +               spi_set_thread_rt(spi->controller);
> +       }
> +
>         dev_dbg(&spi->dev, "setup mode %d, %s%s%s%s%u bits/w, %u Hz max --> %d\n",
>                         (int) (spi->mode & (SPI_CPOL | SPI_CPHA)),
>                         (spi->mode & SPI_CS_HIGH) ? "cs_high, " : "",
> diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
> index 053abd22ad31..15505c2485d6 100644
> --- a/include/linux/spi/spi.h
> +++ b/include/linux/spi/spi.h
> @@ -109,6 +109,7 @@ void spi_statistics_add_transfer_stats(struct spi_statistics *stats,
>   *     This may be changed by the device's driver, or left at the
>   *     default (0) indicating protocol words are eight bit bytes.
>   *     The spi_transfer.bits_per_word can override this for each transfer.
> + * @rt: Make the pump thread real time priority.
>   * @irq: Negative, or the number passed to request_irq() to receive
>   *     interrupts from this device.
>   * @controller_state: Controller's runtime state
> @@ -143,6 +144,7 @@ struct spi_device {
>         u32                     max_speed_hz;
>         u8                      chip_select;
>         u8                      bits_per_word;
> +       bool                    rt;
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
