Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9E61AD49
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 19:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hLiyVpJvtQ6eAJ/zjztnlV/ZP/AnpQC+FVztGSnGgtA=; b=S4D+i1I6mwxGsmfAqYOsNWmVI
	6tO59dXm77uoP13Swz3UomSD8Du3wF5/yK8ptdRO9uwWxvQE/go5Fao8e3HbYY0PMkkE5E4meZBT1
	HQGjr0oFU3zlnxp8Q1Pj+QROfAIBRODisqdLTkUfUA7gHpsEKUszudL4AlskczxZgMnNoYdoLd4t2
	mopgKuw6s39YRA6CeM+JWmNQzxJ0QsMSrr2qSBiJeADuGBDl+BPO5r56SmLNUYhqd6YP+ZavIw2Yz
	J1p3BbT3JEEtELdak8cW3+/ieuQ++hevFpZhm393PzXyzPIpQ7iKMpnuZiB/EvV/N1AJdXPyfoLSZ
	lIoL4jJcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrv5-0008SW-0n; Sun, 12 May 2019 17:05:51 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv1-0008PS-Lf
 for linux-rockchip@lists.infradead.org; Sun, 12 May 2019 17:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nbByTlVdvhd4cJtvH/Oei0P8BYeWA+j4hmBdzYBpl7U=; b=pgfyvM8VHeCIw0PFOvMa1wVNz
 pACtyWMg0cyUO/qu4Flq2BvrCcyy8t/EE5J6W4F15cNzxWTmZcqYXjvApYtuc+LyyvihQzUkgglJO
 NupuSyvoRjZKqJW/H5M3+J05bEwM3TkEB1r723hp+dbWCjw8u37MqR89rQy79X/WRtIao=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPruu-00044f-8V; Sun, 12 May 2019 17:05:40 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 939C8440034; Sun, 12 May 2019 08:45:38 +0100 (BST)
Date: Sun, 12 May 2019 16:45:38 +0900
From: Mark Brown <broonie@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Message-ID: <20190512074538.GE21483@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190510223437.84368-5-dianders@chromium.org>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100547_857908_96748A69 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: multipart/mixed; boundary="===============7844736516753287257=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============7844736516753287257==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ns7jmDPpOpCD+GE/"
Content-Disposition: inline


--Ns7jmDPpOpCD+GE/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2019 at 03:34:37PM -0700, Douglas Anderson wrote:
> This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.
>=20
> We have a better solution in the patch ("platform/chrome: cros_ec_spi:
> Set ourselves as timing sensitive").  Let's revert the uglier and less
> reliable solution.

It isn't clear to me that it's a bad thing to have this even with the
SPI thread at realime priority.

--Ns7jmDPpOpCD+GE/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzXzyEACgkQJNaLcl1U
h9CZ8Af/Zx78PRk1JAMVQgIM9tFEJxhIQNOf2mVis4Ku5Pv89nRp1solLrhwReKo
osAxMTDdLUOKuZxBJxBdshhCdHB04UXpwDnaPeX8jXeN43azdvv0jz8/UuUmhl69
9KqCSjyH2hQ+zSCMcsZK2iN+44J4Q+Sv4Gr2R95Cpvo1kRqxz/LOfhOa3xoStb7X
eFgjYaSmEA7yS5vt2sLunTzeH7YH1o9j9tG/L0QRpeHeJIqtwcUWUctr1PUjrNdE
AXYJpaV8wrQnzFkcmf+wQt4I477pALXbx9OlmFj1tP6YgklHvFc65Z/eNNUlYePs
D0koY+RVt8j06SujCyTf+c9I/89Wng==
=4tri
-----END PGP SIGNATURE-----

--Ns7jmDPpOpCD+GE/--


--===============7844736516753287257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7844736516753287257==--

