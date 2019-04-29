Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A645DE782
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 18:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3l3pB7kL9OtUH/ikelVqfNwOldH67xBpDsRikq5ba24=; b=ldLc/afKQBBxXBOHPtmnuR42E
	36ujTsG0rPPw8gGAxeodmXJoyDs7L9DCsjY4dg+9PrlsIUD5sGoUvo7FQL/81xKHWomt3WXQUL1sK
	+U0GpaV/JqC6Fa6xXbVMXR2iy3WAscicecrg1a+gzP7JAhbhbD9Doir5XR/e/PCazDKh0OhqTsQJ8
	RNRM/gsZ4cNfPnHgiKALahJP9FQaJ0L9GbNHWBvjaOYfxSVK3MDYW5uiM9zazRL9IjIrPuzt54c/E
	mZ8/FTjVmHNHuxvwRKEKKcA0fspmzwQGhFL7OJ4Dk2dGRNYrPYP4VtmwT1i4AQ38FclFrQ5I9Kc0B
	/YB1YEKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8yc-0000ee-Dy; Mon, 29 Apr 2019 16:17:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8yY-0000dc-NT
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 16:17:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id b10so1554959wmj.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 09:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7MuCDJge4/0mQuYakHYtQWMkvS7qDdLIqKTBzfEl/Uk=;
 b=SEcdIvIqH+AyBMg/YztPsL17kx94vmCWPOB0bYeqJfidI7vKgXjw1KdMiXwCeQk2Bz
 Hh0IskW4kwmH4PRPOc9TUKEL+najOBoW5M3az/SWE57V+5KeEgWLVyH9Soc7J4XujrtJ
 lc9Aw7nfSDcqpZ/RanatCcriRU+9fQfq2jGiyTiemyE+w9ZwTZ5EWW0ilafGsj6wYkrC
 jAtUrleC7XUJJq7JDxHLolkHsehLoWluTbuy/NErldlMZ9bVHOrB03drfnpw0E3tBq1z
 LukPQFaLnruNxDMsXIFiBJkSZBzquei1SaGHP/h+fqzR3R2DaBaFU1RBlNbMz+g+KkL8
 Jbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7MuCDJge4/0mQuYakHYtQWMkvS7qDdLIqKTBzfEl/Uk=;
 b=A2fmWylUFHBqMasx4isCYX4+NaNN2/ZBDip5Z53SFZMgi1M/7jtV7q3OT8WgL65mEK
 IwXcxWpDH6lGz5x3dZqgGj4bS98nzpd40ZwZGdEsF+XGom8SvwkfFE3PJKYv7V3bgOay
 mGJWouaStas7R6iT9IRrJjJ6mRdfjrNTrEQ+vgBUGc5eubCEGiZKFAiZxHGAP+dKSIyH
 MMArrLOZIQPztu1WUZdBztgzmXjZ22SN5sQESgjooKcuIk/OIBoYkRGDwK6UJc0nBGkm
 BXWM+uRH67HzcJDWkJRjPQFn6+u9TO6SvQUiqXu380LB5Iuh8mTRftABn/ZA32T0KKui
 DniQ==
X-Gm-Message-State: APjAAAXLOtzb2ZMPM6BfnSOs/qcSsVuF2PCT38NCg/G/T2ppqPegqDfM
 ez68SAbqwsnRn8WB91ZCKEc=
X-Google-Smtp-Source: APXvYqwdA5gNM2S2Bwf8K+6P+IwPmPNSiEMupYHOOJ3RqB2bhiwwM9CgbfksIly7mlnsNqvxTNuJbQ==
X-Received: by 2002:a1c:7610:: with SMTP id r16mr3189278wmc.15.1556554671922; 
 Mon, 29 Apr 2019 09:17:51 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id q4sm35415065wrx.25.2019.04.29.09.17.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 09:17:50 -0700 (PDT)
Date: Mon, 29 Apr 2019 18:17:49 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190429161749.GD7747@ulmo>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <20190429110354.GB7747@ulmo>
 <20190429123102.7wfcdqusn24g5rm7@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190429123102.7wfcdqusn24g5rm7@pengutronix.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_091754_798921_5EDB1131 
