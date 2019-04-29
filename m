Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009C0EBEB
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 23:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i46HN0LpQyaaNGen/wGwAznE2dZu8bII5QmhFu0I7nk=; b=uRfhft41m7Jx1u
	E78V5jy72WlfuI2WhNMw03orWv22csyvB8M4tUitJC78tVesjai5AyIpSZFO0VhiR8KCjCsZAItni
	sr3hV/Hmc34p6Zq7hakjeJA+OybUkhTWm5TzGr8i5hdVxA3Cb/WBtDtq7yg+UoDkqvv0E71em/0Y+
	LNuYRgFSYvoMTeG3TUOzigH/5T1KpMgTEuzYW1kBpz228A54c4L1pNhREGBcuIwuIXk7R1e2Sh64i
	sKtn8tTK76Ku2fBbvTlzc1nGdS86PzQIFRELcrdFYWIG8yOxMgXgNEfrGZBZjPWfUCq9EdA0dViMW
	y7xPnGXMhiuO+AIwrZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLDVe-0002qn-5T; Mon, 29 Apr 2019 21:08:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLDVZ-0002qJ-GY
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 21:08:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hLDVU-0005Mv-BO; Mon, 29 Apr 2019 23:08:12 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hLDVS-00079r-2u; Mon, 29 Apr 2019 23:08:10 +0200
Date: Mon, 29 Apr 2019 23:08:10 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190429210810.fpb4qamaoihrcr66@pengutronix.de>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <20190429110354.GB7747@ulmo>
 <20190429123102.7wfcdqusn24g5rm7@pengutronix.de>
 <20190429161749.GD7747@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429161749.GD7747@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_140817_874837_BD5740CE 
X-CRM114-Status: GOOD (  48.39  )
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
 Chen-Yu Tsai <wens@csie.org>, kernel@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Thierry,

On Mon, Apr 29, 2019 at 06:17:49PM +0200, Thierry Reding wrote:
> On Mon, Apr 29, 2019 at 02:31:02PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Mon, Apr 29, 2019 at 01:03:54PM +0200, Thierry Reding wrote:
> > > On Mon, Apr 08, 2019 at 04:39:14PM +0200, Uwe Kleine-K=F6nig wrote:
> > > > On Mon, Apr 01, 2019 at 03:45:47PM -0700, Doug Anderson wrote:
> > > > > Hi,
> > > > > =

> > > > > On Sat, Mar 30, 2019 at 2:17 AM Heiko Stuebner <heiko@sntech.de> =
wrote:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > [adding two chromeos people, because veyron and gru are quite
> > > > > > heavy users of the rockchip pwm for both backlight and regulato=
rs]
> > > > > >
> > > > > > Doug, Brian: patchwork patch is here:
> > > > > > https://patchwork.kernel.org/patch/10851001/
> > > > > >
> > > > > > Am Dienstag, 12. M=E4rz 2019, 22:46:03 CET schrieb Uwe Kleine-K=
=F6nig:
> > > > > > > The pwm-rockchip driver is one of only two PWM drivers which =
updates the
> > > > > > > state for the caller of pwm_apply_state(). This might have su=
rprising
> > > > > > > results if the caller reuses the values expecting them to sti=
ll
> > > > > > > represent the same state.
> > > > > =

> > > > > It may or may not be surprising, but it is well documented.  Spec=
ifically:
> > > > > =

> > > > >  * pwm_apply_state() - atomically apply a new state to a PWM devi=
ce
> > > > >  * @pwm: PWM device
> > > > >  * @state: new state to apply. This can be adjusted by the PWM dr=
iver
> > > > >  *    if the requested config is not achievable, for example,
> > > > >  *    ->duty_cycle and ->period might be approximated.
> > > > > =

> > > > > I don't think your series updates that documentation, right?
> > > > > =

> > > > > =

> > > > > > > Also note that this feedback was incomplete as
> > > > > > > the matching struct pwm_device::state wasn't updated and so
> > > > > > > pwm_get_state still returned the originally requested state.
> > > > > =

> > > > > The framework handles that.  Take a look at pwm_apply_state()?  I=
t does:
> > > > > =

> > > > > ---
> > > > > =

