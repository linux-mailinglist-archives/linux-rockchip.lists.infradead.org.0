Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33020A7D8F
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 10:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M76peNxmOhjc+MTn8/xmbUgPQSFnF8kp9GJiXbuZoJM=; b=Xf175zIJjhzC0e
	8lLDbcDGootKGE+YLOsfiN03uiRjO3qMzW2b+mKwbn2epVk6xZUQMdKt7/IR7TdZYdOV++GH1dAWj
	3NHRKHZ1w8IXA0y3mP4h6W1t7AGGgPnzV8DRQGAhR2C1zgWUGPjZTo6jUd0PQyykWBKgQlhH9HFoc
	LF9r024VGaUB/qcI1yKhUMynY86mo2eN5/n2N2kkYrKZRpchcxMr+G6YVeJz++xFWQ1iY5LxcObx0
	QgXQ7hhcBXPjHAYONV90XjYj6R8Une9rhdFjRVsPPc5g5bY72MeRoJHJNncE0OKuwLs8K97Z/QmXb
	eZgEjHUveFL0esdJ/jeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5QY3-0002Dq-5R; Wed, 04 Sep 2019 08:21:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QXx-0002Bt-FN
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 08:21:47 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i5QXs-0003ro-FB; Wed, 04 Sep 2019 10:21:40 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i5QXq-0007xf-0D; Wed, 04 Sep 2019 10:21:38 +0200
Date: Wed, 4 Sep 2019 10:21:37 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190904082137.7rro26fh4cankej5@pengutronix.de>
References: <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
 <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
 <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
 <20190903184800.2fmmvwyzbwbsaf6y@pengutronix.de>
 <CAD=FV=XOyayzv6N9Ky8m2ffXe4UzUijzrL8JCMZC3K+MEzaRFw@mail.gmail.com>
 <20190903201550.gxcyed5svtq33ev2@pengutronix.de>
 <CAD=FV=WjRiaNLJQJ25OeNSpY455H-ev8g3iZN24UXQtk3uXhtA@mail.gmail.com>
 <20190903210740.qgyvxxmsdg5dzaby@pengutronix.de>
 <CAD=FV=VDj8pCmkBd70buQNVmiv56OUEVWfRJALYgtZcESvPXdw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=VDj8pCmkBd70buQNVmiv56OUEVWfRJALYgtZcESvPXdw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_012145_677599_0FB3E5D9 