X-CRM114-Status: GOOD (  43.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm <linux-pwm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Brian Norris <briannorris@chromium.org>, Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============6730447483608004427=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6730447483608004427==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BRE3mIcgqKzpedwo"
Content-Disposition: inline


--BRE3mIcgqKzpedwo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 29, 2019 at 02:31:02PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> On Mon, Apr 29, 2019 at 01:03:54PM +0200, Thierry Reding wrote:
> > On Mon, Apr 08, 2019 at 04:39:14PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > > On Mon, Apr 01, 2019 at 03:45:47PM -0700, Doug Anderson wrote:
> > > > Hi,
> > > >=20
> > > > On Sat, Mar 30, 2019 at 2:17 AM Heiko Stuebner <heiko@sntech.de> wr=
ote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > [adding two chromeos people, because veyron and gru are quite
> > > > > heavy users of the rockchip pwm for both backlight and regulators]
> > > > >
> > > > > Doug, Brian: patchwork patch is here:
> > > > > https://patchwork.kernel.org/patch/10851001/
> > > > >
> > > > > Am Dienstag, 12. M=C3=A4rz 2019, 22:46:03 CET schrieb Uwe Kleine-=
K=C3=B6nig:
> > > > > > The pwm-rockchip driver is one of only two PWM drivers which up=
dates the
> > > > > > state for the caller of pwm_apply_state(). This might have surp=
rising
> > > > > > results if the caller reuses the values expecting them to still
> > > > > > represent the same state.
> > > >=20
> > > > It may or may not be surprising, but it is well documented.  Specif=
ically:
> > > >=20
> > > >  * pwm_apply_state() - atomically apply a new state to a PWM device
> > > >  * @pwm: PWM device
> > > >  * @state: new state to apply. This can be adjusted by the PWM driv=
er
> > > >  *    if the requested config is not achievable, for example,
> > > >  *    ->duty_cycle and ->period might be approximated.
> > > >=20
> > > > I don't think your series updates that documentation, right?
> > > >=20
> > > >=20
> > > > > > Also note that this feedback was incomplete as
> > > > > > the matching struct pwm_device::state wasn't updated and so
> > > > > > pwm_get_state still returned the originally requested state.
> > > >=20
> > > > The framework handles that.  Take a look at pwm_apply_state()?  It =
does:
> > > >=20
> > > > ---
> > > >=20
> > > > err =3D pwm->chip->ops->apply(pwm->chip, pwm, state);
> > > > if (err)
> > > >     return err;
> > > >=20
> > > > pwm->state =3D *state;
> > >=20
> > > >=20
> > > > ---
> > > >=20
> > > > So I think it wasn't incomplete unless I misunderstood?
> > >=20
> > > You're right, I missed that the updated state was saved.
> > >=20
> > > > > > Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutron=
ix.de>
> > > > >
> > > > > I've tested this on both veyron and gru with backlight and pwm re=
gulator
> > > > > and at least both still come up, so
> > > > > Tested-by: Heiko Stuebner <heiko@sntech.de>
> > > > >
> > > > > But hopefully Doug or Brian could also provide another test-point.
> > > >=20
> > > > I'd definitely be concerned by this change.  Specifically for the P=
WM
> > > > regulator little details about exactly what duty cycle / period you
> > > > got could be pretty important.
> > > >=20
> > > > I guess the problem here is that pwm_get_state() doesn't actually c=
all
> > > > into the PWM drivers, it just returns the last state that was appli=
ed.
> > > > How does one get the state?  I guess you could change get_state() to
> > > > actually call into the PWM driver's get_state if it exists?  ...but
> > > > your patch set doesn't change that behavior...
> > >=20
> > > My intention here is more to make all drivers behave the same way and
> > > because only two drivers updated the pwm_state this was the variant I
> > > removed.
> > >=20
> > > When you say that the caller might actually care about the exact
> > > parameters I fully agree. In this case however the consumer should be
> > > able to know the result before actually applying it. So if you do
> > >=20
> > > 	pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =3D 12, ...})
> > >=20
> > > and this results in .period =3D 100 and .duty_cycle =3D 0 then probab=
ly the
> > > bad things you want to know about already happend. So my idea is a new
> > > function pwm_round_state() that does the adaptions to pwm_state witho=
ut
> > > applying it to the hardware. After that pwm_apply_state could do the
> > > following:
> > >=20
> > > 	rstate =3D pwm_round_state(pwm, state)
> > > 	pwm.apply(pwm, state)
> > > 	gstate =3D pwm_get_state(pwm)
> > >=20
> > > 	if rstate !=3D gstate:
> > > 		warn about problems
> >=20
> > I'm not sure this is really useful. I would expect that in most cases
> > where it is necessary to have an exact match between the requested state
> > and the actual state is important, you may not even get to warning about
> > problems because the system may shut down (e.g. the regulator might not
> > be outputting enough power to keep the system stable).
> >=20
> > I think it'd be far more useful to give consumers a way to request that
> > the state be applied strictly. I'm not sure how realistic that is,
> > though. Most PWMs have some sort of restrictions, and in most cases this
> > might still be okay. Perhaps some sort of permissible relative deviation
> > factor could be added to give more flexibility?
>=20
> I think in practise this isn't going to work. Consider the case that
> Brian cares about: "we do need to be as precise as possible with the
> duty:period ratio". So if we want 1/5 duty we might request:
>=20
> 	.duty_cycle =3D 100, .period =3D 500
>=20
> an are using pwm_set_state_exact(). Now consider this fails. What is the
> next value you should try?

