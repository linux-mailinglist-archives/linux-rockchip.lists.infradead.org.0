Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22142116E05
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 14:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=okzDgj6Tt/BGX+xAyvX6kJL2YxRrq3/xbau1EZPwhvw=; b=Wb5Ur0Dlm/M3WoEtmS247oOb/
	TOGOa8x7klioOD9doHQJVBlL2TxGiwKkK5i6SFuwlQEXKVIe65i198hlRgM9EPBcrm9yxIbX8yJCk
	NXhdjnoEi7arlrNIgJI2Cavc0BbV2fRtVEt3UW/wencBhlZ+BfHOHmD/b/TnIQcVY22vbrWFL0jef
	s8vp5q8RdiwTqF5Xv/DCotXeuW242kZZQdopDOPOVu/qSOqmYLWOX9ox1bBq8i+XI2ZOh6SCI/Ccq
	JzYBk2cJAgDoBa8vW3h5sjkqF5+UzTvHGrGifLO7fCvqSGfMlAMaXLFlnxdnC6rfXC4BV2Z3Pn+Wt
	TrB/qL9Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJBB-0008Fg-16; Mon, 09 Dec 2019 13:34:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJB1-00086i-CS; Mon, 09 Dec 2019 13:34:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E694328;
 Mon,  9 Dec 2019 05:34:14 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5B0F3F718;
 Mon,  9 Dec 2019 05:34:12 -0800 (PST)
Subject: Re: [RFCv1 2/8] mfd: rk808: use syscore for RK805 PMIC shutdown
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Daniel Schultz <d.schultz@phytec.de>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <20191206184536.2507-3-linux.amoon@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f1327196-66c9-d152-c0ca-914d43d6f55e@arm.com>
Date: Mon, 9 Dec 2019 13:34:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191206184536.2507-3-linux.amoon@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_053415_510389_3F685A46 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 06/12/2019 6:45 pm, Anand Moon wrote:
> Use common syscore_shutdown for RK805 PMIC to do
> clean I2C shutdown, drop the unused pm_pwroff_prep_fn
> and pm_pwroff_fn function pointers.

Coincidentally, I've also been looking at RK805 for the sake of trying 
to get suspend to behave on my RK3328 box, and I've ended up with some 
slightly different cleanup patches - I'll tidy them up and post them for 
comparison as soon as I can.

> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>   drivers/mfd/rk808.c | 33 +++++++++++++++++----------------
>   1 file changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index e637f5bcc8bb..713d989064ba 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -467,16 +467,6 @@ static void rk808_update_bits(unsigned int reg, unsigned int mask,
>   			"can't write to register 0x%x: %x!\n", reg, ret);
>   }
>   
> -static void rk805_device_shutdown(void)
> -{
> -	rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
> -}
> -
> -static void rk805_device_shutdown_prepare(void)
> -{
> -	rk808_update_bits(RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SHUTDOWN_FUN);
> -}
> -
>   static void rk808_device_shutdown(void)
>   {
>   	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
> @@ -491,10 +481,23 @@ static void rk8xx_syscore_shutdown(void)
>   {
>   	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
>   
> -	if (system_state == SYSTEM_POWER_OFF &&
> -	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
> -		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
> -				SLPPIN_DN_FUN);
> +	if (system_state == SYSTEM_POWER_OFF) {
> +		dev_info(&rk808_i2c_client->dev, "System Shutdown Event\n");
> +
> +		switch (rk808->variant) {
> +		case RK805_ID:
> +			rk808_update_bits(RK805_GPIO_IO_POL_REG,
> +					SLP_SD_MSK, SHUTDOWN_FUN);
> +			rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);

Why this change? Shutdown via the SLEEP pin is working just fine on my 
box :/

Robin.

> +			break;
> +		case RK809_ID:
> +		case RK817_ID:
> +			rk808_update_bits(RK817_SYS_CFG(3),
> +					RK817_SLPPIN_FUNC_MSK, SLPPIN_DN_FUN);
> +			break;
> +		default:
> +			break;
> +		}
>   	}
>   }
>   
> @@ -565,8 +568,6 @@ static int rk808_probe(struct i2c_client *client,
>   		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
>   		cells = rk805s;
>   		nr_cells = ARRAY_SIZE(rk805s);
> -		rk808->pm_pwroff_fn = rk805_device_shutdown;
> -		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
>   		break;
>   	case RK808_ID:
>   		rk808->regmap_cfg = &rk808_regmap_config;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
