Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90191A5D0
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 02:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8rrIbZ3T/U4Y8MpMm7h4fPS34uuFCaOGZ3olyMTJZ8=; b=Nw01Qm7A7Zlht1
	lGhGUe859G+ViGMNSUTwo1iq8vT0PcKaNl/g0tbarjHrnWm1m/pwA9zKviWyFFIjkIv8uUdRdWRAx
	anZBzJUYhwpH6jgkDbWrQhhYTlkhkiudwVl14YafSETa5v09iARJNC1uqiEadqQmh2gu1++41F3sR
	lRnII/yaci0NdJ/VZ6neqD/wEQ8RiXz+2mDbwCl8D66W9HLIeqrHNjlKfEFsDYMN1pXiUVEhdvPp9
	jm8RNlp1PJdAJQFaUwEzkwYUWn0r0Nwk8zOGB+naiGmIMiGEgj3qAlY08DhBVEAJnpTqFCCB9Ard2
	l1hKSIzudTj4DhdeWQwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPFwt-0004hj-D4; Sat, 11 May 2019 00:33:11 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPFwq-0004h0-O6
 for linux-rockchip@lists.infradead.org; Sat, 11 May 2019 00:33:10 +0000
Received: by mail-yw1-xc41.google.com with SMTP id b74so6123546ywe.5
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 17:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ye4xjLBtskl0qaTIrAIO0OuPNKdvzfw2Zbbyb7AMX+0=;
 b=tk+Cia6LQWUyTR2QMWtaxW4xlLnam23BiAPZUU497NNekR9TLFNsc1GQjiOqvwJsUK
 pjqKmrZUuYrzIK7JIClULwKQP+798D8yl3A3DUjbdS0ftesLBYyvWtozavQK3YYGJwrw
 JZPXFPBFF0aUjzuP2ygJ8/VhrH9g6bA1XsXhXnT0MBh4AvNDL0qgZmnOFN/IDbnLerZ0
 d9c7SqY/0cxMjhF+qX8cJRxQ/6utbLyCH3NTvbdqtAjJBHDu9y2CDKEzpR7x1OQKibPF
 7AZiaZL85aRsBGJ+Kb4ynkyXbkfUhLQfFG8PZ3HG1+YpXRYsziNC+J4bQshJb5zrcy36
 L4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ye4xjLBtskl0qaTIrAIO0OuPNKdvzfw2Zbbyb7AMX+0=;
 b=P96AL2azBZnLjBURGeB6xkCK2G3VRYdGaLQvp5KcPZnRiVwdnjQeWbb27/aQKWVXCx
 LeZ1R7Vq2StqF1iXx4oQfp6yeFGUqQFjZBFEEF9rWEmYPscO2a7rlURLw+l4a6gOW885
 gh84qqSAquAG66bnSKbsIX0v/s37K+GpCWsk8976jttReODZC09F2/4kayXtSDi4o0Xf
 Aa5f+9VOA2g5r1jP5SpyQ3J2WO1CkXHTvkkJm2daDWG1LJB045r5ixADRzgFJt7iu8dm
 emP2QS1lJhV2XEX21TLHIILOe9qe4PyUEvhN8z1Vg86Om8OsARaEoDDFW8v/W7GqosCC
 FVBA==
X-Gm-Message-State: APjAAAXjl8bINVNVFjFitsewTnQqMoQejlRoIFREdf3ja4vQ8MurnNoG
 YyxLmVjO3Ugy1scpx5O44U7v6/2NeCOFq0x2+ZLw0A==
X-Google-Smtp-Source: APXvYqzXf5QXyZblKWUlxEvpqIOeU0JlCpHdy7/HAbwCQeXRVq6sHeM47rrhypwookSlCy+pVIIa/ci8nY9S8yxXwtg=
X-Received: by 2002:a5b:404:: with SMTP id m4mr7375530ybp.282.1557534787785;
 Fri, 10 May 2019 17:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
In-Reply-To: <20190510223437.84368-5-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Fri, 10 May 2019 17:32:57 -0700
Message-ID: <CABXOdTcNJNKfOj8e5TGPmCRZsZS8UQGwqC42hrOjm9t216c9JQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_173308_795588_9AC24D71 
X-CRM114-Status: GOOD (  16.54  )
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
 linux-kernel <linux-kernel@vger.kernel.org>,
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
Anderson, <linux-kernel@vger.kernel.org>

