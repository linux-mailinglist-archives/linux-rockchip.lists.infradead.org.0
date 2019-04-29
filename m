Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314A0E12A
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 13:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jz5SqnSqbiEGj2LQ0n+OECRn7pez+l3Wo4P59stR+Jk=; b=GADzoPsWCicMuy7wdmxEPPc5e
	pG6TTb+W7l5mlSZtmMt26JgiHWnk71H0qpQPqCV/V38tIIKWIeeb88ffMrSILIFbfMlJX/wP9Ftbq
	san0O60kRCmry0D0wHQtH5hfbK5tmpLT525ABRVJbU/ABEElbDvcf9hcXaSe0BgAzMAAVwIU0KT9X
	yFP+DGZcd/vgRRu1pohp+mIAOr43kjOZ+4EbAOsCfhPChM5To1ankjqCbsn8qhFs4hEr/yEem7uWz
	ar2x/1AyM8aEZf/oqmYnycWsAMMXFyCsd0FeMCEQe5oMTnGxrGZTK6S4uLjphJ6VcnILL5iHtyGfm
	nMezFKlcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL4JK-0004wf-6C; Mon, 29 Apr 2019 11:19:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL4JH-0004wI-5b
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 11:19:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id f7so6934084wrs.2
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 04:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I1WfoNfOV+O4uPqL/9lA08/K4y2ZnaghfdNnZ/oG3Lo=;
 b=UBxNEBq+wuhXtq34w7xd4SXE317CLZDV7pgxIbs1eSpZI7/V0gi1SrOspTpfYxwuIB
 Rs1RHUs/xgz5y245EN/ftpyxvd4VXsGGQg+YXP/gdjNAJFafhoosZv1ahaXC5cpmM7nz
 l9uSq+Wl7D8OoBErKVO30r59oW7ghAbtfhA8m2SLusrjn2zt6HW9cGUJfiZwrgqQLnJ3
 DHoW2OJV97Aa+cmWfdOQLZLSbx7FARu7LJBPw4AdCYkv9Ckw4kiSS2Fa9GI2peQLe1zh
 OJVXNBqAmQ3qkWgtOFm9mtDGidNMltABOnH+drZuEQ1nxmgWDT2WqkFJ2SJi0XkODmRi
 460g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I1WfoNfOV+O4uPqL/9lA08/K4y2ZnaghfdNnZ/oG3Lo=;
 b=FmFTrx+gn5xV9Snhnbsh70rTCjviiJS9l5hhxnCsKJGT8fjXmMCAiX5aD//aRNdduP
 fdeeqsVnXUXoZItzqHpOg+71blm0aBeV/69buw6wFOY/zNWJpARu2bS/gQIBcT3GppT5
 TI/O9E5O+Ynqd6y8qRC6g9K0LTswPcszJGNupmKU/8CqSoiJdlUkehnZlE67tCMwkuxT
 DaAor5TEmbxURIOhfks4r9CfL8dPi0anMOTIM9ua+NkOGUCWaHQu2wStt/c8jAkfxtUU
 P+jA29CB8CZAhXADShoWLP3SMnVLHb7QK4FAe9gi8krl1cePvD6Xkqimw/cLhOXQ5uam
 Hdlg==
X-Gm-Message-State: APjAAAWIBP196kCzRw02IiKqMUCJIlmrJYTvcTLvFmJcex1OWqXtjpjL
 eEXOyNVQGnF83XntIxcBlqo=
X-Google-Smtp-Source: APXvYqwHsKpPX+bmgDhNvVbI9S27YyseKSJfJ7vWu/eJZYkehYrJzRlQwKsJDeRCzBeYffPTXbeiOw==
X-Received: by 2002:adf:ec8f:: with SMTP id z15mr31041011wrn.61.1556536737412; 
 Mon, 29 Apr 2019 04:18:57 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id u2sm29245748wru.36.2019.04.29.04.18.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 04:18:56 -0700 (PDT)
