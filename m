Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE01BA85
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 18:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0bVbJdOD7HE/uB34nMpufCGf6BzTCaev/k4cf3w8xrs=; b=TTCGPiuG+JeoZlec9zfx0Ermi
	/vuUpppF9ZoGeH8XIEPiXp9eQewOl/w8sj6GFFq2dp0RCmYuRXF2X9UuEXHRdWKrihUVoMVLoAn7D
	7Cd9q2hCDdjIFTTaEqyMopsqfUSBhGeZJEf/VLvYQxtfY6TP0y9C3N6hqNeElQBIVms4sU4fCaKZL
	Fcp/2cNFwPFBh/QDi2NttH4xyXoGIsmxQxOgOrbKDxWu1gJm7TzINsLgI3hFfgTruBIl+7wND3p65
	OihwYqSOxsVXCpOZ64ignXVFxvwJ5SR9frQLjfP6HelSC2PIUQSrBSSQvpQY+h+7AIgzc+Rnp8uda
	Oh0rgUFNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDOt-0001dy-9y; Mon, 13 May 2019 16:02:03 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDOp-0001dd-Gq
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 16:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3h6H85EVVknVN735yBVABZFWWJ/Hs9GjX/eqsJpiqQA=; b=dpnxvmk4LHC9RaoteNJVql2gy
 v64CuTr4G1JlKK4YO22r4+I0GDpDcMzuyDy6UAIqxxCXigsfU3ZQgjALF5dwq75E5hOQzr2neHnJo
 UIJgE7ZlDXZKM9/uf6vQ7rsVAUP653+XUVq1rBUr87jxJ2I4RN64I8iaZ0FcF1bFj27x8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQDOm-0006zU-84; Mon, 13 May 2019 16:01:56 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 8E4631129232; Mon, 13 May 2019 17:01:53 +0100 (BST)
Date: Mon, 13 May 2019 17:01:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Message-ID: <20190513160153.GD5168@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
 <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
X-Cookie: Must be over 18.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_090159_722768_31F01B57 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: multipart/mixed; boundary="===============0163230890330994584=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0163230890330994584==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Content-Disposition: inline


--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2019 at 08:57:12AM -0700, Doug Anderson wrote:
> On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:

> > It isn't clear to me that it's a bad thing to have this even with the
> > SPI thread at realime priority.

> The code that's there right now isn't enough.  As per the description
> in the original patch, it didn't solve all problems but just made
> things an order of magnitude better.  So if I don't do this revert I

I'm not saying the other changes aren't helping, I'm saying that it's
not clear that this revert is improving things.

--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzZlPAACgkQJNaLcl1U
h9C7UQf/X1Is6ypg5kydcvdMhkuJTCwQwCyVTp61r+ONkbX8IGTCy/peNvsyuQZd
qfelfepJ1N1M1Kss7RehpaEV7TWECxlECSrfCA6a3slYTSytIRHyIQHQx6KD14xM
YOmLPaSF4xzdMboJP4M8zVRQSDQZVWAvohvZ+xIAqoMrzd69Ew6emJeVG0aUQ++L
DGehingQgrrHdtla+ywW8NJrat7K2garMK6syGdKS4DO90+0wUoroy9KOuvccwFQ
QL6hcR3spWrlv4srjapt71wJGwf/S3k1R/VAIYe+7qVKj6glm94L0ziba1BdBOgP
B4t298Dh3eaZZyPtO1x9DvgsYz2zxg==
=SNtQ
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--


--===============0163230890330994584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0163230890330994584==--

