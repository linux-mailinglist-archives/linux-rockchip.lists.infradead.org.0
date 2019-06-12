Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDA742767
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 15:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02Bh1OXJR28PsicVuh2C1zTSrP6YsO9DWuveIUfTGHk=; b=jxABsmhaRHZD0h
	rU0+SMTZoAb/7f/P2KXeo+7jTjeZf4BadTkfv4stce1b+rCkyGICNZEfJtubQZKnLOh6epz3r+W2e
	Kebbt/Fe44m0pQHiAY42iJLCD83XC7ruKqrLSobYzEY5TSrQ+FJ3Za7IdywuX1vPd6xJ0/a23a7fg
	g7lw11/Oy+azkDrdFRMA9lmokBX+AbptUD/PhHAmZmA4DN3PL5h144s0JR7ugdvBc7q4PcBxz65Wb
	8pcnIjyj1xG5BpeqLUZC2DssrUFGGRc7K6JVzUg/9ZVzK9WpKGvJmcFxdCl/QQ/QsujI3gUCg6c2X
	ZanYvtb8Xwks6aYkK5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3GW-0004Kv-Gd; Wed, 12 Jun 2019 13:26:12 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3GS-0004KL-UE
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 13:26:10 +0000
Received: by mail-vk1-xa42.google.com with SMTP id b69so3264059vkb.3
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 06:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E7fySMumjNmRNmMY5t+/ORC71GvUDcf7jQJsz2Lmu8Y=;
 b=QYWBrnNjzTR4SGTlmO+2dMnBv0gF7OVThMta1UF3J+3SU6BeS6RM+NzORZ66PxnWMr
 TN4VaBhSU8xmyY+EpiRD7RUp/3nb+aJxMFRBITrHO7pf7VOLwfr75hgtcrdjNdhikPqg
 CQ0xBkMxoL13nkJCidmvZ5LkHGd1qFz+h1IAO85qJdsWiPFmVRRH9ubM6QwTjpUo0lRH
 l8+unLl6yS22kj5G2/kesq8q0bzn8XxOe56vJ7Nwgq1hxtYfcbCqgmfsl9UPsih6Eq4f
 44D0bXKixT4b/tmZKKQrVAKKLo9+5lz4OVfKHUOuvLssmnlfk4kDGpVhZNeT0V3qZoSs
 Ezrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7fySMumjNmRNmMY5t+/ORC71GvUDcf7jQJsz2Lmu8Y=;
 b=udHcQtQuiixxx51E2EX3Y0Sr0+D729nkHbUaOjENVD2vDY4wkJ1HvioDGTDPuEKG9w
 deSjrD4PyEY4RkKRYiURq1BOg8f7uLcWCnV3Q/J1dw3QKH8euF9IPC/C6uz+PF79oGbl
 uEhKUV5rxF60qbikfOTlc9Ajop7q3VxHLjY/Pymbovz2FEb2yHYCPpp7t1cG2/Cg8T+r
 wwvA/tjfquRlsv82Mj1oMWShYkAAkwyL3VhanlmIJx2CnrSwpY3u6pLvB6Q3KGv1PmZo
 V+ZS/jZNgFNXPUL33GBItUJFUx/15WAA+BnJf8ym6Aa3QI2x5W2rxFwknBrE6yt0VErs
 Z+IQ==
X-Gm-Message-State: APjAAAV++AjrtCZJzQMy/n1lN0IP19c5AXg/GiN7XN9RPRmx2C1sqPsP
 beEICghbWwxeGDmVPuOTwwAOsD86qRBdA5+7yszelA==
X-Google-Smtp-Source: APXvYqzHLztZ6A07mA3L0RxrvDr4TaNWEVgx7eQUPB1lNxzINC6SuMv7jHQOr/DXwamjqJh6KLqVETMYT0iIgnB+Yjs=
X-Received: by 2002:ac5:c2d2:: with SMTP id i18mr23129212vkk.36.1560345967778; 
 Wed, 12 Jun 2019 06:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-3-dianders@chromium.org>