Date: Mon, 29 Apr 2019 13:18:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190429111855.GC7747@ulmo>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190429065613.n52uwgys5eugmssd@pengutronix.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_041859_232478_4EE19139 
X-CRM114-Status: GOOD (  32.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Content-Type: multipart/mixed; boundary="===============0045416247342741734=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0045416247342741734==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hOcCNbCCxyk/YU74"
Content-Disposition: inline


--hOcCNbCCxyk/YU74
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 29, 2019 at 08:56:13AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> On Thu, Apr 18, 2019 at 05:27:05PM -0700, Brian Norris wrote:
> > Hi,
> >=20
> > I'm not sure if I'm misreading you, but I thought I'd add here before
> > this expires out of my inbox:
> >=20
> > On Mon, Apr 8, 2019 at 7:39 AM Uwe Kleine-K=C3=B6nig
> > <u.kleine-koenig@pengutronix.de> wrote:
> > > My intention here is more to make all drivers behave the same way and
> > > because only two drivers updated the pwm_state this was the variant I
> > > removed.
> >=20
> > To be clear, this patch on its own is probably breaking things. Just
> > because the other drivers don't implement the documented behavior
> > doesn't mean you should break this driver. Maybe the others just
> > aren't used in precise enough scenarios where this matters.
> >=20
> > > When you say that the caller might actually care about the exact
> > > parameters I fully agree. In this case however the consumer should be
> > > able to know the result before actually applying it. So if you do
> > >
> > >         pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =3D 12, ..=
=2E})
> > >
> > > and this results in .period =3D 100 and .duty_cycle =3D 0 then probab=
ly the
> > > bad things you want to know about already happend. So my idea is a new
> > > function pwm_round_state() that does the adaptions to pwm_state witho=
ut
> > > applying it to the hardware. After that pwm_apply_state could do the
> > > following:
> > >
> > >         rstate =3D pwm_round_state(pwm, state)
> > >         pwm.apply(pwm, state)
> > >         gstate =3D pwm_get_state(pwm)
> > >
> > >         if rstate !=3D gstate:
> > >                 warn about problems
> >=20
> > For our case (we're using this with pwm-regulator), I don't recall [*]
> > we need to be 100% precise about the period, but we do need to be as
> > precise as possible with the duty:period ratio -- so once we get the
> > "feedback" from the underlying PWM driver what the real period will
> > be, we adjust the duty appropriately.
>=20
> I admit that I didn't understood the whole situation and (some) things
> are worse with my patches applied. I still think that changing the
> caller's state variable is bad design, but of course pwm_get_state
> should return the currently implemented configuration.
>=20
> > So I don't see that "warning" would really help for this particular cas=
e.
> >=20
> > > But before doing that I think it would be sensible to also fix the ru=
les
> > > how the round_state callback is supposed to round.
> >=20
> > I'm not quite sure I grok exactly what you're planning, but I would
> > much appreciate if you didn't break things on the way toward fixing
> > them ;)
>=20
> There are currently no rules how the driver should behave for example if
> the consumer requests
>=20
> 	.duty_cycle =3D 10, .period =3D 50
>=20
> and the hardware can only implement multiples of 3 for both values. The
> obvious candidates are:
>=20
>  - .duty_cycle =3D 9, .period =3D 51 (round nearest for both)
>  - .duty_cycle =3D 12, .period =3D 51 (round up)
>  - .duty_cycle =3D 9, .period =3D 48 (round down)
>  - .duty_cycle =3D 9, .period =3D 45 (round duty_cycle and keep proportio=
n)
>  - return error (which code?)
>=20
> And there are some other variants (e.g. round duty_cycle to nearest and
> period in the same direction) that might be sensible.

The problem is that probably all of the above are valid, though maybe
not for all cases. The choice of algorithm probably depends on both the
PWM driver and the consumer, so I don't think fixing things to one such
algorithm is going to improve anything.

> Also it should be possible to know the result before actually
> configuring the hardware. Otherwise things might already go wrong
> because the driver implements a setting that is too far from the
> requested configuration.

I agree.

Perhaps somebody with more experience with pwm-regulator can chime in
here, but it sounds to me like if you really want to accurately output a
voltage, you may want to hand-tune the duty-cycle/period pairs that are
used for pwm-regulator. According to the device tree bindings there's
already support for a voltage table mode where an exact duty-cycle to
output voltage correspondence is defined. This is as opposed to the
continuous voltage mode where the duty cycle is linearly interpolated
based on the requested output voltage.

pwm-regulator in voltage table mode could run in "strict" mode with zero
deviation allowed, on the assumption that duty-cycle values were hand-
picked to give the desired results. For continuous voltage mode it
probably doesn't matter all that much, since very exact results can't be
guaranteed anyway.

Thierry

--hOcCNbCCxyk/YU74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzG3ZwACgkQ3SOs138+
s6Hjlg/+KleJYXhK9kjCa33D5P5SF18UKOyghAs6mxeOgEsKUX6VEpVM6bsWej0y
TgG4yaM57AROrmuTdWWTs8IrpQwsvpkR/clzeo9UJ6FYSmjv4046lwzFZGSX+usz
dJMtf0WvRq61o2EVdKiAc8JyKrAC83+9d3194A73C/iDlQ2eWsR3UyvNtdZOlavK
mYFkLrx4DIE80LCVavcl2FRDhOhg1Rb/4dztJ6p8aAsljVQ2N9ARApKz4eDm6vaK
x6dMYvz+YeU2PAr9gtRLTTmFD+7/OClnegvuQKmiskrZKSgNpzmrSQyndrIKARp1
mndt3fyHguunNQtKV9nMVJSLDRV4a6aVM9Zamb6M/JxogWqOgN6Dd2EYX5gmrms0
aurN5uoci43uIp1MnwM5pLupIkJpUHYKwaVbC1jUFpIqiRsJDSydjCeEKabLFcDb
g2ba3V7OASGR7fu+aMaXbvvsTUMVxzHgiIx3JSiVKIVask0ohgRQDx2tqvGZcgj+
S2vX+pnCA4F4CWZ091BHmF00GX0QvpmiP8crYgD+xW+kX4xsJXabrvVjm7rQ5tvS
LPxDYP1LUIzsPax3xDwI9oJb3otVHJDQniWBRC5R0YkgTL1MB6wyJqMfU2+DwqNL
IUTXCPbF8/gGXiYR1g5tpS7N0ElG5Rh9+jKbOsg5WJuEMnz3TmE=
=WCCG
-----END PGP SIGNATURE-----

--hOcCNbCCxyk/YU74--


--===============0045416247342741734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0045416247342741734==--

