Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817581E1A27
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 06:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTA0j0eOWI7NrlAX2h+UOc+Zdgs210N8VtifzsFaEfc=; b=K4aDpam3XbDdzS
	5dhYabgg7HJvT9Q7rb3pWPt24G2gVLW/n3BRytNAqUle2BMasIJfertsJ+zABGjRPrU+4r48+EDH3
	jrtl/33lwX7ymQeh7s7DieGe17DUTjr01iTH1NFieyMQ8AZcCSN4rJFe1SvyNgZq5nnZXmh55omHP
	ZrAJXyarpx35jEe36IJVpdTChv7SASKwU3urUKFShpX8wLBT3zCGBCkJ6fH8D1y5XlXORo/Tj9d+Z
	RmDZrIwcgSHrUbYVkF8e0xp5dt2+bwKTKs4iNLTJxFHksDqGIqLyW+C/7rO26AxfQf/12l8NlK6tV
	iTKEG0ocTbvqYuadL+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQw3-0002DP-BO; Tue, 26 May 2020 04:11:27 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQvz-0002Cy-4R
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 04:11:25 +0000
Received: by mail-ed1-f66.google.com with SMTP id d24so16440961eds.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 May 2020 21:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qwrhb3F6v6rmID6TcLJEgSCTLDcXcn38JHGw/WeNYj8=;
 b=Nyei5l4fMYpgjFgojCGZwJtgdOVE+tbnCM7zuocR11NVSBl+T6iA1g75c+Ckw75Aty
 ehRhrXrlAHxWA+vmWUZ4zXt32j3+1Ew2uEz1+zlMJPxyRZ8b2pcNYNVO7exvz4nd2t2o
 HwFw4BIKCNQGFNE7kdpWF4WwE+7lCz0jblsxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qwrhb3F6v6rmID6TcLJEgSCTLDcXcn38JHGw/WeNYj8=;
 b=O6PtoGD2xLZopyFX8IIbhL8mOUf0SQkXy5HGYyYofq7UieGPoq8fUIH7z8Mi308bBc
 aIajq4skRLqdq0Kdq1AVncaRJ4wFG3RBpeUDfPLD2D/wVl4M1xYkCXm5OkxJpNkIZj/b
 iEOXjNCrQumjpawz6A78qVvywrQzLAWB88x9BFLCMckC/FC0PmADFycaUtbVteOz9vBd
 2S7McWfNuAaxjlo0uBOyyioqkXMt0XOKBjgXalr+nU+DuYgH1upSfEvnwchOoZRYvq6T
 AP70+IhjJVhcGsywCYgASpjNOT8bMbG2u+59hamTIsZVN8F3A9JnnDktzoBjCjjG1Psz
 1MbQ==
X-Gm-Message-State: AOAM532IUhtvRyaAMWhYP1X1jkbiE/fGph8/5Nd1ubAPHqCCW8jrKOZf
 n2omAb6mgfeZdSqCuf8yABq+X34YHwlQra9EUOT7eQ==
X-Google-Smtp-Source: ABdhPJx7XGRfoSjLav/pycmK7E1zmLkjpIkivNKnS52Xl/O5WUR7mO2RHSHTm91aqa+AJnwngk3KbAR1Jq7fQ17HGvo=
X-Received: by 2002:a50:a985:: with SMTP id n5mr18370973edc.338.1590466273500; 
 Mon, 25 May 2020 21:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
 <20200526033435.20235-3-frank.wang@rock-chips.com>
In-Reply-To: <20200526033435.20235-3-frank.wang@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 26 May 2020 09:41:02 +0530
Message-ID: <CAMty3ZDqLj9e_xV3Y5PHnEyTZ+CYsx5JV0NEh2vnK+nQznzywA@mail.gmail.com>
Subject: Re: [PATCH v6 12/16] usb: dwc3: add make compatible for rockchip
 platform
To: Frank Wang <frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_211123_599568_C3BA06D4 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, jianing.ren@rock-chips.com,
 Belisko Marek <marek.belisko@gmail.com>, Simon Glass <sjg@chromium.org>,
 wmc@rock-chips.com, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 William Wu <william.wu@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, chenjh@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 9:04 AM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> RK3399 Type-C PHY is required that must hold whole USB3.0 OTG controller
> in resetting to hold pipe power state in P2 before initializing the PHY.
> This commit fixed it and added device compatible for rockchip platform.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>  drivers/usb/dwc3/dwc3-generic.c | 33 +++++++++++++++++++++++++++------
>  1 file changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/usb/dwc3/dwc3-generic.c b/drivers/usb/dwc3/dwc3-generic.c
> index eabd53a36d..421e0be135 100644
> --- a/drivers/usb/dwc3/dwc3-generic.c
> +++ b/drivers/usb/dwc3/dwc3-generic.c
> @@ -24,6 +24,12 @@
>  #include <clk.h>
>  #include <usb/xhci.h>
>
> +struct dwc3_glue_data {
> +       struct clk_bulk         clks;
> +       struct reset_ctl_bulk   resets;
> +       fdt_addr_t regs;
> +};
> +
>  struct dwc3_generic_plat {
>         fdt_addr_t base;
>         u32 maximum_speed;
> @@ -47,6 +53,7 @@ static int dwc3_generic_probe(struct udevice *dev,
>         int rc;
>         struct dwc3_generic_plat *plat = dev_get_platdata(dev);
>         struct dwc3 *dwc3 = &priv->dwc3;
> +       struct dwc3_glue_data *glue = dev_get_platdata(dev->parent);
>
>         dwc3->dev = dev;
>         dwc3->maximum_speed = plat->maximum_speed;
> @@ -55,10 +62,22 @@ static int dwc3_generic_probe(struct udevice *dev,
>         dwc3_of_parse(dwc3);
>  #endif
>
> +       /*
> +        * It must hold whole USB3.0 OTG controller in resetting to hold pipe
> +        * power state in P2 before initializing TypeC PHY on RK3399 platform.
> +        */
> +       if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3")) {
> +               reset_assert_bulk(&glue->resets);
> +               udelay(1);

Need to include <linux/delay.h> to fix build warnings, maybe Kever
will do while applying?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
