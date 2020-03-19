Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEAA18AD04
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 07:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptjknbbqCOH1nFcO0V0MB7Dlu96zHEpmLTXfVGz6hWM=; b=i4kMJagWC76epb
	8/P78tblhtAzL20b7DFr36StVtI3Hp/oUzwGnGsZdAPAtRWF/gpIZkgYF4lfdD4HPdpC2DQ87N8fL
	EXXIZQCR87yQOCQvh/BcGksFCGe/QmG9eVNkI2AvuUwtBP16iXjW2b6AalJphOfiHVTPPzekL02kX
	ue/I8C+oiEWn3gIItnZ3M7VmaDxou60vM9U6Vsu3POZYA8hyaCrmuQwBcnDRZqs1BqF8ehTPMTfJh
	EVLRGN0VJzStXmznsUx4QbQnfkGxANoKLDlzEPBwNii3kfDE6EDo9oScUbl962pJCa6RZVbThsO21
	2CNO1Uko8ZQvt1hZHcJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEp1h-0002tV-OE; Thu, 19 Mar 2020 06:51:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEp1U-0002fc-HQ
 for linux-rockchip@lists.infradead.org; Thu, 19 Mar 2020 06:51:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEp0w-0005WC-FG; Thu, 19 Mar 2020 07:50:46 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEp0p-0002ri-RB; Thu, 19 Mar 2020 07:50:39 +0100
Date: Thu, 19 Mar 2020 07:50:39 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200319065039.szhh5dm6v3ejwijd@pengutronix.de>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
 <20200317174043.GA1464607@ulmo>
 <20200317210042.ryrof3amr7fxp4w5@pengutronix.de>
 <20200318225953.GA2874972@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318225953.GA2874972@ulmo>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_235120_598279_A7F6A3A8 
X-CRM114-Status: GOOD (  30.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Barker <pbarker@konsulko.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Paul Cercueil <paul@crapouillou.net>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


[Dropped Tony Prisk from recipients as the address bounces]

Hello,

On Wed, Mar 18, 2020 at 11:59:53PM +0100, Thierry Reding wrote:
> On Tue, Mar 17, 2020 at 10:00:42PM +0100, Uwe Kleine-K=F6nig wrote:
> > Hello,
> > =

> > On Tue, Mar 17, 2020 at 06:40:43PM +0100, Thierry Reding wrote:
> > > On Tue, Mar 17, 2020 at 02:32:25PM +0200, Oleksandr Suvorov wrote:
> > > > The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> > > > Rename it to PWM_POLARITY_INVERTED.
> > > =

> > > It isn't misspelled. "inversed" is a synonym for "inverted". Both
> > > spellings are correct.
> > =

> > Some time ago I stumbled about "inversed", too. My spell checker doesn't
> > know it and I checked some dictionaries and none of them knew that word:
> > =

> > https://www.lexico.com/search?utf8=3D%E2%9C%93&filter=3Ddictionary&dict=
ionary=3Den&query=3Dinversed
> > https://de.pons.com/%C3%BCbersetzung/englisch-deutsch/inversed
> > https://dictionary.cambridge.org/spellcheck/english-german/?q=3Dinversed
> > =

> > https://en.wiktionary.org/wiki/inverse#Verb mentions "inverse" as a verb
> > having "inversed" as past participle.
> =

> Here are the first three results from a Google query:
> =

> 	https://www.yourdictionary.com/inversed

There is something fishy. In the Verb section it says indeed, that it is
the past participle and simple past of inverse. The entry for inverse
however only has sections that identify this word as adjective or noun;
not a verb.

> 	https://www.dictionary.com/browse/inversed

Not sure I'd count this as hint that inversed exists. The entry shown to
me under this URL is about "inverse" and it has

	verb (used with object), in=B7versed, in=B7vers=B7ing.
		? to invert.

Does this mean: "Did you mean invert instead?"

> 	https://en.wiktionary.org/wiki/inversed

Yeah, that's the one I found, too.

I still have the impression that "inversed" is in use because people
don't know better and understand the intended meaning. And this results
in leaking of this word into the references.

> > Having said this I think (independent of the question if "inversed"
> > exists) using two similar terms for the same thing just results in
> > confusion. I hit that in the past already and I like it being addressed.
> =

> I don't know. It's pretty common to use different words for the same
> thing. They're called synonyms.

In literature yes, I agree. In a novel it is annoying to repeat the same
words over and over again and some variation is good. In programming
however the goal is a different one. There the goal should be to be
precise and consistent.

> > > And as you noted in the cover letter, there's a conflict between the
> > > macro defined in dt-bindings/pwm/pwm.txt. If they end up being includ=
ed
> > > in the wrong order you'll get a compile error.
> > =

> > There are also other symbols that exist twice (GPIO_ACTIVE_HIGH was the
> > first to come to my mind). I'm not aware of any problems related to
> > these. What am I missing?
> =

> There's currently no problem, obviously. But if for some reason the
> include files end up being included in a different order (i.e. the
> dt-bindings header is included before linux/pwm.h) then the macro will
> be evaluated and result in something like:
> =

> 	enum pwm_polarity {
> 		PWM_POLARITY_NORMAL,
> 		1,
> 	};
> =

> and that's not valid C, so will cause a build error.

I admit I didn't look closely here and I assume you are right. If I
understand Oleksandr right this is only an intermediate step and when
the series is applied completely this issue is gone. Still it might be
worth to improve the series here.

My original question was about similar problems with GPIO_ACTIVE_HIGH.
Are you aware of problems there?

> > > Note that DT bindings are an ABI and can
> > > never change, whereas the enum pwm_polarity is part of a Linux intern=
al
> > > API and doesn't have the same restrictions as an ABI.
> > =

> > I thought only binary device trees (dtb) are supposed to be ABI.
> =

> Yes, the DTB is the ABI. dt-bindings/pwm/pwm.h is used to generate DTBs,
> which basically makes it ABI as well.

We disagree here. With this argument you could fix quite some things as
ABI.

> Yes, the symbol name may not be part of the ABI, but changing the
> symbol becomes very inconvenient because everyone that depends on it
> would have to change.

Oleksandr adapted all in-tree users, so it only affects out-of-tree
users. In my book this is fine.

> Why bother?

To make the API more precise and consistent. That's a good goal in my
eyes.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
