Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3C9A3D35
	for <lists+linux-rockchip@lfdr.de>; Fri, 30 Aug 2019 19:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwMgzinF99W5hS/iEkjbhSM6O5uQC2hQEANBIqiTYRU=; b=mLM9WHovH8O5qT
	vuWwnr6NVb7fwcRjMyo7Hqx2xx+ZBOfR4VSoWgoqeoEh+JC7e8YWq1pbzgmjVQ5MqYHm3gqZjj8ww
	ww9u5t7MONsZ10/az8NxxUTB6kbi8qILN9NCB0Zr5dHPTtFJ7k8S2uGXGKuSmjyGMpdUXCv3MGWpj
	WXMMXDrO5T4BW1bWBIdgvMQuk0xemg+9Tu801/xhjU328JR+gKmH1VNfGjm0FYjOI068nH9M/WlSC
	EBh62H59Z5gnOZXEowcxmNjGIpNUzDTf2OdCSNHx6EPMh+3F7aGEIonzvJixcGOLe0ryTb2IvqHRX
	0x9HLdfn2A2fYrtbzbrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3l15-0003gL-47; Fri, 30 Aug 2019 17:48:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3l10-0003fu-U5
 for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2019 17:48:52 +0000
Received: from [104.132.1.107] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i3l0o-0005xA-HL; Fri, 30 Aug 2019 19:48:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v3 2/6] pwm: let pwm_get_state() return the last
 implemented state
Date: Fri, 30 Aug 2019 19:48:35 +0200
Message-ID: <5802279.ETANMDGNFP@phil>
In-Reply-To: <20190824153707.13746-3-uwe@kleine-koenig.org>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-3-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_104851_124026_8E8B3F51 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Patrick Havelange <patrick.havelange@essensium.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, kernel@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 24. August 2019, 17:37:03 CEST schrieb Uwe Kleine-K=F6nig:
> When pwm_apply_state() is called the lowlevel driver usually has to
> apply some rounding because the hardware doesn't support nanosecond
> resolution. So let pwm_get_state() return the actually implemented state
> instead of the last applied one if possible.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

With this applied, the display brightness on my rk3399-gru-scarlet gets
inverted. Now it's very bright on level 1 and very dim on the max level.

According to the debugfs, the inverted state changes:

OLD STATE:
----------
root@localhost:~# cat /debug/pwm
platform/ff420030.pwm, 1 PWM device
 pwm-0   (ppvar-bigcpu-pwm    ): requested enabled period: 3334 ns duty: 33=
1 ns polarity: normal

platform/ff420020.pwm, 1 PWM device
 pwm-0   (ppvar-litcpu-pwm    ): requested enabled period: 3334 ns duty: 41=
4 ns polarity: normal

platform/ff420010.pwm, 1 PWM device
 pwm-0   (backlight           ): requested enabled period: 999996 ns duty: =
941148 ns polarity: normal

platform/ff420000.pwm, 1 PWM device
 pwm-0   (ppvar-gpu-pwm       ): requested enabled period: 3334 ns duty: 33=
34 ns polarity: normal

NEW STATE:
----------
root@localhost:~# cat /debug/pwm =

platform/ff420030.pwm, 1 PWM device
 pwm-0   (ppvar-bigcpu-pwm    ): requested enabled period: 3334 ns duty: 33=
1 ns polarity: normal

platform/ff420020.pwm, 1 PWM device
 pwm-0   (ppvar-litcpu-pwm    ): requested enabled period: 3334 ns duty: 41=
4 ns polarity: normal

platform/ff420010.pwm, 1 PWM device
 pwm-0   (backlight           ): requested enabled period: 999996 ns duty: =
941148 ns polarity: inverse

platform/ff420000.pwm, 1 PWM device
 pwm-0   (ppvar-gpu-pwm       ): requested enabled period: 3334 ns duty: 33=
34 ns polarity: normal


And the reason is below.

> ---
>  drivers/pwm/core.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
> index 72347ca4a647..92333b89bf02 100644
> --- a/drivers/pwm/core.c
> +++ b/drivers/pwm/core.c
> @@ -473,7 +473,14 @@ int pwm_apply_state(struct pwm_device *pwm, struct p=
wm_state *state)
>  		if (err)
>  			return err;
>  =

> -		pwm->state =3D *state;
> +		/*
> +		 * .apply might have to round some values in *state, if possible
> +		 * read the actually implemented value back.
> +		 */
> +		if (chip->ops->get_state)
> +			chip->ops->get_state(chip, pwm, &pwm->state);
> +		else
> +			pwm->state =3D *state;

This should probably become
>-		pwm->state =3D *state;
> +
> +		/*
> +		 * .apply might have to round some values in *state, if possible
> +		 * read the actually implemented value back.
> +		 */
> +		if (chip->ops->get_state)
> +			chip->ops->get_state(chip, pwm, &pwm->state);

so always initialize the state to the provided one and then let the driver
override values?

The inversion case stems from the Rockchip pwm driver (wrongly?) only
setting the polarity field when actually inverted, so here the polarity fie=
ld
probably never actually got set at all.

But while we should probably fix the rockchip driver to set polarity all the
time, this is still being true for possible future state-fields, which also
wouldn't get initialzed from all drivers, which might need an adaption
first?


Heiko


>  	} else {
>  		/*
>  		 * FIXME: restore the initial state in case of error.
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