> > > > > err =3D pwm->chip->ops->apply(pwm->chip, pwm, state);
> > > > > if (err)
> > > > >     return err;
> > > > > =

> > > > > pwm->state =3D *state;
> > > > =

> > > > > =

> > > > > ---
> > > > > =

> > > > > So I think it wasn't incomplete unless I misunderstood?
> > > > =

> > > > You're right, I missed that the updated state was saved.
> > > > =

> > > > > > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutroni=
x.de>
> > > > > >
> > > > > > I've tested this on both veyron and gru with backlight and pwm =
regulator
> > > > > > and at least both still come up, so
> > > > > > Tested-by: Heiko Stuebner <heiko@sntech.de>
> > > > > >
> > > > > > But hopefully Doug or Brian could also provide another test-poi=
nt.
> > > > > =

> > > > > I'd definitely be concerned by this change.  Specifically for the=
 PWM
> > > > > regulator little details about exactly what duty cycle / period y=
ou
> > > > > got could be pretty important.
> > > > > =

> > > > > I guess the problem here is that pwm_get_state() doesn't actually=
 call
> > > > > into the PWM drivers, it just returns the last state that was app=
lied.
> > > > > How does one get the state?  I guess you could change get_state()=
 to
> > > > > actually call into the PWM driver's get_state if it exists?  ...b=
ut
> > > > > your patch set doesn't change that behavior...
> > > > =

> > > > My intention here is more to make all drivers behave the same way a=
nd
> > > > because only two drivers updated the pwm_state this was the variant=
 I
> > > > removed.
> > > > =

> > > > When you say that the caller might actually care about the exact
> > > > parameters I fully agree. In this case however the consumer should =
be
> > > > able to know the result before actually applying it. So if you do
> > > > =

> > > > 	pwm_apply_state(pwm, { .period =3D 17, .duty_cycle =3D 12, ...})
> > > > =

> > > > and this results in .period =3D 100 and .duty_cycle =3D 0 then prob=
ably the
> > > > bad things you want to know about already happend. So my idea is a =
new
> > > > function pwm_round_state() that does the adaptions to pwm_state wit=
hout
> > > > applying it to the hardware. After that pwm_apply_state could do the
> > > > following:
> > > > =

> > > > 	rstate =3D pwm_round_state(pwm, state)
> > > > 	pwm.apply(pwm, state)
> > > > 	gstate =3D pwm_get_state(pwm)
> > > > =

> > > > 	if rstate !=3D gstate:
> > > > 		warn about problems
> > > =

> > > I'm not sure this is really useful. I would expect that in most cases
> > > where it is necessary to have an exact match between the requested st=
ate
> > > and the actual state is important, you may not even get to warning ab=
out
> > > problems because the system may shut down (e.g. the regulator might n=
ot
> > > be outputting enough power to keep the system stable).
> > > =

> > > I think it'd be far more useful to give consumers a way to request th=
at
> > > the state be applied strictly. I'm not sure how realistic that is,
> > > though. Most PWMs have some sort of restrictions, and in most cases t=
his
> > > might still be okay. Perhaps some sort of permissible relative deviat=
ion
> > > factor could be added to give more flexibility?
> > =

> > I think in practise this isn't going to work. Consider the case that
> > Brian cares about: "we do need to be as precise as possible with the
> > duty:period ratio". So if we want 1/5 duty we might request:
> > =

> > 	.duty_cycle =3D 100, .period =3D 500
> > =

> > an are using pwm_set_state_exact(). Now consider this fails. What is the
> > next value you should try?
> =

> The idea is that if the driver fails to set the exact state if that's
> what was requested, then we just fail. If we really need an exact set
> of values, then it doesn't make sense to offer the user alternatives
> using rounding helpers.

I think in practise for most cases you don't need a completely exact
duty_cycle/period setting. Some inaccuracy is fine, but how much and in
which directions might differ. Also the consumer might not care if it
gets 30% duty cycle with an inversed polarity or 70% with a normal one.
Some consumer might care about duty-cycle/period ratio, another about
the absolute value of period. Then yes, if you really need

	.duty_cycle =3D 100, .period =3D 500

it doesn't help you that the driver suggests 99/498 instead. But it also
doesn't hurt.

