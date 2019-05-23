Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF5927E94
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 May 2019 15:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XVfYKbX6s00Ih0AX/8cW+D9GAGzGV1cRb/WpnlkKZQM=; b=qEDqz4pub/PEqaS1iLzZrVoUl
	MwXMtRkUwtyIncPOK3Y3wRWImWl69Z5huCwkIMG+BZzmwZRTXXgLEXXC0sh5ENd6Y4q2NarKSmMLt
	9qw11qG14oWtIdtDY3n/lf2hqVAvZr4IqslOVMBvRmFz/f44Zm1N6aTPs/uU2XI2Yvf6ce5qbiCXQ
	mFiKyPhJIBnKGEldfsbRqJy/Mdok9Nb9LII8Qt6Y6K9FvX2cw+Ox1yqiGwKr04AZXV7GpfNzkFoRE
	X2XMT1Paef+46+xX/BAraejEPv7ChkPZl5OMkHfTQDCRRh1h0dj0oLOgOKbMEealMs2xfxrXgxU9+
	pu10tNCXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTo3G-0007hr-7R; Thu, 23 May 2019 13:46:34 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTo3C-0007hD-1a
 for linux-rockchip@lists.infradead.org; Thu, 23 May 2019 13:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mfme33xseZptaUR1J0V/caYBOllJ3rsr79Z37c1uExY=; b=p03EHWT2EucM1oy2mwwkLoCa4
 cEClGv19UdrvGGd0zT2qpW5VR+hR7uqzOdMkk8Pq97xH1hF2IuNiIw8WCKa8qpFzoFcgidqqUxoFM
 qkFRSOWgyqaN+BmVvehSRKNxsehKedaX1zgRl/igV7NNJdWO7vlbzoLgwPplFrbbMbU6w=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTo39-0000Dd-D8; Thu, 23 May 2019 13:46:27 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 0250D1126D24; Thu, 23 May 2019 14:46:25 +0100 (BST)
Date: Thu, 23 May 2019 14:46:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 2/3] spi: Allow SPI devices to request the pumping
 thread be realtime
Message-ID: <20190523134625.GG17245@sirena.org.uk>
References: <20190515164814.258898-1-dianders@chromium.org>
 <20190515164814.258898-3-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190515164814.258898-3-dianders@chromium.org>
X-Cookie: I brake for chezlogs!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_064630_230351_D9FAAB01 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: multipart/mixed; boundary="===============3101645039599833252=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============3101645039599833252==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bO4vSxwwZtUjUWHo"
Content-Disposition: inline


--bO4vSxwwZtUjUWHo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 15, 2019 at 09:48:12AM -0700, Douglas Anderson wrote:
> Right now the only way to get the SPI pumping thread bumped up to
> realtime priority is for the controller to request it.  However it may
> be that the controller works fine with the normal priority but
> communication to a particular SPI device on the bus needs realtime
> priority.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git tags/spi-rt-pump

for you to fetch changes up to 924b5867e7bd6a6a98014f0517b747465b108011:

  spi: Allow SPI devices to request the pumping thread be realtime (2019-05-23 14:44:02 +0100)

----------------------------------------------------------------
spi: Allow setting pump to RT priority

----------------------------------------------------------------
Douglas Anderson (1):
      spi: Allow SPI devices to request the pumping thread be realtime

 drivers/spi/spi.c       | 36 ++++++++++++++++++++++++++++++------
 include/linux/spi/spi.h |  2 ++
 2 files changed, 32 insertions(+), 6 deletions(-)

--bO4vSxwwZtUjUWHo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzmpDEACgkQJNaLcl1U
h9AT8wf9HCQwiI9ChQBim3VkHh1VA8vwPgC20zoPo4PUGPcvvaWX5I3lrUoeCp1Q
vpMaUDp9J8OQ57wbmNFjqYYwLAK66XMUPQmqyH6q+1m1JSp5FP41aVGkJD32UOnk
wqsDdznTOvdDrgnVtJWtqjSWiK18M4OQJhIJGwe0wBRIfk+bpQDa+s+R34wgHCt8
xGJZcdJagggMsco0HvSgLuIRcIVuLbsCiu9Vxh1GR3ko3x7xLUVhkoKzxJ81qVu1
99KmShuE/rXn2IKU0lfC6WjItvey3r1RWyKFsSd7xKI6Izz45lNFrUlgrSOyLW4R
NqMXjQUeC/nEluG0IIC4X0mbopIIsw==
=Xgy/
-----END PGP SIGNATURE-----

--bO4vSxwwZtUjUWHo--


--===============3101645039599833252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3101645039599833252==--