In-Reply-To: <20190607223716.119277-3-dianders@chromium.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jun 2019 15:25:31 +0200
Message-ID: <CAPDyKFpdkkzkbSy-uWL8TwdNFjJi10au7ZDOYjoWuDzftpoNsQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_062608_981126_FBB0068F 
X-CRM114-Status: GOOD (  33.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list@cypress.com, Ritesh Harjani <riteshh@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Naveen Gupta <naveen.gupta@cypress.com>, brcm80211-dev-list.pdl@broadcom.com,
 netdev@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 8 Jun 2019 at 00:37, Douglas Anderson <dianders@chromium.org> wrote:
>
> Normally when the MMC core sees an "-EILSEQ" error returned by a host
> controller then it will trigger a retuning of the card.  This is
> generally a good idea.
>
> However, if a command is expected to sometimes cause transfer errors
> then these transfer errors shouldn't cause a re-tuning.  This
> re-tuning will be a needless waste of time.  One example case where a
> transfer is expected to cause errors is when transitioning between
> idle (sometimes referred to as "sleep" in Broadcom code) and active
> state on certain Broadcom WiFi cards.  Specifically if the card was
> already transitioning between states when the command was sent it
> could cause an error on the SDIO bus.
>
> Let's add an API that the SDIO card drivers can call that will
> temporarily disable the auto-tuning functionality.  Then we can add a
> call to this in the Broadcom WiFi driver and any other driver that
> might have similar needs.
>
> NOTE: this makes the assumption that the card is already tuned well
> enough that it's OK to disable the auto-retuning during one of these
> error-prone situations.  Presumably the driver code performing the
> error-prone transfer knows how to recover / retry from errors.  ...and
> after we can get back to a state where transfers are no longer
> error-prone then we can enable the auto-retuning again.  If we truly
> find ourselves in a case where the card needs to be retuned sometimes
> to handle one of these error-prone transfers then we can always try a
> few transfers first without auto-retuning and then re-try with
> auto-retuning if the first few fail.
>
> Without this change on rk3288-veyron-minnie I periodically see this in
> the logs of a machine just sitting there idle:
>   dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ
>
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Note that are are a whole boatload of different ways that we could
> provide an API for the Broadcom WiFi SDIO driver.  This patch
> illustrates one way but if maintainers feel strongly that this is too
> ugly and have a better idea then I can give it a shot too.  From a
> purist point of view I kinda felt that the "expect errors" really
> belonged as part of the mmc_request structure, but getting it into
> there meant changing a whole pile of core SD/MMC APIs.  Simply adding
> it to the host seemed to match the current style better and was a less
> intrusive change.
>
> Changes in v3:
> - Took out the spinlock since I believe this is all in one context.

This needs to be clarified, preferable also in a function header.

If I understand correctly, the SDIO func driver needs the host to be
claimed when it calls mmc_expect_errors_begin(). More importantly, it
also needs to be keep it claimed until after it had called
mmc_expect_errors_end(). Correct?

>
> Changes in v2:
> - Updated commit message to clarify based on discussion of v1.
>
>  drivers/mmc/core/core.c  | 19 +++++++++++++++++--
>  include/linux/mmc/core.h |  2 ++
>  include/linux/mmc/host.h |  1 +
>  3 files changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mmc/core/core.c b/drivers/mmc/core/core.c
> index 6db36dc870b5..bc109ec49406 100644
> --- a/drivers/mmc/core/core.c
> +++ b/drivers/mmc/core/core.c
> @@ -144,8 +144,9 @@ void mmc_request_done(struct mmc_host *host, struct mmc_request *mrq)
>         int err = cmd->error;
>
>         /* Flag re-tuning needed on CRC errors */
> -       if ((cmd->opcode != MMC_SEND_TUNING_BLOCK &&
> -           cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200) &&
> +       if (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
> +           cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200 &&
> +           !host->expect_errors &&
>             (err == -EILSEQ || (mrq->sbc && mrq->sbc->error == -EILSEQ) ||
>             (mrq->data && mrq->data->error == -EILSEQ) ||
>             (mrq->stop && mrq->stop->error == -EILSEQ)))
> @@ -2163,6 +2164,20 @@ int mmc_sw_reset(struct mmc_host *host)
>  }
>  EXPORT_SYMBOL(mmc_sw_reset);
>
> +void mmc_expect_errors_begin(struct mmc_host *host)
> +{
> +       WARN_ON(host->expect_errors);

Please remove the WARN_ON. If you believe there is a need for
reference counting, then please add that instead (but likely not in
the phase?).

> +       host->expect_errors = true;
> +}
> +EXPORT_SYMBOL_GPL(mmc_expect_errors_begin);
> +
> +void mmc_expect_errors_end(struct mmc_host *host)
> +{
> +       WARN_ON(!host->expect_errors);

Ditto.

> +       host->expect_errors = false;
> +}
> +EXPORT_SYMBOL_GPL(mmc_expect_errors_end);

These new APIs seems to be useful solely for SDIO. Even if it turns
out later that they can be made generic, I suggest to start with a
SDIO func API instead.

However, using a new host variable (->expect_errors) is fine by me.

> +
>  static int mmc_rescan_try_freq(struct mmc_host *host, unsigned freq)
>  {
>         host->f_init = freq;
> diff --git a/include/linux/mmc/core.h b/include/linux/mmc/core.h
> index 134a6483347a..02a13abf0cda 100644
> --- a/include/linux/mmc/core.h
> +++ b/include/linux/mmc/core.h
> @@ -178,6 +178,8 @@ int mmc_wait_for_cmd(struct mmc_host *host, struct mmc_command *cmd,
>
>  int mmc_hw_reset(struct mmc_host *host);
>  int mmc_sw_reset(struct mmc_host *host);
> +void mmc_expect_errors_begin(struct mmc_host *host);
> +void mmc_expect_errors_end(struct mmc_host *host);

The API prevents a new re-tune to be "scheduled" in case requests are
failing with -EILSEQ.

To better reflect that, may I suggest to rename this to
sdio_retune_crc_disable() and sdio_retune_crc_enable(). Or something
along those lines.


>  void mmc_set_data_timeout(struct mmc_data *data, const struct mmc_card *card);
>
>  #endif /* LINUX_MMC_CORE_H */
> diff --git a/include/linux/mmc/host.h b/include/linux/mmc/host.h
> index 43d0f0c496f6..8d553fb8c834 100644
> --- a/include/linux/mmc/host.h
> +++ b/include/linux/mmc/host.h
> @@ -398,6 +398,7 @@ struct mmc_host {
>         unsigned int            retune_now:1;   /* do re-tuning at next req */
>         unsigned int            retune_paused:1; /* re-tuning is temporarily disabled */
>         unsigned int            use_blk_mq:1;   /* use blk-mq */
> +       unsigned int            expect_errors:1; /* don't trigger retune upon errors */
>
>         int                     rescan_disable; /* disable card detection */
>         int                     rescan_entered; /* used with nonremovable devices */
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
>

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
