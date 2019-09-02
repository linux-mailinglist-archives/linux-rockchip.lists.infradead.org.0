Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A16A594D
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 16:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXj7m6f0RyKk80xzeucU2uPKp5npmOhGYlYH4QJbSgU=; b=cnBOw+eDvJtXLP
	p9Y3qM9oyF4adTcyguTxQQt+xakej851VudTsc8ZLDsJ15aUxCH4zvQxCHK8JBwz8Dya6HTZAf/y1
	fksZ3lLz2I5C8hJHSVBGGVaF7MKw/UintvOApn98zK412S8fzhXvS3KXRQx6pgLbkRajM2hBLdObM
	zRGMJqegqkopR3PgwJbuNmHHAR29nI9Ac1b3tzGqktQl1ggVA79Tj/qkmMf1S8EPlB/BO35rh/Qc2
	71vnDISF9mZ72NNlWLSn3DotAyrEWamKOFZSK5pgAOq7bAFEn+oaN+FQJayfsJ8Cb5BSah7JWfAwF
	03Ai/j+olJfnCmOr6W9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nIc-0001sL-R5; Mon, 02 Sep 2019 14:27:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nIZ-0001ry-Vw
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 14:27:17 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4nIV-0000BC-PK; Mon, 02 Sep 2019 16:27:11 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4nIT-0007gn-9z; Mon, 02 Sep 2019 16:27:09 +0200
Date: Mon, 2 Sep 2019 16:27:09 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_072716_023858_EA419608 
X-CRM114-Status: GOOD (  13.45  )
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

On Fri, Aug 30, 2019 at 10:39:16AM -0700, Doug Anderson wrote:
> Hi,
> =

> On Sat, Aug 24, 2019 at 8:37 AM Uwe Kleine-K=F6nig <uwe@kleine-koenig.org=
> wrote:
> >
> > The pwm-fsl-ftm driver is one of only three PWM drivers which updates
> > the state for the caller of pwm_apply_state(). This might have
> > surprising results if the caller reuses the values expecting them to
> > still represent the same state.
> >
> > Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> > ---
> >  drivers/pwm/pwm-fsl-ftm.c | 4 ----
> >  1 file changed, 4 deletions(-)
> =

> Presumably this patch could break something since the pwm-fsl-ftm
> driver doesn't appear to implement the get_state() function.  ...or
> did I miss it?

I don't expect breakage. We have more than 50 pwm drivers and only three
of them made use of adapting the passed state. So unless you do
something special with the PWM (i.e. more than backlight, LED or fan
control) I don't think a consumer might care. But it might well be that
I miss something so feel free to prove me wrong.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
