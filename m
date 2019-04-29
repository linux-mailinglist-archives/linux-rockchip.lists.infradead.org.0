Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D91E0D5
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 12:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2/lb5wTURFcDk6biIlFL1bL3pM0ZGlCuNIxtYsuErv4=; b=Om2WKk2W4uo6WhDPndWfNujfh
	Z94pL1hb6UJHjkjDJw/yBFcjRu/lAy54nM6ZLplwzfWOUqtM8vR2yPtDI2GYtPLaJWspiX37biFZO
	ZoHgw6cGdn7TqGePSX/bkvvGQe//TTiEjmTRkLhK6uqujx5pR2CgJal9af1vVnuhBM4iyAvY0A9g1
	shecESLRLuPeeAy7/Pj/GAV0NqWVm5OAYAdmcDtkcVDEAJ6OtcIpE8V/F34LCsPk76lIKYegt3rl6
	Ud0ErHUwZqnAUFYdAM6nBH6sJJa3G2e1WyslKG6RcqSu6WwBlSTQEmdMLw5aLvWftGW3Ue49ACD1J
	9rddq9OlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL3qP-0002LR-SI; Mon, 29 Apr 2019 10:49:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL3qM-0002L6-Mm
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 10:49:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id c12so15286946wrt.8
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 03:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ab8x1YnM54+y+Aa2g0Be9wlpmHQlHD69wEtYVBahmeA=;
 b=Y0RMtvJIDqmMnG16/S1DZde1PQRLHXVa7GnM1tyJI4TnF4HDEXjY+pN36GdFzweO6o
 hcdFqyJvlXu/WB4CE05tZF4KDnh67iHXN7t1QrgVrtfoVtaLlI76e+EpjxXPwnZxyNTY
 OAlDE24660Bo0WxX9L39HcdF9xtcMsk4+lDRuI8iH1HsyjgQNiN1FEPfk7V83gezeQwE
 dOt8bXXK35ryslhlc/W9v3uXDUGYIfIegE+N/cME1bYsUONzSNZFMumRwEV3WkQzmi+V
 VIYvcPNrzOkw03ccZbE3iWESeAgOqUveG4vdnDCaE5nEWa8KE5PdBbR+ZyPe19xI+yaW
 ikAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ab8x1YnM54+y+Aa2g0Be9wlpmHQlHD69wEtYVBahmeA=;
 b=ctD8n/9S2YA2OO+aSb6rUumfk0TkgTMsJ1kHFIHIbuHvbGNJnyPHWMb1XLT5NILSHo
 JGdlQWZba2M4jz39RI/Ye8Xh/b0pran4z3EzsCyoN0nwfuRDxPyofewXPPN9i0XZEErq
 euP/gLmM0sDFbwB7XNdIn+fiBWSwJypFN2OoLsujtSLb19KRx/gYDr4eLLecoyME4puj
 s6elym1WxPq44MiGsByzHK47BnrCkvG3TvEkV78lFxPzZqoPLnKUw24Zo/ua2mEzVr8a
 aFQKX8ze9SUnO2ccGv6T1QAkQ2CJ+E8MAvKGGdjuEhXVEVuRyXLyZBwreTppcLn6qS/Y
 aENg==
X-Gm-Message-State: APjAAAXOPo88bd1j4ByVAr0gqIQFH5ZIizQuD3h0OzaY79vpQnM5CCgS
 aetr5JF728YBOZquYiEV9ac=
X-Google-Smtp-Source: APXvYqynw74udRbNS1ZzaJsqtxE5PgBHwgUlvZUJWMjt6U3uNEjc6QMhFH5lxBiHlmeATy2UaNFpsw==
X-Received: by 2002:a05:6000:145:: with SMTP id
 r5mr2774965wrx.19.1556534944439; 
 Mon, 29 Apr 2019 03:49:04 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id r6sm25313794wmc.11.2019.04.29.03.49.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 03:49:03 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:49:02 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190429104902.GA7747@ulmo>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_034906_766132_CB784132 