X-CRM114-Status: GOOD (  39.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
 Patrick Havelange <patrick.havelange@essensium.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 02:48:54PM -0700, Doug Anderson wrote:
> Hi,
> =

> On Tue, Sep 3, 2019 at 2:07 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > On Tue, Sep 03, 2019 at 01:50:27PM -0700, Doug Anderson wrote:
> > > Hi,
> > >
> > > On Tue, Sep 3, 2019 at 1:15 PM Uwe Kleine-K=F6nig
> > > <u.kleine-koenig@pengutronix.de> wrote:
> > > >
> > > > On Tue, Sep 03, 2019 at 12:35:25PM -0700, Doug Anderson wrote:
> > > > > Hi,
> > > > >
> > > > > On Tue, Sep 3, 2019 at 11:48 AM Uwe Kleine-K=F6nig
> > > > > <u.kleine-koenig@pengutronix.de> wrote:
> > > > > >
> > > > > > Hello,
> > > > > >
> > > > > > On Tue, Sep 03, 2019 at 09:54:37AM -0700, Doug Anderson wrote:
> > > > > > > On Mon, Sep 2, 2019 at 7:27 AM Uwe Kleine-K=F6nig
> > > > > > > <u.kleine-koenig@pengutronix.de> wrote:
> > > > > > > > On Fri, Aug 30, 2019 at 10:39:16AM -0700, Doug Anderson wro=
te:
> > > > > > > > > On Sat, Aug 24, 2019 at 8:37 AM Uwe Kleine-K=F6nig <uwe@k=
leine-koenig.org> wrote:
> > > > > > > > > >
> > > > > > > > > > The pwm-fsl-ftm driver is one of only three PWM drivers=
 which updates
> > > > > > > > > > the state for the caller of pwm_apply_state(). This mig=
ht have
> > > > > > > > > > surprising results if the caller reuses the values expe=
cting them to
> > > > > > > > > > still represent the same state.
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.or=
g>
> > > > > > > > > > ---
> > > > > > > > > >  drivers/pwm/pwm-fsl-ftm.c | 4 ----
> > > > > > > > > >  1 file changed, 4 deletions(-)
> > > > > > > > >
> > > > > > > > > Presumably this patch could break something since the pwm=
-fsl-ftm
> > > > > > > > > driver doesn't appear to implement the get_state() functi=
on.  ...or
> > > > > > > > > did I miss it?
> > > > > > > >
> > > > > > > > I don't expect breakage. We have more than 50 pwm drivers a=
nd only three
> > > > > > > > of them made use of adapting the passed state. So unless yo=
u do
> > > > > > > > something special with the PWM (i.e. more than backlight, L=
ED or fan
> > > > > > > > control) I don't think a consumer might care. But it might =
well be that
> > > > > > > > I miss something so feel free to prove me wrong.
> > > > > > >
> > > > > > > I don't have this hardware so I can't prove you wrong.  ...but
> > > > > > > presumably someone added the code to return the state on purp=
ose?
> > > > > > >
> > > > > > > Maybe you could implement get_state() for this driver in your=
 series?
> > > > > >
> > > > > > Sure, I could. But I don't have hardware either and so I'm not =
in a
> > > > > > better position than anybody else on this list.
> > > > > >
> > > > > > I suggest to apply as is during the merge window, and let affec=
ted
> > > > > > user report problems (or patches) if there really is an issue.
> > > > > > Guessing what people might suffer from and trying to cure this =
with
> > > > > > untested patches won't help I think.
> > > > >
> > > > > I suppose it's not up to me, but I would rather have a patch that
> > > > > attempts to keep things working like they did before rather than =
one
> > > > > that is known to change behavior.  Even worse is that your patch
> > > > > description doesn't mention this functionality change at all.
> > > >
> > > > I suggest to add
> > > >
> > > >         As the driver doesn't provide a .get_state() callback it is
> > > >         expected that this changes behaviour slightly as pwm_get_st=
ate()
> > > >         will yield the last set instead of the last implemented set=
ting.
> > > >
> > > > to the commit log to fix this.
> > > >
> > > > > I will also note that not everyone does a deep test of all
> > > > > functionality during every kernel merge window.  ...so your chang=
e in
> > > > > functionality certain has a pretty high chance of remaining broke=
n for
> > > > > a while.
> > > >
> > > > I don't expect any real breakage. The changed behaviour only affects
> > > > users of pwm_get_state() that is called after pwm_apply_state().
> > > >
> > > > > In addition if a PWM is used for something like a PWM
> > > > > regulator then subtle changes can cause totally non-obvious break=
ages,
> > > > > maybe adjusting regulators by a very small percentage.
> > > >
> > > > So for drivers/regulator/pwm-regulator.c this affects the .get_volt=
age()
> > > > call only. Note that .set_voltage() does call pwm_get_state() but
> > > > doesn't use the result. I don't see how my change would affect the
> > > > configuration written to the PWM registers when the PWM regulator d=
river
> > > > is its user. So if you want to convince me that the PWM regulator i=
s one
> > > > of the potentially affected consumers, you have to work a bit harde=
r.
> > > > :-)
> > >
> > > Prior to your patch, pwm_apply_state() would call the ->apply()
> > > function, right?  That would modify the state.  Then pwm_apply_state()
> > > would store the state (after it had been modified) into pwm->state.
> > > All future calls to pwm_get_state() would return the modified state.
> > >
> > > ...this means that the call to pwm_get_state() in
> > > pwm_regulator_get_voltage() would return the actual hardware state.
> > >
> > > After your patch series pwm_get_state() will not return the actual
> > > hardware state for "pwm-fsl-ftm.c", it will return the state that was
> > > programmed.
> > >
> > > While pwm_set_voltage() will not necessarily be affected, future calls
> > > to pwm_regulator_get_voltage() could be affected.  Unless you are
> > > asserting that 100% of the calls to pwm_get_voltage() cosmetic.
> > >
> > >
> > > Please correct anything I got wrong there.
> >
> > I think this is all true. The key question here is then: Who calls the
> > .get_voltage() callback and cares about the result? Yes, it changes a
> > few files in sysfs but apart from that?
> =

> There are lots of drivers that call get_voltage() for things other
> than sysfs, but without auditing each one I can't say if any of them
> would change behavior in a way that would matter.

In my book it is ok to do such a change. The driver continues to compile
just fine, it isn't knowingly broken. And if someone finds a regression
we can fix it then and have someone who cares for testing.

And even if a regulator changes its behaviour slightly and breaks in a
hardly detectable way, I would bet that in 95% of the cases it only
worked by chance before. And I hope for the remaining 5% who seem to
care about correctness, that the reverify on a kernel upgrade.

Yes, there might be some cases falling through the cracks, but if we
start to demand this kind of care from people who work on generic code
(here: PWM core) we will be stuck for a long time and scare people with
motivation away. So the lesser evil in my eyes is to accept that not all
corner cases might be handled because they are unknown.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
