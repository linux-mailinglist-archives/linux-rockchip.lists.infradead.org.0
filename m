Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F030AA72B9
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 20:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVUqtIBmbzE1TmDuJtlWibw3v2eJwT0Fk8+Yp6z0Bww=; b=WPGURIACb+AEYV
	6lqWshP7UQ8Xwt4G5u0zTYNHiavaCUiAo0zR3pAZHuyzF5GnVNnA1hf8b7/7tohKfZxd3Ll0YEHlZ
	/SLUdUjHUOC0yE2ey+5rcqWAMBQbWj+OO3N/MUjCJ4YuROVcQddnKWpQLnvUgdwYfXYCbN4Cinjw4
	Y3dtpm6a9hR8plshXjxDDqWXkuEC0Rno+LsTXMB0ItgOm3OwudPANTmx2qgBmVzaFudaMJm3yeVpm
	mes75eU0CJ1PtuT5zv+K7xFophLQ8kPO0DjQbntUXp0iHWkuH5Dsq0tXUcnz7NpcmDY0xkSBs5iaY
	izZTvvW2S3MYY8gO1dpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Dqe-0003UO-97; Tue, 03 Sep 2019 18:48:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Dqb-0003U3-DY
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 18:48:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i5DqV-00058n-Eb; Tue, 03 Sep 2019 20:48:03 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i5DqS-00066C-KC; Tue, 03 Sep 2019 20:48:00 +0200
Date: Tue, 3 Sep 2019 20:48:00 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190903184800.2fmmvwyzbwbsaf6y@pengutronix.de>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
 <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
 <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_114809_460125_29EF7F43 
X-CRM114-Status: GOOD (  19.30  )
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

Hello,

On Tue, Sep 03, 2019 at 09:54:37AM -0700, Doug Anderson wrote:
> On Mon, Sep 2, 2019 at 7:27 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Fri, Aug 30, 2019 at 10:39:16AM -0700, Doug Anderson wrote:
> > > On Sat, Aug 24, 2019 at 8:37 AM Uwe Kleine-K=F6nig <uwe@kleine-koenig=
.org> wrote:
> > > >
> > > > The pwm-fsl-ftm driver is one of only three PWM drivers which updat=
es
> > > > the state for the caller of pwm_apply_state(). This might have
> > > > surprising results if the caller reuses the values expecting them to
> > > > still represent the same state.
> > > >
> > > > Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> > > > ---
> > > >  drivers/pwm/pwm-fsl-ftm.c | 4 ----
> > > >  1 file changed, 4 deletions(-)
> > >
> > > Presumably this patch could break something since the pwm-fsl-ftm
> > > driver doesn't appear to implement the get_state() function.  ...or
> > > did I miss it?
> >
> > I don't expect breakage. We have more than 50 pwm drivers and only three
> > of them made use of adapting the passed state. So unless you do
> > something special with the PWM (i.e. more than backlight, LED or fan
> > control) I don't think a consumer might care. But it might well be that
> > I miss something so feel free to prove me wrong.
> =

> I don't have this hardware so I can't prove you wrong.  ...but
> presumably someone added the code to return the state on purpose?
> =

> Maybe you could implement get_state() for this driver in your series?

Sure, I could. But I don't have hardware either and so I'm not in a
better position than anybody else on this list.

I suggest to apply as is during the merge window, and let affected
user report problems (or patches) if there really is an issue.
Guessing what people might suffer from and trying to cure this with
untested patches won't help I think.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
