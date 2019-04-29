Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74B2E102
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 13:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n2cbYGGx5C4EYsZUobihDQkDqpW0hwPIjrd/nPI88t0=; b=keOuz0Ksx7ZlEy/CZoakANk9a
	1MQsiL+hND7lmU2faqiJfEtJdepMrimVhAQ3kd4SagBvVSxC0LfFMbJH+WB7jP+9SluhYw2F9Wgy4
	X1svfu/CtUExrZfdLrAkhqYMxYsqpo8c+foHPC7TClpASRQo4181gvT+Gy845uiD4kUcA3atUmJiz
	vcOEiXXainKHx//iCC+iNXi3TX/g2FMbM793tF49SSeNj11Eeu6LNvVOTL28+6/VGMggV1L9Pjq7x
	w4ImIPjudqpCtyZmauBFb9w2DQgGa5fCrNqNEy7Mu/N5w6TL47XJPCyt11HKp8rS1PIUoKIAzCiOT
	E/yrMbRfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL44o-0007dF-5T; Mon, 29 Apr 2019 11:04:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL44k-0007cV-Lk
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 11:04:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id n25so118342wmk.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 04:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=P8MRoDhYg6dJgs2aVQ5ayfiuXkuIphnqopKTf/A0CUA=;
 b=H4EbNBFEGmvWH+IeOQf7NCvOSB63v6nodmYFoasy0IL6g8Era45U7DYGHpVq+8wKbZ
 IKSPT2a8l2y8vFn7gTssHXEyPNaS67zXZj7j6onCkQqaz40raJgmkhMU1tiOCoojPEiC
 5xdF/EyiRw3/JPFSa7iYN/KVpPNb1ea8RIW0mSGtQpXc9phm1BVsrr5n9ghrELAVElsq
 O8KS5pKhgCgFrp37vJLw2xzdH4C03piFjIYTIUGQOvkulYyToSfnJhSubOuZ6LNsfP5f
 3DGroR3eoNk1vD8GWxN959ja9ZMOwogm1YFUqD9Y8M70pcp6hoKGa1O1GDxvMd9r/zbl
 ZyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P8MRoDhYg6dJgs2aVQ5ayfiuXkuIphnqopKTf/A0CUA=;
 b=dZIXMd6jii+mX9P4tCzFvbT83U5e8lWj3u7gI+xRkl4iuyhXKuMEuXZjEAK3jc6CsF
 NEcXSRd7wOuBAzyJhHaCa1m1RhTD/QW7OMalmDH3RSMdqRUt6Ssp2X+dHEFxJuin9/zR
 yw9BdCt3AzaH0sCc7CXQJKC5a4Vfp/qr10GW6QJ5lSNkMD2SF64s93te69LBwX3nc4Nl
 3EqopimokWNLt0G0mjfR1VuHvplT6ahZwei4Zjs8HQB6fOmJvCpA5ykpx3Et7ze4Ay9t
 MTBeOwKioWVFmtJrfBlKPcICSMYaPRsnzM4lId9vNlSN8wgvUMZiTNacnJld0lI/ZQA0
 Fn2Q==
X-Gm-Message-State: APjAAAW/ykc4LSD/UNSmzbvJccwlpBrD+Cmxx0R0APozGCQXsxDXbMqF
 ZFS6GGDNCkGfeJ9v6aQ6Vrs=
X-Google-Smtp-Source: APXvYqzucmCeAl+4AVgxByVgbXlHA1/Rw2Ygnp8q+h8qYaCSKIG7F6rDk7itkK7muh5xdMXNPJj7mA==
X-Received: by 2002:a05:600c:2199:: with SMTP id
 e25mr17556620wme.36.1556535836606; 
 Mon, 29 Apr 2019 04:03:56 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id 204sm40471279wmc.1.2019.04.29.04.03.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 04:03:55 -0700 (PDT)