> On the other hand, if we introduce an error margin, we could make the
> above work. Let's say the PWM regulator requires accuracy within 1%, we
> could do something like this:
> =

> 	state.duty_cycle =3D 100;
> 	state.period =3D 500;
> 	state.accuracy =3D 1; /* there's a slew of ways to encode this */
> 	pwm_apply_state(pwm, &state);
> =

> That way, the PWM driver can determine whether or not the ratio of
> possible duty-cycle/period is accurate within that 1% requested by the
> user:
> =

> 	ratio =3D duty-cycle / period
> =

> 	requested =3D 100 / 500
> 	possible =3D 99 / 498
> =

> 	possible / requested ~=3D 0.993
> =

> In other words, possible is > 99% of requested and therefore within the
> 1% accuracy that pwm-regulator requested. The PWM driver can therefore
> go ahead and program the selected set of values.

This is less powerful than my suggestion. With .accuracy implemented in
the lowlevel drivers, how would you request 20 % duty cycle with period
<=3D 1 ms? With my round_rate suggestion it would be:

	mystate.duty_cycle =3D 200000;
	mystate.period =3D 1000000;

   retry:
	pwm_round_rate(pwm, &mystate);

	if mystate.period * 2 =3D=3D mystate.duty_cycle * 10:
		pwm_apply_state(pwm, &mystate)
		return 0
	elif mystate.period =3D=3D 0:
		return -ESOMETHING
	elif mystate.period * 2 < mystate.duty_cycle * 10:
		mystate.duty_cycle -=3D 1
		goto retry
	elif mystate.duty_cycle =3D=3D 0:
		return -ESOMETHING
	else
		mystate.period -=3D 1
		goto retry

(if some derivation is ok, this can be implemented in the respective
checks)

Even if a deviation of 1 % is ok for me, with your proposal I would end
with 99 / 498, while I could have 99 / 495 which better matches my needs.
(And if I start with mystate.duty_cycle =3D 100 and mystate.period =3D 500
above, I will hit that value-pair with the second call to
pwm_round_rate().)

With your suggestion requesting

	.duty_cycle =3D 100, .period =3D 500, .accuracy =3D 1

the driver is free to set

	.duty_cycle =3D 100000000, .period =3D 500000000

as possible / requested is 1. This for sure isn't ok for all consumers.

Also with the above request I might prefer

	.duty_cycle =3D 98, .period =3D 500

over

	.duty_cycle =3D 101, .period =3D 500

even thought the latter is better according to your metric.

I admit this is not free of complexity to use. But this is because the
problem is not trivial. And it is powerful enough that a helper function
that gets a state and a needed accuracy as you suggested above, can be
implemented.

> > It's hard to say without knowing why it failed. If however you could do
> > =

> > 	mystate.duty_cycle =3D 100
> > 	mystate.period =3D 500
> > 	pwm_round_state(pwm, &mystate);
> > =

> > and after that we have:
> > =

> > 	mystate.duty_cycle =3D 99;
> > 	mystate.period =3D 498;
> > =

> > (because pwm_round_state is supposed to round down[1] and the hardware =
can
> > implement multiples of 3 only). Then it is easier to determine the next
> > state to try.
> =

> No, it's really not any easier to determine the next state to try.

See above suggestion. When there is only just pwm_set_state_exact() the
only way to implement "20 % duty cycle with period <=3D 1 ms" by iterating
over the whole set of allowed values until you find a hit. (Also if
.accuracy is used, you have to go with the first hit unless you iterate
over the good set of parameters several times with giving the driver
more freedom to derivate in each loop.)

> The problem is that the consumer doesn't know anything about the
> restrictions of the driver, and it shouldn't need to know. Given the
> above, how is it supposed to know that the restriction is "multiple of
> 3".

It doesn't. Still there are algorithms that allow to determine the best
set of duty_cycle and period (whatever "best" currently means to you) in
a more effective way than by a testing each good state.

> Just because the two values happen to be multiples of 3 doesn't mean
> that's the restriction. Also, we really don't want every consumer in the
> kernel to implement factorization (and whatnot) to guess what possible
> constraints there could be.

Full ack. A consumer trying to guess what the exact restriction is, is
bound to fail in at least some cases. But as this is not necessary (as
shown above) this argument is irrelevant.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