> This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.
>
> We have a better solution in the patch ("platform/chrome: cros_ec_spi:
> Set ourselves as timing sensitive").  Let's revert the uglier and less
> reliable solution.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
>  drivers/platform/chrome/cros_ec_spi.c | 80 ++-------------------------
>  1 file changed, 6 insertions(+), 74 deletions(-)
>
> diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
> index 757a115502ec..70ff1ad09012 100644
> --- a/drivers/platform/chrome/cros_ec_spi.c
> +++ b/drivers/platform/chrome/cros_ec_spi.c
> @@ -75,27 +75,6 @@ struct cros_ec_spi {
>         unsigned int end_of_msg_delay;
>  };
>
> -typedef int (*cros_ec_xfer_fn_t) (struct cros_ec_device *ec_dev,
> -                                 struct cros_ec_command *ec_msg);
> -
> -/**
> - * struct cros_ec_xfer_work_params - params for our high priority workers
> - *
> - * @work: The work_struct needed to queue work
> - * @fn: The function to use to transfer
> - * @ec_dev: ChromeOS EC device
> - * @ec_msg: Message to transfer
> - * @ret: The return value of the function
> - */
> -
> -struct cros_ec_xfer_work_params {
> -       struct work_struct work;
> -       cros_ec_xfer_fn_t fn;
> -       struct cros_ec_device *ec_dev;
> -       struct cros_ec_command *ec_msg;
> -       int ret;
> -};
> -
>  static void debug_packet(struct device *dev, const char *name, u8 *ptr,
>                          int len)
>  {
> @@ -371,13 +350,13 @@ static int cros_ec_spi_receive_response(struct cros_ec_device *ec_dev,
>  }
>
>  /**
> - * do_cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
> + * cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
>   *
>   * @ec_dev: ChromeOS EC device
>   * @ec_msg: Message to transfer
>   */
> -static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> -                                  struct cros_ec_command *ec_msg)
> +static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> +                               struct cros_ec_command *ec_msg)
>  {
>         struct ec_host_response *response;
>         struct cros_ec_spi *ec_spi = ec_dev->priv;
> @@ -514,13 +493,13 @@ static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
>  }
>
>  /**
> - * do_cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
> + * cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
>   *
>   * @ec_dev: ChromeOS EC device
>   * @ec_msg: Message to transfer
>   */
> -static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> -                                  struct cros_ec_command *ec_msg)
> +static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> +                               struct cros_ec_command *ec_msg)
>  {
>         struct cros_ec_spi *ec_spi = ec_dev->priv;
>         struct spi_transfer trans;
> @@ -632,53 +611,6 @@ static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
>         return ret;
>  }
>
> -static void cros_ec_xfer_high_pri_work(struct work_struct *work)
> -{
> -       struct cros_ec_xfer_work_params *params;
> -
> -       params = container_of(work, struct cros_ec_xfer_work_params, work);
> -       params->ret = params->fn(params->ec_dev, params->ec_msg);
> -}
> -
> -static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
> -                                struct cros_ec_command *ec_msg,
> -                                cros_ec_xfer_fn_t fn)
> -{
> -       struct cros_ec_xfer_work_params params;
> -
> -       INIT_WORK_ONSTACK(&params.work, cros_ec_xfer_high_pri_work);
> -       params.ec_dev = ec_dev;
> -       params.ec_msg = ec_msg;
> -       params.fn = fn;
> -
> -       /*
> -        * This looks a bit ridiculous.  Why do the work on a
> -        * different thread if we're just going to block waiting for
> -        * the thread to finish?  The key here is that the thread is
> -        * running at high priority but the calling context might not
> -        * be.  We need to be at high priority to avoid getting
> -        * context switched out for too long and the EC giving up on
> -        * the transfer.
> -        */
> -       queue_work(system_highpri_wq, &params.work);
> -       flush_work(&params.work);
> -       destroy_work_on_stack(&params.work);
> -
> -       return params.ret;
> -}
> -
> -static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> -                               struct cros_ec_command *ec_msg)
> -{
> -       return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_pkt_xfer_spi);
> -}
> -
> -static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> -                               struct cros_ec_command *ec_msg)
> -{
> -       return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_cmd_xfer_spi);
> -}
> -
>  static void cros_ec_spi_dt_probe(struct cros_ec_spi *ec_spi, struct device *dev)
>  {
>         struct device_node *np = dev->of_node;
> --
> 2.21.0.1020.gf2820cf01a-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
