Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4E01BB43
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 18:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OabnW3lrRcUvUr89GWfUJdcK71knIBWu8sKrY3k6YNs=; b=jX0DQ2p+62Pg3ioF/q+MDQ/ZP
	t8reZ4jkZEHLKAYX+p5vrcwQmmcHW90QxfJSzx4cJIvQdy+KInAdrxMyy8venCwBEb3iz/+jchLkR
	hzao0eR0jigJCcFURzLEAx6FeY0iZIMATIHdFQlgMsfVaG586YyRqOFZRDV3/hed/MmV/JIjBT9K3
	nZpJXm9bzvBVdfrk7stDUHPrz2aAOOUjhr4kOgo69ZMBIImw2eVT+iy9KuefUhO9pcoHUQKp5gCQC
	19SoHq+P73kiobV9iYWdQQ85wzVEwZ3LoJ2aDw4JUSEw2jDGj348VITbhTU4D2JRsI7BFemaRsjyM
	dvt93/2gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQE78-0005cm-Tz; Mon, 13 May 2019 16:47:46 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQE75-0005cV-Nj
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 16:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cmw1azSGePo9Tra/A8IT2nSO3d5ZUZMjnBUWCbl/Rss=; b=dO6tK1Z1EZNsMRpXZLq++xomk
 Q2rTVnHpb2EAabfPPyzIAMHAlkVQHuONJk3MJELQLHa4mAJTF0GaN+7ttlxTSFXwW4FHbPuu+dDQU
 Q6p9OuA7khdxrbeS+JIpwan8YSHFNxaquTD+kFXuAycKJcWLdFXQFj02NGBAk5ewRVknA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQE73-00078A-2H; Mon, 13 May 2019 16:47:41 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id AA0E91129232; Mon, 13 May 2019 17:47:38 +0100 (BST)
Date: Mon, 13 May 2019 17:47:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Message-ID: <20190513164738.GE5168@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
 <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
 <20190513160153.GD5168@sirena.org.uk>
 <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
X-Cookie: Must be over 18.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_094743_933604_FF71616C 
X-CRM114-Status: UNSURE (   9.85  )
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
Content-Type: multipart/mixed; boundary="===============7732092160009290497=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============7732092160009290497==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline


--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2019 at 09:03:28AM -0700, Doug Anderson wrote:
> On Mon, May 13, 2019 at 9:02 AM Mark Brown <broonie@kernel.org> wrote:

> > I'm not saying the other changes aren't helping, I'm saying that it's
> > not clear that this revert is improving things.

> If I add a call to force the pumping to happen on the SPI thread then
> the commit I'm reverting here is useless though, isn't it?

Well, I'm not convinced that that change is ideal anyway and it does
leave you vulnerable to further changes in the SPI core pushing things
out to calling context which feels like it isn't going to be helping
robustness.

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzZn6kACgkQJNaLcl1U
h9BaBwf/YLbKPIH1GfhSAIJxQR6QQOaXbxIW/A+t1Jg0dZHRhJPuF7L2TL9bo+A9
aU2XQE4/MDEHMZ2/pAMwm4iB/AI/1XtXAsizVcJApEtEyivGklahbXpmLX9B3pRA
hYuD1loKDS10tOIuXuNIH6kDs36n1mHdCIpvJ7cqQEkYXE43P8vEgnqYfvrjNA7q
UY0XmxAECBZNVOExqqRPupnt1aAsJefXDtW6D7cdrAq92etDMCn1i6VAdBp++3f5
v76rZOdAihbWBJV+AGX5hIpO7m5a7fHZNELJu7tJu1G6kahBLbB/XtQKoOTSUObs
ffKy1s8njB0vrGUu7QFr4KP0hjnQ4g==
=aiE6
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--


--===============7732092160009290497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7732092160009290497==--

