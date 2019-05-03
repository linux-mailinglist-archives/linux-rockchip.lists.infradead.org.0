Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0390D12BE8
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 12:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D3UyJfMJB/QAgG2h9IEX2cyePBXwm0n8NRu2C5g4sDE=; b=DOl13fyRe0eZIWlTr9gH3PWM0
	9aFfcpOocP+NGkNuBvrLx1uAQ7Q921H9tbbtNEHp4HmvomhJFiox/iQgc6sREZubgsPxqpWBDflA/
	0YZaMZ7O49akQ6lp3sLKnpNBtvHdxhq9V3J94rvmrRecQVE7Z0pR/LvN0iZ6dBDaCYBEotkids9Hm
	LHlyMxuZc5p6HX4uO0chZPp5Vp6SDdWexon37T5qibJW2PFQBIBFhldf8++SbKIXiDCTkvMk1qtR+
	mVT2Z6UHnrLFH6yaLYjpnb8z3m9jSi9hm34tAcj3ZdzbyZiCu/81wCDkICPez35NyQzwj/+cDmX2x
	94MswS3YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVuX-0005iY-CC; Fri, 03 May 2019 10:59:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVuS-0005hn-Jj
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 10:59:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id o4so7334856wra.3
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 03:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5rxy6SfJBZnAq3uFHN0kqyFQfSAzVuo5Do6PMEVa1dI=;
 b=GFF4C6isNDRPJr902DGZp8mI7Yk6pabvBWcF3wpso0z+AFBg5UQ7TH0oi+mA4xZr9i
 Y6gYIE5MtavBerOk2x1cZNjBiPjkIKUwlWL07g8sCZSxAkFPQF76XThfe39q0b70bORj
 vS3hMKRiunXOr2KIgBd10DMddcqxdA+MnCR/NewxbcrRN0lYX3MT46UDe14Z9u7JkEwx
 c9iJZpLNW1HTh8GGK+D7f1epln2EYlTro+jOlG6hRSyEQ3USxa+MhfKN/XFKrGY1WJQW
 PNXvlC/eQWKUOnyoNvcaGVOT1in/KElcWEv8Q7D61uJIqj3bx3dPnmNPNYhDC+BkdkDw
 0i+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5rxy6SfJBZnAq3uFHN0kqyFQfSAzVuo5Do6PMEVa1dI=;
 b=Oe17MMKxBlovnyKB4NQ7i13y4YpymQp+mzcVhkfGDnXXzXQOdOIHMZ/FnixLciLvIJ
 r7u5XDdnPFCTnyVX8H7izRjv1uHLtQGcXpUeW3KrdReIUxIS8zIRMs2Ts8uJVMx+Cmo8
 XZCpQ9fKE6cHB6rFenV0pmwotl0QNnfksPENAbJ3jT6qphCAitcxkoPO38hylTdnTWa+
 oukRzix98CzS7Heyw54hFTi26B3doMXQMPCLXNl3D0efn7ZIDX1lzpzeikeIKRvJ59XV
 /xYDKJ3Ru2erI1uLgMb1Gl1nwoCcQVALgA0/pBBkW4U+ryCk6I7qr0rjEJNnnJIcZXqK
 IrBg==
X-Gm-Message-State: APjAAAVshuF/XCiQC4iBXMVX7jfrPJ0xD2Vjclqd6pYjSbTqCPjti5sT
 3i/VLNbDnbjpv1v4bzse+IY=
X-Google-Smtp-Source: APXvYqysOV6PS0TrpR9tHQ2oxal5goDHq8Aa/ejcUJ1qgiCQFSjyO5fsuqwHc5tRmQI8iqY5ofBsCw==
X-Received: by 2002:adf:edc8:: with SMTP id v8mr6705313wro.206.1556881157830; 
 Fri, 03 May 2019 03:59:17 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id i8sm2678244wrb.5.2019.05.03.03.59.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 03:59:16 -0700 (PDT)