Date: Mon, 29 Apr 2019 13:03:54 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190429110354.GB7747@ulmo>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_040358_744593_AF42E412 
X-CRM114-Status: GOOD (  34.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Content-Type: multipart/mixed; boundary="===============0013500382439460162=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0013500382439460162==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pvezYHf7grwyp3Bc"
Content-Disposition: inline


--pvezYHf7grwyp3Bc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 08, 2019 at 04:39:14PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> On Mon, Apr 01, 2019 at 03:45:47PM -0700, Doug Anderson wrote:
> > Hi,
> >=20
> > On Sat, Mar 30, 2019 at 2:17 AM Heiko Stuebner <heiko@sntech.de> wrote:
> > >
> > > Hi,
> > >
> > > [adding two chromeos people, because veyron and gru are quite
> > > heavy users of the rockchip pwm for both backlight and regulators]
> > >
> > > Doug, Brian: patchwork patch is here:
> > > https://patchwork.kernel.org/patch/10851001/
> > >
> > > Am Dienstag, 12. M=C3=A4rz 2019, 22:46:03 CET schrieb Uwe Kleine-K=C3=
=B6nig:
> > > > The pwm-rockchip driver is one of only two PWM drivers which update=
s the
> > > > state for the caller of pwm_apply_state(). This might have surprisi=
ng
> > > > results if the caller reuses the values expecting them to still
> > > > represent the same state.
> >=20
> > It may or may not be surprising, but it is well documented.  Specifical=
ly:
> >=20
> >  * pwm_apply_state() - atomically apply a new state to a PWM device
> >  * @pwm: PWM device
> >  * @state: new state to apply. This can be adjusted by the PWM driver
> >  *    if the requested config is not achievable, for example,
> >  *    ->duty_cycle and ->period might be approximated.
> >=20
> > I don't think your series updates that documentation, right?
> >=20
> >=20
> > > > Also note that this feedback was incomplete as
> > > > the matching struct pwm_device::state wasn't updated and so
> > > > pwm_get_state still returned the originally requested state.
> >=20
> > The framework handles that.  Take a look at pwm_apply_state()?  It does:
> >=20
> > ---
> >=20
> > err =3D pwm->chip->ops->apply(pwm->chip, pwm, state);
> > if (err)
> >     return err;
> >=20
> > pwm->state =3D *state;
>=20
> >=20
> > ---
> >=20
> > So I think it wasn't incomplete unless I misunderstood?
>=20
> You're right, I missed that the updated state was saved.
>=20
> > > > Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.d=
e>
> > >
> > > I've tested this on both veyron and gru with backlight and pwm regula=
tor
> > > and at least both still come up, so
> > > Tested-by: Heiko Stuebner <heiko@sntech.de>
> > >
> > > But hopefully Doug or Brian could also provide another test-point.
> >=20
> > I'd definitely be concerned by this change.  Specifically for the PWM
> > regulator little details about exactly what duty cycle / period you
> > got could be pretty important.
> >=20
> > I guess the problem here is that pwm_get_state() doesn't actually call
> > into the PWM drivers, it just returns the last state that was applied.
> > How does one get the state?  I guess you could change get_state() to
> > actually call into the PWM driver's get_state if it exists?  ...but
> > your patch set doesn't change that behavior...
>=20
> My intention here is more to make all drivers behave the same way and
> because only two drivers updated the pwm_state this was the variant I
> removed.
>=20
> When you say that the caller might actually care about the exact
> parameters I fully agree. In this case however the consumer should be
> able to know the result before actually applying it. So if you do
>=20
> 	pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =3D 12, ...})
>=20
> and this results in .period =3D 100 and .duty_cycle =3D 0 then probably t=
he
> bad things you want to know about already happend. So my idea is a new
> function pwm_round_state() that does the adaptions to pwm_state without
> applying it to the hardware. After that pwm_apply_state could do the
> following:
>=20
> 	rstate =3D pwm_round_state(pwm, state)
> 	pwm.apply(pwm, state)
> 	gstate =3D pwm_get_state(pwm)
>=20
> 	if rstate !=3D gstate:
> 		warn about problems

I'm not sure this is really useful. I would expect that in most cases
where it is necessary to have an exact match between the requested state
and the actual state is important, you may not even get to warning about
problems because the system may shut down (e.g. the regulator might not
be outputting enough power to keep the system stable).

I think it'd be far more useful to give consumers a way to request that
the state be applied strictly. I'm not sure how realistic that is,
though. Most PWMs have some sort of restrictions, and in most cases this
might still be okay. Perhaps some sort of permissible relative deviation
factor could be added to give more flexibility?

Thierry

> But before doing that I think it would be sensible to also fix the rules
> how the round_state callback is supposed to round.
>=20
> Apart from that I agree that pwm_get_state should return the actually
> implemented configuration.
>=20
> Best regards
> Uwe
>=20
> --=20
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--pvezYHf7grwyp3Bc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzG2hcACgkQ3SOs138+
s6G9yA//TJUld7Bl1E1jVgYYYck4BIbag3romh65N/ebXbdduGRvHe/mQZfUHUHn
rwjVci3hbFudig5uAwwuyPovz6CVa4Vb6DM5keC21sxz9FX49gOn9dH6n+7D0BM8
qj1fXhMn6XwXaib3M+L9tQ21jZ7Yl747BuHU2ATxALf4KVGBnxkgYqbpMcwGV7bg
tCZiH6w6RjzS/uUiATYYkr3JQNYst1RnKmIXjA2KtE7uXGbvGydAGIVl7WdNZi/r
HOPwGQQqnTEHr//IFximDrckJxXWWzP0rxJA3EQQAjSvSXLGCxKNVJ7MsXXV5dr+
12x5I/PctFvhdpbNRDI3v5s3pAqOkK1uGAB3LqczXZnY9W17KlIQuB2rjoyDAd3e
FXCSXxbrHFsBoUkrFz7GHnQ0IB2qP45Co/JUQBsTJq+MYJd8xSCFtFQn0SCkD5e6
baYk3Yh6CIHczNdqGtsC51kWXCH7XPhULISuDAMeHN0+YO9AWad7aD4wvJ4RP/BQ
FYSt81idlPqGILeA+6lakD5IPiAm7X7Snh9y3bRT+RsUzKS5W+t6C17P7C4EiKeJ
q1eVRcBrVe1VdwUsBLIAyD2m4ptqf+chZI4XGZBjdmWckGOIzqWpxskW4cx0AUWu
6qXRbc7lP45xqIN3KjMppqKXrXki2raBi7dXVJldnPQxv24fenU=
=08ZM
-----END PGP SIGNATURE-----

--pvezYHf7grwyp3Bc--


--===============0013500382439460162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0013500382439460162==--

