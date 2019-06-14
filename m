Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192174694B
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 22:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H1/gdQRGdiy2Y9rgSyrHGyzasLDeqmfcKl4zktRdRtg=; b=KbErq//Fd426r63FqeBo/xs26
	RGNtvXSgdIz2jYSKA4Rh4chK/+CiKddkl6TW07GN8tse+AqPv6Uid8DDcczAs/soWpQqAThwwgGI5
	VLuOQa/U7vwBZON+jkBhGcQDal8MiqJ0UtQHZzdmgYtodZBFv3CpGlJoygoFqX37X62v6Yo9iSsE7
	msckhkWAt/WrMMEqURCfu4LuAHCQIguC0r67upig4wLkpbXYuLSSBgmUqpUFg7gcNKHDmlsdd9m96
	fSk58i9xIssySjxZix3MMyV2Y4TJ1PVvj0gXpTnkUrcA8+ZQY16BarG4uIdNxPj49GGT2KKss/QhK
	+h5de/iQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbssc-0000wi-52; Fri, 14 Jun 2019 20:32:58 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbssY-0000uM-4f
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 20:32:56 +0000
Received: from localhost (p5486CF81.dip0.t-ipconnect.de [84.134.207.129])
 by pokefinder.org (Postfix) with ESMTPSA id 1BFB72CF690;
 Fri, 14 Jun 2019 22:32:44 +0200 (CEST)
Date: Fri, 14 Jun 2019 22:32:43 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 17/28] drivers: Introduce bus_find_device_by_of_node()
 helper
Message-ID: <20190614203243.GC7991@kunai>
References: <1560534863-15115-1-git-send-email-suzuki.poulose@arm.com>
 <1560534863-15115-18-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
In-Reply-To: <1560534863-15115-18-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133254_328704_997A177D 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 rafael@kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 gregkh@linuxfoundation.org, Takashi Iwai <tiwai@suse.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-i2c@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: multipart/mixed; boundary="===============1330089391523916351=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1330089391523916351==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8NvZYKFJsRX2Djef"
Content-Disposition: inline


--8NvZYKFJsRX2Djef
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 14, 2019 at 06:54:12PM +0100, Suzuki K Poulose wrote:
> Add a wrapper to bus_find_device() to search for a device
> by the of_node pointer, reusing the generic match function.
> Also convert the existing users to make use of the new helper.
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
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Acked-by: Wolfram Sang <wsa@the-dreams.de> # for the I2C parts


--8NvZYKFJsRX2Djef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0EBGsACgkQFA3kzBSg
KbZ+QhAAhP0RWmmLpy5mMKDwba8oyF5FX1jQZTj4zTukyeAJ5dFtxhQ8mANYEYOf
2rnnAm42pcb0kyDIvP6xMF+yg+UK2lyd12Ud6k5TD3y+7Ochwlkcyu1JJessZZir
YbDlY/eFeIyOzINxAx8yLLfYWncpANpAguyo321TmSXyoCFW1JbRlffuTxGKcXFt
qYFrLQdwosCtFQV33gLalIQ69zBhN5c7Jgf0pVhiUjH8NF73yF0hgOkl9ptdzROX
4Bzkw5RdlXV9N5yqy3lRa1iNzQ1BJlvFfOxphlHmUEvjXNlvvvHjKyInyFtsbpBR
tKeUTjeWeVEfwOidPkEmiB8G3+k1LuGX9yOXZmnvVcSqy0xel3CyzjhZWDn6sGdB
XgbvqJtd78g/Eaqr+y1WhaP5r8N8G/PzJODTtUkeisF06tocDxtLHLLhUjOhenDB
6eCpKAP3dL7wxniDPMG0xzckpCWeIlCMlM/2BN+OyX16P1jy10HreRmCiIug7/5V
6AFQji0dWbEwTtnTC6kYQsHXE3XRVILTHKJmWDE1R/Sosp08HOv128fw4G3a/5GK
Rx6tVLYgs75/X6kc20Cyy51wgJiteoV3CvSXmq8mGhdA4XP5v8TLtKVKWMj+UMOx
s+Q5PgkjDnvMXp7+HAGpHTlLe0tifUY2nZYtttsZKHraj4bgHoY=
=val9
-----END PGP SIGNATURE-----

--8NvZYKFJsRX2Djef--


--===============1330089391523916351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1330089391523916351==--

