Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1146A596D
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 16:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8hLsSTjrnnOwU5/9T1zN0N8r9PSrTXqtKDbmyh19nE=; b=k8Mu3S4pLGiktN
	JpcZbdrrZn6KNm3isIT/I7NTZ/OHhmYbxCplJS6rwUyslZIoNx1AAcS4jE2X+ByYUuRNGt7813vzT
	Xam8lwxPHc/kMi1Vt40BFPrhZc9926V8UxbFQY6mwc+a1uOeWdeFdhOi/7JLY2eBXG8w7VjptAKkG
	Uj4FQbbtrnRiWHK+k/y2WQqYsjGScuFs2CgsZw6WatSi8/AgMH0kZoREJ5sef8CQD5KffZP4YrM3Z
	0yJnrLb3QRZHga56TXORSkPCilQsbXCzJQMNnHnuoqzGThtF/q60CmPpklN+ZA62Y0EJgvEkGvSDp
	1bi+8Bh3kHc276Bi9RBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nNm-0003ny-BJ; Mon, 02 Sep 2019 14:32:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nNi-0003nd-Ix
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 14:32:36 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4nNf-0000iY-PT; Mon, 02 Sep 2019 16:32:31 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4nNf-0007oZ-7u; Mon, 02 Sep 2019 16:32:31 +0200
Date: Mon, 2 Sep 2019 16:32:31 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 2/6] pwm: let pwm_get_state() return the last
 implemented state
Message-ID: <20190902143231.k2ugpv2oemceaequ@pengutronix.de>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-3-uwe@kleine-koenig.org>
 <5802279.ETANMDGNFP@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5802279.ETANMDGNFP@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_073234_627821_5E1F014E 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Aug 30, 2019 at 07:48:35PM +0200, Heiko Stuebner wrote:
> Am Samstag, 24. August 2019, 17:37:03 CEST schrieb Uwe Kleine-K=F6nig:
> > When pwm_apply_state() is called the lowlevel driver usually has to
> > apply some rounding because the hardware doesn't support nanosecond
> > resolution. So let pwm_get_state() return the actually implemented state
> > instead of the last applied one if possible.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> =

> With this applied, the display brightness on my rk3399-gru-scarlet gets
> inverted. Now it's very bright on level 1 and very dim on the max level.
> =

> According to the debugfs, the inverted state changes:
> =

> OLD STATE:
> ----------
> root@localhost:~# cat /debug/pwm
> platform/ff420030.pwm, 1 PWM device
>  pwm-0   (ppvar-bigcpu-pwm    ): requested enabled period: 3334 ns duty: =
331 ns polarity: normal
> =

> platform/ff420020.pwm, 1 PWM device
>  pwm-0   (ppvar-litcpu-pwm    ): requested enabled period: 3334 ns duty: =
414 ns polarity: normal
> =

> platform/ff420010.pwm, 1 PWM device
>  pwm-0   (backlight           ): requested enabled period: 999996 ns duty=
: 941148 ns polarity: normal
> =

> platform/ff420000.pwm, 1 PWM device
>  pwm-0   (ppvar-gpu-pwm       ): requested enabled period: 3334 ns duty: =
3334 ns polarity: normal
> =

> NEW STATE:
> ----------
> root@localhost:~# cat /debug/pwm =

> platform/ff420030.pwm, 1 PWM device
>  pwm-0   (ppvar-bigcpu-pwm    ): requested enabled period: 3334 ns duty: =
331 ns polarity: normal
> =

> platform/ff420020.pwm, 1 PWM device
>  pwm-0   (ppvar-litcpu-pwm    ): requested enabled period: 3334 ns duty: =
414 ns polarity: normal
> =

> platform/ff420010.pwm, 1 PWM device
>  pwm-0   (backlight           ): requested enabled period: 999996 ns duty=
: 941148 ns polarity: inverse
> =

> platform/ff420000.pwm, 1 PWM device
>  pwm-0   (ppvar-gpu-pwm       ): requested enabled period: 3334 ns duty: =
3334 ns polarity: normal
> =

> =

> And the reason is below.
> =

> > ---
> >  drivers/pwm/core.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
> > index 72347ca4a647..92333b89bf02 100644
> > --- a/drivers/pwm/core.c
> > +++ b/drivers/pwm/core.c
> > @@ -473,7 +473,14 @@ int pwm_apply_state(struct pwm_device *pwm, struct=
 pwm_state *state)
> >  		if (err)
> >  			return err;
> >  =

> > -		pwm->state =3D *state;
> > +		/*
> > +		 * .apply might have to round some values in *state, if possible
> > +		 * read the actually implemented value back.
> > +		 */
> > +		if (chip->ops->get_state)
> > +			chip->ops->get_state(chip, pwm, &pwm->state);
> > +		else
> > +			pwm->state =3D *state;
> =

> This should probably become
> >-		pwm->state =3D *state;
> > +
> > +		/*
> > +		 * .apply might have to round some values in *state, if possible
> > +		 * read the actually implemented value back.
> > +		 */
> > +		if (chip->ops->get_state)
> > +			chip->ops->get_state(chip, pwm, &pwm->state);
> =

> so always initialize the state to the provided one and then let the driver
> override values?

This feels wrong. There is another thread that adds a developer knob
that emits some warnings. Catching this kind of error with it would be a
good idea IMHO.

> The inversion case stems from the Rockchip pwm driver (wrongly?) only
> setting the polarity field when actually inverted, so here the polarity f=
ield
> probably never actually got set at all.
> =

> But while we should probably fix the rockchip driver to set polarity all =
the
> time, this is still being true for possible future state-fields, which al=
so
> wouldn't get initialzed from all drivers, which might need an adaption
> first?

Actually I would prefer that all drivers do it right and rely on this.

Thanks for testing
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
