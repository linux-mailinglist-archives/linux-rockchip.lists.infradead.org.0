Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6206911386
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 08:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bA45rGUCGYC47aGYt/Jv9oaaBz/iAq3C2wZDD/BliNc=; b=fETXcUE7Fsmb+i
	XmgUv2PQtZqBZr6Uo5egAJjd398vbq/LMek4zOOVdqr0YzssoKAUzXNBK+o74+d5iqrw5DP3nY+ky
	sSIOC5fz/BLavJkm/GxKjBrnZ9UJONPFbYtuFnUxd0Enp8hYwqH+/JUm8Eure4RucRdv1OlDRwdAH
	W71tDwzUN82SCM9ENq0Nsaxw9QPelc8OtBqn7MOpOBPyO2hJicci3bevXAcRcFM43ly2oK+NxIlcv
	uZR1o14yngaHTC9+9DH5ul3SQ7Brum6yodPyJVtgZQBoEaLqRcPm3//JOh7xXmtxttAsC6wvwT2Cl
	kPyEb3o08A0H31GafK9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM5W6-0003bg-5u; Thu, 02 May 2019 06:48:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM5W2-0003bI-M6
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 06:48:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hM5Vu-0007Ur-4B; Thu, 02 May 2019 08:48:14 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hM5Vr-0007UN-Na; Thu, 02 May 2019 08:48:11 +0200
Date: Thu, 2 May 2019 08:48:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190502064811.p7hbsf5rxu2lrmmf@pengutronix.de>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
 <20190430092824.ijtq3gfh6mqujvnk@pengutronix.de>
 <CAD=FV=WUi0NbsRDJA_4WeC62QYXjLNH2OygU1FOCx==W0SyqpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WUi0NbsRDJA_4WeC62QYXjLNH2OygU1FOCx==W0SyqpQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_234822_879664_73EE7806 
X-CRM114-Status: GOOD (  18.56  )
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
 kernel@pengutronix.de, Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Doug,

On Tue, Apr 30, 2019 at 07:38:09AM -0700, Doug Anderson wrote:
> On Tue, Apr 30, 2019 at 2:28 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > > > Also it should be possible to know the result before actually
> > > > configuring the hardware. Otherwise things might already go wrong
> > > > because the driver implements a setting that is too far from the
> > > > requested configuration.
> > >
> > > Later in this thread Thierry didn't like the "round rate" idea due to
> > > races.  One way to solve that could be to indicate to the PWM
> > > framework which direction you'd like it to error in: a higher duty
> > > cycle or a lower one.
> >
> > I don't think this would result in settings as optimal as with my
> > suggestion. If you don't agree and want to convince me: Show how your
> > suggestion would work with a PWM that can implement only multiples of 3
> > for duty_cycle and period and you want 20% duty cycle with period <=3D 1
> > ms (without making use of the knowledge about the limitation of the
> > PWM in the algorithm).
> =

> I guess I was assuming that somehow this would percolate down into an
> API call that the PWM driver would implement, so you could make use of
> the PWM knowledge in the algorithm.

As there are so many different possibilities what could be "best" for a
consumer use case, I believe that it would end in a maintenance
mess if each lowlevel driver would need a callback to implement each
rounding strategy.
 =

> ...but I don't have any real strong feelings about this API so I'll
> leave it to you and Thierry to hash out what makes you both happy.

I look forward to us two agreeing on a best approach ... :-)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