X-CRM114-Status: GOOD (  30.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Sascha Hauer <kernel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============1826548295145271282=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1826548295145271282==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 03:45:47PM -0700, Doug Anderson wrote:
> Hi,
>=20
> On Sat, Mar 30, 2019 at 2:17 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi,
> >
> > [adding two chromeos people, because veyron and gru are quite
> > heavy users of the rockchip pwm for both backlight and regulators]
> >
> > Doug, Brian: patchwork patch is here:
> > https://patchwork.kernel.org/patch/10851001/
> >
> > Am Dienstag, 12. M=C3=A4rz 2019, 22:46:03 CET schrieb Uwe Kleine-K=C3=
=B6nig:
> > > The pwm-rockchip driver is one of only two PWM drivers which updates =
the
> > > state for the caller of pwm_apply_state(). This might have surprising
> > > results if the caller reuses the values expecting them to still
> > > represent the same state.
>=20
> It may or may not be surprising, but it is well documented.  Specifically:
>=20
>  * pwm_apply_state() - atomically apply a new state to a PWM device
>  * @pwm: PWM device
>  * @state: new state to apply. This can be adjusted by the PWM driver
>  *    if the requested config is not achievable, for example,
>  *    ->duty_cycle and ->period might be approximated.
>=20
> I don't think your series updates that documentation, right?

The documentation is arguably ambiguous here, but I don't think this was
meant as you intepret here. I think the original intent was to give the
drivers some leeway in how they apply a state. So a driver could for
example adjust duty_cycle or period if it doesn't support exactly the
combination requested. However, I don't think it was meant as a
suggestion that it would report that back to the caller.

This obviously implies that ->apply() is deterministic, so given a state
it would program the same register values, irrespective of when, or how
many times that state is applied.

> > > Also note that this feedback was incomplete as
> > > the matching struct pwm_device::state wasn't updated and so
> > > pwm_get_state still returned the originally requested state.
>=20
> The framework handles that.  Take a look at pwm_apply_state()?  It does:
>=20
> ---
>=20
> err =3D pwm->chip->ops->apply(pwm->chip, pwm, state);
> if (err)
>     return err;
>=20
> pwm->state =3D *state;
>=20
> ---
>=20
> So I think it wasn't incomplete unless I misunderstood?
>=20
>=20
> > > Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> >
> > I've tested this on both veyron and gru with backlight and pwm regulator
> > and at least both still come up, so
> > Tested-by: Heiko Stuebner <heiko@sntech.de>
> >
> > But hopefully Doug or Brian could also provide another test-point.
>=20
> I'd definitely be concerned by this change.  Specifically for the PWM
> regulator little details about exactly what duty cycle / period you
> got could be pretty important.
>=20
> I guess the problem here is that pwm_get_state() doesn't actually call
> into the PWM drivers, it just returns the last state that was applied.
> How does one get the state?  I guess you could change get_state() to
> actually call into the PWM driver's get_state if it exists?  ...but
> your patch set doesn't change that behavior...
>=20
> For instance, look at pwm_regulator_set_voltage().  The first line
> there is  pwm_init_state().  That calls into pwm_get_state() which
> just grabs the cached state.  If the last call to pwm_apply_state()
> didn't update that then it seems like it'd be bad.

The whole point of this atomic API is that the cached state would always
match the hardware state. Given what I said above that doesn't
necessarily mean that the cached state exactly matches the values that
were written to hardware.

But it does mean that the following is idempotent:

	pwm_get_state(pwm, &state);
	pwm_apply_state(pwm, &state);

Thierry

--UugvWAfsgieZRqgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzG1pkACgkQ3SOs138+
s6HnJg//Z/zYy3o/pl5f9e9zd0C077CFTp3GxG4oEd2nGUq03avn1tVHcjI55vH5
9iiOpnBHY+1d5y02FyBbGLB+NozT9WZZuNOss588970p8MTGKbSDbsPy3rS7D37/
wrqiYCJ66/cwM0nuUZjPwJ8MPcvBf7ZMy9hLT8BbLkQUuLNiB/DYvloQ2szrfiNi
EKqrGqJGyP2MhUmghedV2FOYSU2nIhjttcT9boTG0N9iezerudTle7yj41qjSnth
+KC/d+Iv8hijy7imo9vXrcK3KYIFuJKSiRU4/G2ompKrfwf4JrMBQ5atvKaJMRbU
Rkif15K2UuyP8NmFj9/JXorwWY6z2KpmW97YUUpliEbnhPf1p8gQ3oKfXpLhTeDB
v+0DmLwFtayerbvLNunUURJJ0jz/pWydm4UvnOyW5xn469MbWP1kri2+RVh8HTCb
+SBnYkAyDLgTiuqNcUzTrprLxlny71VdWkrPMkZZ3spAc9MTJ/uLez3P1GVBaZm6
UzBQ9QHzgOD2kZvfxDMqF6bym2wczRIVgm1qv1CbyO2AF1XjdyxYRAixyuhn932K
nm8bUUHOlRXBKOpn3kE630pXjbaRhT9SvZj9eHTUxktMdhBwLljl4keLZGtM51eS
PzX81VFgjbk7R+aCuN5qYTbw11tHM1aoXTkvR2OhWwQiixPF6Ck=
=iul9
-----END PGP SIGNATURE-----

--UugvWAfsgieZRqgk--


--===============1826548295145271282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1826548295145271282==--

