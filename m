Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42705115A3
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 10:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SMxSzTajPtgq2r0Vn1krlRYkvyCKL5zWkAxeX18KrQ=; b=jHn/ogadlJ8lfU
	5s1+TVJPl7b8uz5Plc8vv/uTLt2EJctpqxGpXR4QvvY2Ujhw0ZTKkCFUoCJPiv+yxkNFao3DSpIp4
	3Hxoq79Z6Uv8fdHN8Q6lv7mJLZBzbT7YA2Az7NhJLtQ+QiQP47XLqQ2mxLBXrtPtjMvh7qJ8+i3A4
	i+Lg/emPOOqPO0YZjIwM7rwadus1rIQax+FoT/ZIBx8Sb98tmasChAmhk723lUBAg6OVp/mQbBdHo
	HKKt/x6/TcQf91dVqyxs3kfyRrfie8v9g2ZG/bL7u2lQurZH8fOpCqxGIYOWd4gZiu9phQtZUSMG6
	GAVPzZi1kuuB+V3M2Lyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7Iw-0007JF-0D; Thu, 02 May 2019 08:42:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7Io-0007Iw-5L
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 08:42:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hM7Ij-0003O8-5b; Thu, 02 May 2019 10:42:45 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hM7Ii-0002yT-0a; Thu, 02 May 2019 10:42:44 +0200
Date: Thu, 2 May 2019 10:42:43 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190502084243.anz5myut63g4torn@pengutronix.de>
References: <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
 <20190502091638.0f5a40b0@collabora.com>
 <20190502073326.sgqgkiexjkipvi27@pengutronix.de>
 <20190502100951.23ef9ed1@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502100951.23ef9ed1@collabora.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_014250_361868_79465C69 
X-CRM114-Status: GOOD (  45.01  )
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
 Brian Norris <briannorris@chromium.org>, Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Boris,

On Thu, May 02, 2019 at 10:09:51AM +0200, Boris Brezillon wrote:
> On Thu, 2 May 2019 09:33:26 +0200
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> wrote:
> =

> > Hello Boris,
> > =

> > On Thu, May 02, 2019 at 09:16:38AM +0200, Boris Brezillon wrote:
> > > On Mon, 29 Apr 2019 11:04:20 -0700
> > > Doug Anderson <dianders@chromium.org> wrote:
> > >   =

> > > > Hi,
> > > > =

> > > > On Sun, Apr 28, 2019 at 11:56 PM Uwe Kleine-K=F6nig
> > > > <u.kleine-koenig@pengutronix.de> wrote:  =

> > > > >
> > > > > On Thu, Apr 18, 2019 at 05:27:05PM -0700, Brian Norris wrote:    =

> > > > > > Hi,
> > > > > >
> > > > > > I'm not sure if I'm misreading you, but I thought I'd add here =
before
> > > > > > this expires out of my inbox:
> > > > > >
> > > > > > On Mon, Apr 8, 2019 at 7:39 AM Uwe Kleine-K=F6nig
> > > > > > <u.kleine-koenig@pengutronix.de> wrote:    =

> > > > > > > My intention here is more to make all drivers behave the same=
 way and
> > > > > > > because only two drivers updated the pwm_state this was the v=
ariant I
> > > > > > > removed.    =

> > > > > >
> > > > > > To be clear, this patch on its own is probably breaking things.=
 Just
> > > > > > because the other drivers don't implement the documented behavi=
or
> > > > > > doesn't mean you should break this driver. Maybe the others just
> > > > > > aren't used in precise enough scenarios where this matters.
> > > > > >    =

> > > > > > > When you say that the caller might actually care about the ex=
act
> > > > > > > parameters I fully agree. In this case however the consumer s=
hould be
> > > > > > > able to know the result before actually applying it. So if yo=
u do
> > > > > > >
> > > > > > >         pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =
=3D 12, ...})
> > > > > > >
> > > > > > > and this results in .period =3D 100 and .duty_cycle =3D 0 the=
n probably the
> > > > > > > bad things you want to know about already happend. So my idea=
 is a new
> > > > > > > function pwm_round_state() that does the adaptions to pwm_sta=
te without
> > > > > > > applying it to the hardware. After that pwm_apply_state could=
 do the
> > > > > > > following:
> > > > > > >
> > > > > > >         rstate =3D pwm_round_state(pwm, state)
> > > > > > >         pwm.apply(pwm, state)
> > > > > > >         gstate =3D pwm_get_state(pwm)
> > > > > > >
> > > > > > >         if rstate !=3D gstate:
> > > > > > >                 warn about problems    =

