Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121A2C1995
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Sep 2019 23:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dy/GntgtJbiHsmtlJx9s+JoQ3s3GdXCcT2kFP7vhVI=; b=oUQF5qoZvVO1f9
	BcNvDM3+kFPUyjCA9rkgw6XrXaTxOEUJNxEnXBxrqagAYP8erVPDksEjeEuw0PhLczprheXPCKBVt
	NYyNCx7YpbHm7JuTofg/2YWQiIJhw+w4rPuYzCjn9tTY1QyED3t20G5R9VzbAkcJZkVulI1j464Pq
	06JgkyVHaraFkb7fjgD6TUZfjY7HJeWsIhfdAjS57sO2W0tSFDCxuHNp89vq1pwHtHF5MNksteCry
	fl2lOvtlVhp4Puu2+v73qB/B107VRWqzTXICQM0ETycnhVoeS/ADJ0dIm+q/eQAisEntuwbnZDqXi
	gAxQIez7s0Roq5SoXJPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEgdn-00029J-42; Sun, 29 Sep 2019 21:22:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEgdb-000226-98; Sun, 29 Sep 2019 21:21:52 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEgdL-0001at-6x; Sun, 29 Sep 2019 23:21:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Date: Sun, 29 Sep 2019 23:21:34 +0200
Message-ID: <6797961.eJj5WIFbM9@phil>
In-Reply-To: <20190919052822.10403-2-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_142151_468400_46001260 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Da Xue <da@lessconfused.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,

Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> ROC-PC is not able to boot linux console if PWM2_d is
> unattached to any pinctrl logic.
> 
> To be precise the linux boot hang with last logs as,
> ...
> .....
> [    0.003367] Console: colour dummy device 80x25
> [    0.003788] printk: console [tty0] enabled
> [    0.004178] printk: bootconsole [uart8250] disabled
> 
> In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> VDD_LOG. So, for normal working operations this needs to
> active and pull-down.
> 
> This patch fix, by attaching pinctrl active and pull-down
> the pwm2.

This looks highly dubious on first glance. The pwm subsystem nor
the Rockchip pwm driver do not do any pinctrl handling.

So I don't really see where that "active" pinctrl state is supposed
to come from.

Comparing with the pwm driver in the vendor tree I see that there
is such a state defined there. But that code there also looks strange
as that driver never again leaves this active state after entering it.

Also for example all the Gru devices run with quite a number of pwm-
regulators without needing additional fiddling with the pwm itself, so
I don't really see why that should be different here.

Heiko

> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 19f7732d728c..c53f3d571620 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -548,6 +548,8 @@
>  };
>  
>  &pwm2 {
> +	pinctrl-names = "active";
> +	pinctrl-0 = <&pwm2_pin_pull_down>;
>  	status = "okay";
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
