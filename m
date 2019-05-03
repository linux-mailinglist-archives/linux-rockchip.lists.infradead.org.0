Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B8A13441
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 21:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2Mz3ChrbwmeBaOaetMTm3khzHvcn2hs4elB6x8msFY=; b=Y4IEm098QllFCj
	OxlUaI/nG9YAjc79qhcY1uOdvvWxvp3nPc/1DG3suslJVLrToAFtXLQHWAAmWquA9yrOWtP/YcFQl
	6UCFNsi43KWwimqVjuJ6cv0VKk94It66RRRy4dr3ZcqjFBjGJk54dzpMVz4hJL2zNOMMcd7yh3qVg
	L6e+y2h1Zfsu7wbIHOdCQWxy5EInIT7muXrCfC5qeNEHHIhLV3oqR+PwkAc/y8chJz/vxUoVygWKh
	KoKc9MFwVGU7E8NLb13SuBqdyXd6B8i/2xaTtaUpWJEtGSgLUN7CVpC5Wo4IbEpDvU+IOKixorY23
	bIQCflV86oAIoyd83lOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMeL1-0007FM-OU; Fri, 03 May 2019 19:59:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMeKy-0007Em-Vi
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 19:59:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hMeKp-0007oB-J3; Fri, 03 May 2019 21:59:07 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hMeKn-0006un-1K; Fri, 03 May 2019 21:59:05 +0200
Date: Fri, 3 May 2019 21:59:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190503195904.zbqdfpowks6vwhv6@pengutronix.de>
References: <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
 <20190502091638.0f5a40b0@collabora.com>
 <20190502073326.sgqgkiexjkipvi27@pengutronix.de>
 <20190502100951.23ef9ed1@collabora.com>
 <20190502084243.anz5myut63g4torn@pengutronix.de>
 <20190503105915.GA32400@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503105915.GA32400@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_125917_182149_5105AA0C 
X-CRM114-Status: GOOD (  25.42  )
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
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Thierry,

On Fri, May 03, 2019 at 12:59:15PM +0200, Thierry Reding wrote:
> On Thu, May 02, 2019 at 10:42:43AM +0200, Uwe Kleine-K=F6nig wrote:
> > On Thu, May 02, 2019 at 10:09:51AM +0200, Boris Brezillon wrote:
> > > On Thu, 2 May 2019 09:33:26 +0200
> > > Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> wrote:
> > > > On Thu, May 02, 2019 at 09:16:38AM +0200, Boris Brezillon wrote:
> > > > > I do understand that some users might want to check how the HW wi=
ll
> > > > > adjust the period/duty before applying the new setup, and in that
> > > > > regard, having pwm_round_rate() is a good thing. But in any case,=
 it's
> > > > > hard for the user to decide how to adjust things to get what it w=
ants
> > > > > (should he increase/decrease the period/duty?).  =


Whenever I wrote pwm_round_rate I actually meant pwm_round_state.

> > > > It depends on the use case. For one of them I suggested an algorith=
m.
> > > =

> > > Yes, I was just trying to say that passing a PWM state to
> > > pwm_round_state() is not enough, we need extra info if we want to make
> > > it useful, like the rounding policy, the accepted deviation on period,
> > > duty or the duty/period ratio, ....
> > =

> > Ack. My suggestion is that round_rate should do:
> > =

> > 	if polarity is unsupported:
> > 		polarity =3D !polarity
> > 		duty_cycle =3D period - duty_cycle
> =

> This should really be up to the consumer. The PWM framework or driver
> doesn't know whether or not the consumer cares about the polarity or
> whether it only cares about the power output.

You don't understand my idea. If the hardware cannot implement the
requested state the round_state function has to return a best
approximation according to some rules. After that the consumer can
decide if they want that or not. As the hardware isn't touched nothing
bad happens.

(Well, apart from that I still cannot imagine a use case where with the
current possibilities of the PWM API a consumer can really care about
the polarity.)

> > 	period =3D biggest supportable period <=3D requested period, 0 if no
> > 		such period exists.
> > =

> > 	duty_cycle =3D biggest supportable duty cycle <=3D requested
> > 		duty_cycle, 0 if no such value exists
> =

> This doesn't really work. We need some way to detect "value does not
> exist" that is different from value =3D=3D 0, because value =3D=3D 0 is a
> legitimate use-case.

Same as above. If I asked for duty_cycle =3D 5 ns and get back duty_cycle
=3D 0 ns this means the driver cannot implement a duty_cycle in the
interval (0, 5] ns, nothing more. =


> > This would allow to let the consumer (or framework helper function)
> > decide which deviation is ok.
> =

> So what's the consumer supposed to do if it gets back these values?

If the value is then known to be the best (or good enough if the
consumer doesn't really care), it is used. Otherwise a different state
is rounded or the consumer gives up if it becomes clear that the
hardware cannot satisfy their needs.

> How does it know how to scale them if the deviation is not okay?

It depends on what the consumer considers optimal. I already gave one
example code how I think pwm_round_state should be used. Another is:

If the consumer wants a period as near as possible to a given target
period the algorithm with the round_state function as suggested would
look as follows (duty_cycle ignored here for the ease of discussion):

		mystate.period =3D target_period
		...
		pwm_round_state(pwm, &mystate)

		if (mystate.period =3D=3D target_period)
			return mystate.period

		mystate.period =3D 2 * target_period - mystate.period
		pwm_round_state(pwm, &mystate)

		if (mystate.period < target_period)
			return mystate.period;

		do {
			best_bigger =3D mystate.period
			mystate.period -=3D 1
			pwm_round_state(pwm, &mystate)
		} while (mystate.period > target_period)

		return best_bigger

> What in case the hardware can do achieve a good period that is
> slightly bigger than the requested period and which would give a very
> good result?

The above algorithm answers this question.

Theoretically the requirements for pwm_round_state could be changed such
that it is supposed to yield the nearest hit instead of the next smaller
one, but this only shifts the complexity to a different area. (I think
my suggestion is the better one though because the math for the lowlevel
drivers and also the helper functions is easier then. Also the search
terminates earlier if the consumer wants something bigger than the
driver can implement. Moreover "biggest value not bigger than requested"
is (IMHO) easier to understand for the affected coders than "nearest
value" because there are more ugly special cases. (Consider I ask for
(duty_cycle, period) =3D (10, 20) and the driver can implement (9, 18) and
(12, 21). Which of these is nearer?))

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