Date: Fri, 3 May 2019 12:59:15 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190503105915.GA32400@ulmo>
References: <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
 <20190502091638.0f5a40b0@collabora.com>
 <20190502073326.sgqgkiexjkipvi27@pengutronix.de>
 <20190502100951.23ef9ed1@collabora.com>
 <20190502084243.anz5myut63g4torn@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190502084243.anz5myut63g4torn@pengutronix.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_035920_679108_2421DD6B 
X-CRM114-Status: GOOD (  50.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============8179092735017131115=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============8179092735017131115==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 02, 2019 at 10:42:43AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> Hello Boris,
>=20
> On Thu, May 02, 2019 at 10:09:51AM +0200, Boris Brezillon wrote:
> > On Thu, 2 May 2019 09:33:26 +0200
> > Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> wrote:
> >=20
> > > Hello Boris,
> > >=20
> > > On Thu, May 02, 2019 at 09:16:38AM +0200, Boris Brezillon wrote:
> > > > On Mon, 29 Apr 2019 11:04:20 -0700
> > > > Doug Anderson <dianders@chromium.org> wrote:
> > > >  =20
> > > > > Hi,
> > > > >=20
> > > > > On Sun, Apr 28, 2019 at 11:56 PM Uwe Kleine-K=C3=B6nig
> > > > > <u.kleine-koenig@pengutronix.de> wrote: =20
> > > > > >
> > > > > > On Thu, Apr 18, 2019 at 05:27:05PM -0700, Brian Norris wrote:  =
 =20
> > > > > > > Hi,
> > > > > > >
> > > > > > > I'm not sure if I'm misreading you, but I thought I'd add her=
e before
> > > > > > > this expires out of my inbox:
> > > > > > >
> > > > > > > On Mon, Apr 8, 2019 at 7:39 AM Uwe Kleine-K=C3=B6nig
> > > > > > > <u.kleine-koenig@pengutronix.de> wrote:   =20
> > > > > > > > My intention here is more to make all drivers behave the sa=
me way and
> > > > > > > > because only two drivers updated the pwm_state this was the=
 variant I
> > > > > > > > removed.   =20
> > > > > > >
> > > > > > > To be clear, this patch on its own is probably breaking thing=
s. Just
> > > > > > > because the other drivers don't implement the documented beha=
vior
> > > > > > > doesn't mean you should break this driver. Maybe the others j=
ust
> > > > > > > aren't used in precise enough scenarios where this matters.
> > > > > > >   =20
> > > > > > > > When you say that the caller might actually care about the =
exact
> > > > > > > > parameters I fully agree. In this case however the consumer=
 should be
> > > > > > > > able to know the result before actually applying it. So if =
you do
> > > > > > > >
> > > > > > > >         pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =
=3D 12, ...})
> > > > > > > >
> > > > > > > > and this results in .period =3D 100 and .duty_cycle =3D 0 t=
hen probably the
> > > > > > > > bad things you want to know about already happend. So my id=
ea is a new
> > > > > > > > function pwm_round_state() that does the adaptions to pwm_s=
tate without
> > > > > > > > applying it to the hardware. After that pwm_apply_state cou=
ld do the
> > > > > > > > following:
> > > > > > > >
> > > > > > > >         rstate =3D pwm_round_state(pwm, state)
> > > > > > > >         pwm.apply(pwm, state)
> > > > > > > >         gstate =3D pwm_get_state(pwm)
> > > > > > > >
> > > > > > > >         if rstate !=3D gstate:
> > > > > > > >                 warn about problems   =20
> > > > > > >
> > > > > > > For our case (we're using this with pwm-regulator), I don't r=
ecall [*]
> > > > > > > we need to be 100% precise about the period, but we do need t=
o be as
> > > > > > > precise as possible with the duty:period ratio -- so once we =
get the
> > > > > > > "feedback" from the underlying PWM driver what the real perio=
d will
> > > > > > > be, we adjust the duty appropriately.   =20
> > > > > >
> > > > > > I admit that I didn't understood the whole situation and (some)=
 things
> > > > > > are worse with my patches applied. I still think that changing =
the
> > > > > > caller's state variable is bad design, but of course pwm_get_st=
ate
> > > > > > should return the currently implemented configuration.   =20
> > > > >=20
> > > > > Regardless of the pros and cons of the current situation, hopeful=
ly
> > > > > we're in agreement that we shouldn't break existing users?  In ge=
neral
> > > > > I'll probably stay out of the debate as long as we end somewhere =
that
> > > > > pwm_regulator is able to somehow know the actual state that it
> > > > > programmed into the hardware.
> > > > >=20
> > > > > +Boris too in case he has any comments. =20
> > > >=20
> > > > Well, the pwm_round_state() approach sounds okay to me, though I do=
n't
> > > > really see why it's wrong to adjust the state in pwm_apply_state()
> > > > (just like clk_set_rate() will round the rate for you by internally
> > > > calling clk_round_rate() before applying the config). =20
> > >=20
> > > This are two orthogonal things. The "should pwm_apply_state change the
> > > state argument" isn't really comparable to the clk stuff, as there on=
ly
> > > the frequency is provided that is passed by value, not by reference as
> > > the PWM state.
> > >=20
> > > The key argument for me to *not* change it is that it might yield
> > > surprises, still more as today most drivers don't adapt. An -- I admit
> > > constructed, not real-word -- case where adaption would go wrong is:
> > >=20
> > > 	pwm_apply_state(pwm1, &mystate);
> > > 	pwm_apply_state(pwm2, &mystate);
> >=20
> > I see, but it's also clearly documented that pwm_apply_state() might
> > adjust the period/duty params [1], and it's not like we have a lot of
> > PWM users converted to use pwm_apply_state(), so I'd expect them to be
> > aware of that and use a reference pwm_state if they need to apply it
> > to different devices.
>=20
> If we accept that pwm_apply_state should adapt its state argument that
> would be ok for me, too. Then however we should make this consistent and
> consider a deviation that is not reported there as a bug.
>=20
> Note there are also more subtile problems. For example something like:
>=20
> 	def enable(self):
> 		state =3D pwm_get_state(self.pwm)
> 		state.duty_cycle *=3D 2
> 		pwm_apply_state(self.pwm, state)
>=20
> 	def disable(self):
> 		state =3D pwm_get_state(self.pwm)
> 		state.duty_cycle /=3D 2
> 		pwm_apply_state(self.pwm, state)
>=20
> doesn't guarantee that the sequence enable(); disable(); is idempotent.
> So my favourite would be to not modfies the caller's copy of state for
> pwm_apply_state(). (Note, this doesn't necessarily have implications
> about the semantik of the lowlevel driver callbacks.) Still
> pwm_get_state() should work and yield the corrected settings.
>=20
> > > > Note that pwm_config() is doing exactly the same: it adjusts the
> > > > config to HW caps, excepts in that case you don't know it. =20
> > >=20
> > > I don't see what you mean here. I don't see any adaption.
> >=20
> > I mean that the config you end up is not necessarily what you asked
> > for, and pwm_apply_state() was making that explicit by returning the
> > actual PWM state instead of letting the user think its config has been
> > applied with no adjustment.
>=20
> Ah. Of course the lowlevel driver has to work with the capabilities of
> the hardware. That is something we cannot get rid of. It's just a
> question how we communicate this to the consumer.
>=20
> > > > I do understand that some users might want to check how the HW will
> > > > adjust the period/duty before applying the new setup, and in that
> > > > regard, having pwm_round_rate() is a good thing. But in any case, i=
t's
> > > > hard for the user to decide how to adjust things to get what it wan=
ts
> > > > (should he increase/decrease the period/duty?). =20
> > >=20
> > > It depends on the use case. For one of them I suggested an algorithm.
> >=20
> > Yes, I was just trying to say that passing a PWM state to
> > pwm_round_state() is not enough, we need extra info if we want to make
> > it useful, like the rounding policy, the accepted deviation on period,
> > duty or the duty/period ratio, ....
>=20
> Ack. My suggestion is that round_rate should do:
>=20
> 	if polarity is unsupported:
> 		polarity =3D !polarity
> 		duty_cycle =3D period - duty_cycle

This should really be up to the consumer. The PWM framework or driver
doesn't know whether or not the consumer cares about the polarity or
whether it only cares about the power output.

> 	period =3D biggest supportable period <=3D requested period, 0 if no
> 		such period exists.
>=20
> 	duty_cycle =3D biggest supportable duty cycle <=3D requested
> 		duty_cycle, 0 if no such value exists

This doesn't really work. We need some way to detect "value does not
exist" that is different from value =3D=3D 0, because value =3D=3D 0 is a
legitimate use-case.

> This would allow to let the consumer (or framework helper function)
> decide which deviation is ok.

So what's the consumer supposed to do if it gets back these values? How
does it know how to scale them if the deviation is not okay? What in
case the hardware can do achieve a good period that is slightly bigger
than the requested period and which would give a very good result?

Thierry

> > > > My impression is that most users care about the duty/period ratio w=
ith
> > > > little interest in accurate period settings (as long as it's close
> > > > enough to what they expect of course). For the round-up/down/closest
> > > > aspect, I guess that's also something we can pass to the new API. S=
o,
> > > > rather than passing it a duty in ns, maybe we could pass it a ratio
> > > > (percent is probably not precise enough for some use cases, so we c=
ould
> > > > make it per-million). =20
> > >=20
> > > Yeah, something like that would be good. Still for the device drivers=
 I
> > > would use the callback I suggested because that is easier to implemen=
t.
> >=20
> > Sorry, I just joined the discussion and couldn't find the email where
> > you suggested a new driver hook to deal with that.=20
>=20
> https://www.spinics.net/lists/linux-pwm/msg09627.html
>=20
> > > This way the complexity is once in the framework instead of in each
> > > driver.
> >=20
> > I think we want to make it possible for drivers to do complex
> > adjustments, and that implies passing all info  to the new driver
> > hook. The core can then provide generic helpers for simple use-cases
> > (approximation for static period/duty steps, where no reclocking is
> > involved).
>=20
> The problem is that it is hard to come up with a formalism to map "all
> info" because there are so many different ways to prefer one
> configuration over another. I believe we won't be able to design a sane
> callback prototype that allows to map all use cases.
>=20
> Best regards
> Uwe
>=20
> --=20
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMHwAACgkQ3SOs138+
s6GfjBAApfef9lLpp1SYPigLcrEu/buiFN3VqHx3Poeiz5FfS0ILUDf8NMuOKtsi
LOQ0w6AydvW1OSO3r16czvW8ItqGIYX4Kss/ZMgGsKSfdQYdmR1QUyOwGw9Yh4UA
bY2uS1G5jGpsshCNkCW9jh1AwZWE8xsBERav4P2fODEeIMjQaTI2kNxBkC93vMmM
Uau6UqGpc6Etwk6mku3evnQUPjORoOBcLGvNEb+LeifoUYzBT9VRJqOSgAlwodr4
r/DoWakD1KnoWVxzQBo5kSXqTci9KLeE2H87bcPvPx2agdbkVNvGLMjeMsZlY9uo
B047bg0pbBPAjwDA6hEDB3/ycXlRT7LhTGG61r5fxgEfbrKkqYph/Ef9UFaq3DXv
fMUAUf6JKktSUE+hCmlXdbC9M2lGiGcSvPoC+Ny06fBpm4Ns1Fxrhck89t5+BaZ9
88nUFT0H7+KhHcY4sYP64W6SLVXh/Me3Xm+OEMdLGWCMa8kf+40IMaX2lrV7OI+0
SJpdetL6wuMl4vmh9mI0F6Kw4mpHyvxyHzJGpW1A0FDfMadgqVjX6mvQixuyxamA
b2HCG5/n83z7mibtIjh3rWz9ilC5Ohr9XRk75QwF9oQIJjQZrxFyqDJA7eu89vlF
IA/KqYW7TH3SweYVhzPuREz+CvMyyjn8yQgNGxEcGC0ML5wZyVg=
=M9mj
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--


--===============8179092735017131115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8179092735017131115==--

