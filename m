Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12081F2CB
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 11:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVYjEg2v/T+eFsPTua/jd5z8LiyvHjD1LWHErvKne1w=; b=QEY0RUhqTuwPIp
	RtyFfWvq9pABe3tmRNO1f8QDa18XU0gBqLSIhYTlsZfAP5wOuVaj9CL4idvrBnUB8JrQltxmZZDYN
	Kuq4x2Vp4wte3PaNJD7vPJLiGnYW13DZTUjivNRoxYzLZnxEFlOHn81TB7Z0ohXoSZoWI/CWj1VyH
	VfXGDZOGBK7ysq++SG7m3HmZeve/ncG1+Nfz9yHufMjT85EtEkhdpdHc6r0oxsVdIPyVvCkjPPP1O
	7IEKz6doHjMrzrkRN0HPvgnKqsCGXrE958Fuq2wcEA0kZq2RCUI4Cms+SdX+EfDXSQoTxrc/RrolA
	i3mwKoRaLdgsw4ioNBuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP3z-0006YW-KA; Tue, 30 Apr 2019 09:28:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP3u-0006Wz-GY
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 09:28:34 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hLP3p-0001za-VT; Tue, 30 Apr 2019 11:28:25 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hLP3o-0007S9-6p; Tue, 30 Apr 2019 11:28:24 +0200
Date: Tue, 30 Apr 2019 11:28:24 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190430092824.ijtq3gfh6mqujvnk@pengutronix.de>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_022832_585475_98C371F4 
X-CRM114-Status: GOOD (  36.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 11:04:20AM -0700, Doug Anderson wrote:
> Hi,
> =

> On Sun, Apr 28, 2019 at 11:56 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > On Thu, Apr 18, 2019 at 05:27:05PM -0700, Brian Norris wrote:
> > > Hi,
> > >
> > > I'm not sure if I'm misreading you, but I thought I'd add here before
> > > this expires out of my inbox:
> > >
> > > On Mon, Apr 8, 2019 at 7:39 AM Uwe Kleine-K=F6nig
> > > <u.kleine-koenig@pengutronix.de> wrote:
> > > > My intention here is more to make all drivers behave the same way a=
nd
> > > > because only two drivers updated the pwm_state this was the variant=
 I
> > > > removed.
> > >
> > > To be clear, this patch on its own is probably breaking things. Just
> > > because the other drivers don't implement the documented behavior
> > > doesn't mean you should break this driver. Maybe the others just
> > > aren't used in precise enough scenarios where this matters.
> > >
> > > > When you say that the caller might actually care about the exact
> > > > parameters I fully agree. In this case however the consumer should =
be
> > > > able to know the result before actually applying it. So if you do
> > > >
> > > >         pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =3D 12, =
...})
> > > >
> > > > and this results in .period =3D 100 and .duty_cycle =3D 0 then prob=
ably the
> > > > bad things you want to know about already happend. So my idea is a =
new
> > > > function pwm_round_state() that does the adaptions to pwm_state wit=
hout
> > > > applying it to the hardware. After that pwm_apply_state could do the
> > > > following:
> > > >
> > > >         rstate =3D pwm_round_state(pwm, state)
> > > >         pwm.apply(pwm, state)
> > > >         gstate =3D pwm_get_state(pwm)
> > > >
> > > >         if rstate !=3D gstate:
> > > >                 warn about problems
> > >
> > > For our case (we're using this with pwm-regulator), I don't recall [*]
> > > we need to be 100% precise about the period, but we do need to be as
> > > precise as possible with the duty:period ratio -- so once we get the
> > > "feedback" from the underlying PWM driver what the real period will
> > > be, we adjust the duty appropriately.
> >
> > I admit that I didn't understood the whole situation and (some) things
> > are worse with my patches applied. I still think that changing the
> > caller's state variable is bad design, but of course pwm_get_state
> > should return the currently implemented configuration.
> =

> Regardless of the pros and cons of the current situation, hopefully
> we're in agreement that we shouldn't break existing users?

Sure. And I'm happy you found the issue in my patch before it was
applied.

> In general I'll probably stay out of the debate as long as we end
> somewhere that pwm_regulator is able to somehow know the actual state
> that it programmed into the hardware.
> =

> +Boris too in case he has any comments.
> =

> =

> > > So I don't see that "warning" would really help for this particular c=
ase.
> > >
> > > > But before doing that I think it would be sensible to also fix the =
rules
> > > > how the round_state callback is supposed to round.
> > >
> > > I'm not quite sure I grok exactly what you're planning, but I would
> > > much appreciate if you didn't break things on the way toward fixing
> > > them ;)
> >
> > There are currently no rules how the driver should behave for example if
> > the consumer requests
> >
> >         .duty_cycle =3D 10, .period =3D 50
> >
> > and the hardware can only implement multiples of 3 for both values. The
> > obvious candidates are:
> >
> >  - .duty_cycle =3D 9, .period =3D 51 (round nearest for both)
> >  - .duty_cycle =3D 12, .period =3D 51 (round up)
> >  - .duty_cycle =3D 9, .period =3D 48 (round down)
> >  - .duty_cycle =3D 9, .period =3D 45 (round duty_cycle and keep proport=
ion)
> >  - return error (which code?)
> >
> > And there are some other variants (e.g. round duty_cycle to nearest and
> > period in the same direction) that might be sensible.
> =

> I will note that I had to deal with some of this recently when I
> wanted to try to replicate the exact voltage levels for "vdd_log" from
> downstream in rk3288-veyron devices.  See commit 864c2fee4ee9 ("ARM:
> dts: rockchip: Add vdd_logic to rk3288-veyron") in Heiko's tree (or
> just look in linux-next)

Actually I think that it would make sense to expand the "pwm-regulator
with table" code to interpolate voltage levels between two table entries
assuming linear behaviour on the interval. This way a continous
regulator becomes just a special case with two entries. (Some care might
have to be applied to prevent changes in behaviour for already existing
machines.)
 =

> > Also it should be possible to know the result before actually
> > configuring the hardware. Otherwise things might already go wrong
> > because the driver implements a setting that is too far from the
> > requested configuration.
> =

> Later in this thread Thierry didn't like the "round rate" idea due to
> races.  One way to solve that could be to indicate to the PWM
> framework which direction you'd like it to error in: a higher duty
> cycle or a lower one.

I don't think this would result in settings as optimal as with my
suggestion. If you don't agree and want to convince me: Show how your
suggestion would work with a PWM that can implement only multiples of 3
for duty_cycle and period and you want 20% duty cycle with period <=3D 1
ms (without making use of the knowledge about the limitation of the
PWM in the algorithm).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