The idea is that if the driver fails to set the exact state if that's
what was requested, then we just fail. If we really need an exact set
of values, then it doesn't make sense to offer the user alternatives
using rounding helpers.

On the other hand, if we introduce an error margin, we could make the
above work. Let's say the PWM regulator requires accuracy within 1%, we
could do something like this:

	state.duty_cycle =3D 100;
	state.period =3D 500;
	state.accuracy =3D 1; /* there's a slew of ways to encode this */
	pwm_apply_state(pwm, &state);

That way, the PWM driver can determine whether or not the ratio of
possible duty-cycle/period is accurate within that 1% requested by the
user:

	ratio =3D duty-cycle / period

	requested =3D 100 / 500
	possible =3D 99 / 498

	possible / requested ~=3D 0.993

In other words, possible is > 99% of requested and therefore within the
1% accuracy that pwm-regulator requested. The PWM driver can therefore
go ahead and program the selected set of values.

> It's hard to say without knowing why it failed. If however you could do
>=20
> 	mystate.duty_cycle =3D 100
> 	mystate.period =3D 500
> 	pwm_round_state(pwm, &mystate);
>=20
> and after that we have:
>=20
> 	mystate.duty_cycle =3D 99;
> 	mystate.period =3D 498;
>=20
> (because pwm_round_state is supposed to round down[1] and the hardware can
> implement multiples of 3 only). Then it is easier to determine the next
> state to try.

No, it's really not any easier to determine the next state to try. The
problem is that the consumer doesn't know anything about the
restrictions of the driver, and it shouldn't need to know. Given the
above, how is it supposed to know that the restriction is "multiple of
3". Just because the two values happen to be multiples of 3 doesn't mean
that's the restriction. Also, we really don't want every consumer in the
kernel to implement factorization (and whatnot) to guess what possible
constraints there could be.

Thierry

>=20
> Best regards
> Uwe
>=20
> [1] this isn't fixed yet, but I think it's sensible.
>=20
> --=20
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--BRE3mIcgqKzpedwo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzHI6oACgkQ3SOs138+
s6E37w//YefJYX6Z6JBbB/mqbLTpMmNQmImJslNWbDDViVQ9BfMpnH+GB2WBqq+j
2P/JzZsnv0lwlL+CH7SdHT25DDbLtHP02NVOGOJB1ojGMiACagic92568JqGFVqE
CaCthmXBetjzXGlW8Ptv6eKLDfadgcIMBoLjIfsP9gvW/ikCl9o6u1m3gN5wIgcT
HHzj5tjTB0+U8vqOk1ZV4++e3H8oy8MzAlrtHc+AR/6iassKsiXL2MGj4+MDJZjK
T27JRyn8ZYmEI8KyoE+dU923k9j1jKgKK5BQzWOUlOfpHftxAqD979aMoHf4uLwG
QFRFWJD3L/Vvf3ELHTc2fIg+HXXXLo08mXyAfP/wnekAGRrwigI6Fy4v8j5y5vMo
8FppC0n/e46E18pOAYDPaKjnbXs2GvOC0NWpYwqHnhknNX+k1oZym/k02J9kxYqa
yFXaGEr9SGU4KCnwL6xWiX0I5Q1EpOImca80tU2ktH/LR0oxHIevUAznOuV/Ki4S
MoZ1wHJA8PYFYNSpxkwDmgO2sglyNb281AqrLxEy6QOPS9lwygEweh3bL7YHkn8M
pIC+GH3sVshap8YJFi5TeEoYww5GBCmZST/QVWsezBj2b/To7UqdOEHWLEyABXjL
fkeQFHL2XXua7OjkeUib7wYwBQrg/1u/+vGhSy6cguXCt6qGiwE=
=jTBu
-----END PGP SIGNATURE-----

--BRE3mIcgqKzpedwo--


--===============6730447483608004427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6730447483608004427==--

