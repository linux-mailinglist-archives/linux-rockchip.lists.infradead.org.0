Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BC1757CF
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 21:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BlJlAN1CXFTFS2lYSPuCuR7HtpVCrKkIiUdV79Q9/lE=; b=UyxOJ9OnvkF+Kxd2Y1lfKKW2k
	0n4BNij4QnqzQCPYAaoyn6VRyRpC5v7eiCraSjfJ+UYZi/PevNZExdcos0pVf5uDps4PYuWSUrkQ2
	kS5GKXfeb1mKozAEoF3kB/XNBLft6OJWSPlnqf7C0/LxTnHpR04geqHerkbad9QFeXyY+AkZMM5MA
	EGhlEnvKw9klFRfg5/7EebJB69ZbDtr2I82LZR72zKuJhDTvxaigSDFow3cHJyTP19THWgurM8lgz
	ziDN4SVSopZFR3EjlM+Ng9weuxbFFY543skPwnnpFLmpPDrWiFM/z7+sJGdcPG+CKkxt91z2NTfCw
	3F7hPRCMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjMr-0002Ka-G0; Thu, 25 Jul 2019 19:25:33 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjMW-00028k-Sw; Thu, 25 Jul 2019 19:25:14 +0000
Received: from localhost (p5486CDF3.dip0.t-ipconnect.de [84.134.205.243])
 by pokefinder.org (Postfix) with ESMTPSA id 8B57C4A1209;
 Thu, 25 Jul 2019 21:25:11 +0200 (CEST)
Date: Thu, 25 Jul 2019 21:25:11 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 2/7] drivers: Introduce device lookup variants by
 of_node
Message-ID: <20190725192510.GA1440@kunai>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-3-suzuki.poulose@arm.com>
MIME-Version: 1.0
In-Reply-To: <20190723221838.12024-3-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_122513_233317_0FA6420C 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Thor Thayer <thor.thayer@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, rafael@kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-i2c@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, David Airlie <airlied@linux.ie>,
 Jiri Slaby <jslaby@suse.com>, devicetree@vger.kernel.org,
 Alan Tull <atull@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, gregkh@linuxfoundation.org,
 Takashi Iwai <tiwai@suse.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Peter Rosin <peda@axentia.se>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============8574749371506645132=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============8574749371506645132==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2019 at 11:18:33PM +0100, Suzuki K Poulose wrote:
> Introduce wrappers for {bus/driver/class}_find_device() to
> locate devices by its of_node.
>=20
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: devicetree@vger.kernel.org
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-spi@vger.kernel.org
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: Alan Tull <atull@kernel.org>
> Cc: Moritz Fischer <mdf@kernel.org>
> Cc: linux-fpga@vger.kernel.org
> Cc: Peter Rosin <peda@axentia.se>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Thor Thayer <thor.thayer@linux.intel.com>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Peter Rosin <peda@axentia.se>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  - Dropped the reviewed-by tags from Thor, Mark, Andrew and Peter as the
>    patches are mereged, though there are no functional changes.

Acked-by: Wolfram Sang <wsa@the-dreams.de> # I2C part


--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl06AhIACgkQFA3kzBSg
KbZNIA/9HLsMnNVbTacVYltjXILzMKZYQ0kihekXpZMQbl+jlUgeNb0ge8XrGl47
3ssjlN6wpc7uMNy9T6ScDTjzESHgvFKzKssjfoJ5fp+MDd3KFChbvSmLmm5vVOGc
VjnjK+ls5meWoG4XdmJuqzlYbdnHOBI/7di4xhfzgN5TvJOjs83YHr7peNVJQgjv
gTYT2flkrgONnfGKofDGJ4Bk60xOOT/w6oYY3CkzLxbKkaUd5BiIJriXCcKYVNXd
uLLv5bw/yoU6Smilkgaq8ZdKSbid6VUbXul2Xi6/EEaxQX4Isvx3XNlplBogeAsB
Jy39hEz2I+UEQHfWNKAIVJJSWyMH/HxwuGYeHB6e9pLqF93rBbXZla+/Uu+u00yW
BzThKuVHqdQ4FDSbeLz69vJgjvStNgDG/XcYn9PbGtkPiSIrIDJbH1Wq8Wk/PKLX
XvYAUkM5O/PYp0K4oS6G+7SmDPMLoCCem1PGJsN9QkWfV4b05MtFQFRvRE/voO7Z
IeUCD1KiM4RUDNd6f9n7DM25OxMtwknJIbT7wuLjDe2KvPvF8/FTI2u2pY0GMaJe
QZ1uZsSqL7qIUxud5DdTNEyIHgjJDybwyYs/abejIwxMK/tbyl3CiKC2ozg7pc0y
myVXYa1A9Ecw3n86cwAqQON/rD/j1Bw+dQ/I85BaWBgSb1rPjzI=
=uZDa
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--


--===============8574749371506645132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8574749371506645132==--