> > > > > >
> > > > > > For our case (we're using this with pwm-regulator), I don't rec=
all [*]
> > > > > > we need to be 100% precise about the period, but we do need to =
be as
> > > > > > precise as possible with the duty:period ratio -- so once we ge=
t the
> > > > > > "feedback" from the underlying PWM driver what the real period =
will
> > > > > > be, we adjust the duty appropriately.    =

> > > > >
> > > > > I admit that I didn't understood the whole situation and (some) t=
hings
> > > > > are worse with my patches applied. I still think that changing the
> > > > > caller's state variable is bad design, but of course pwm_get_state
> > > > > should return the currently implemented configuration.    =

> > > > =

> > > > Regardless of the pros and cons of the current situation, hopefully
> > > > we're in agreement that we shouldn't break existing users?  In gene=
ral
> > > > I'll probably stay out of the debate as long as we end somewhere th=
at
> > > > pwm_regulator is able to somehow know the actual state that it
> > > > programmed into the hardware.
> > > > =

> > > > +Boris too in case he has any comments.  =

> > > =

> > > Well, the pwm_round_state() approach sounds okay to me, though I don't
> > > really see why it's wrong to adjust the state in pwm_apply_state()
> > > (just like clk_set_rate() will round the rate for you by internally
> > > calling clk_round_rate() before applying the config).  =

> > =

> > This are two orthogonal things. The "should pwm_apply_state change the
> > state argument" isn't really comparable to the clk stuff, as there only
> > the frequency is provided that is passed by value, not by reference as
> > the PWM state.
> > =

> > The key argument for me to *not* change it is that it might yield
> > surprises, still more as today most drivers don't adapt. An -- I admit
> > constructed, not real-word -- case where adaption would go wrong is:
> > =

> > 	pwm_apply_state(pwm1, &mystate);
> > 	pwm_apply_state(pwm2, &mystate);
> =

> I see, but it's also clearly documented that pwm_apply_state() might
> adjust the period/duty params [1], and it's not like we have a lot of
> PWM users converted to use pwm_apply_state(), so I'd expect them to be
> aware of that and use a reference pwm_state if they need to apply it
> to different devices.

If we accept that pwm_apply_state should adapt its state argument that
would be ok for me, too. Then however we should make this consistent and
consider a deviation that is not reported there as a bug.

Note there are also more subtile problems. For example something like:

	def enable(self):
		state =3D pwm_get_state(self.pwm)
		state.duty_cycle *=3D 2
		pwm_apply_state(self.pwm, state)

	def disable(self):
		state =3D pwm_get_state(self.pwm)
		state.duty_cycle /=3D 2
		pwm_apply_state(self.pwm, state)

doesn't guarantee that the sequence enable(); disable(); is idempotent.
So my favourite would be to not modfies the caller's copy of state for
pwm_apply_state(). (Note, this doesn't necessarily have implications
about the semantik of the lowlevel driver callbacks.) Still
pwm_get_state() should work and yield the corrected settings.

> > > Note that pwm_config() is doing exactly the same: it adjusts the
> > > config to HW caps, excepts in that case you don't know it.  =

> > =

> > I don't see what you mean here. I don't see any adaption.
> =

> I mean that the config you end up is not necessarily what you asked
> for, and pwm_apply_state() was making that explicit by returning the
> actual PWM state instead of letting the user think its config has been
> applied with no adjustment.

Ah. Of course the lowlevel driver has to work with the capabilities of
the hardware. That is something we cannot get rid of. It's just a
question how we communicate this to the consumer.

> > > I do understand that some users might want to check how the HW will
> > > adjust the period/duty before applying the new setup, and in that
> > > regard, having pwm_round_rate() is a good thing. But in any case, it's
> > > hard for the user to decide how to adjust things to get what it wants
> > > (should he increase/decrease the period/duty?).  =

> > =

> > It depends on the use case. For one of them I suggested an algorithm.
> =

> Yes, I was just trying to say that passing a PWM state to
> pwm_round_state() is not enough, we need extra info if we want to make
> it useful, like the rounding policy, the accepted deviation on period,
> duty or the duty/period ratio, ....

Ack. My suggestion is that round_rate should do:

	if polarity is unsupported:
		polarity =3D !polarity
		duty_cycle =3D period - duty_cycle

	period =3D biggest supportable period <=3D requested period, 0 if no
		such period exists.

	duty_cycle =3D biggest supportable duty cycle <=3D requested
		duty_cycle, 0 if no such value exists

This would allow to let the consumer (or framework helper function)
decide which deviation is ok.

> > > My impression is that most users care about the duty/period ratio with
> > > little interest in accurate period settings (as long as it's close
> > > enough to what they expect of course). For the round-up/down/closest
> > > aspect, I guess that's also something we can pass to the new API. So,
> > > rather than passing it a duty in ns, maybe we could pass it a ratio
> > > (percent is probably not precise enough for some use cases, so we cou=
ld
> > > make it per-million).  =

> > =

> > Yeah, something like that would be good. Still for the device drivers I
> > would use the callback I suggested because that is easier to implement.
> =

> Sorry, I just joined the discussion and couldn't find the email where
> you suggested a new driver hook to deal with that. =


https://www.spinics.net/lists/linux-pwm/msg09627.html

> > This way the complexity is once in the framework instead of in each
> > driver.
> =

> I think we want to make it possible for drivers to do complex
> adjustments, and that implies passing all info  to the new driver
> hook. The core can then provide generic helpers for simple use-cases
> (approximation for static period/duty steps, where no reclocking is
> involved).

The problem is that it is hard to come up with a formalism to map "all
info" because there are so many different ways to prefer one
configuration over another. I believe we won't be able to design a sane
callback prototype that allows to map all use cases.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
