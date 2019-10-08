Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F13CF9B0
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 14:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zuJ5Xu7fSSU8YiEzU5vvKJ4PnDQrN8xadOZpa8qL/ls=; b=j7AeYL/9TwgQrAagiP5BS0KMH
	k3zwnDh+mLVPT9m0Snf36jXa4N5gtFlhiS1RmWYqSXOphIo6/3/7YBK+MsoES/IWp/ozub95Bjrlv
	tmbvP6DSxQr+ubFXTbZS37sAq7Wjuo6U6yElbo0JfD6lrmf7KbB1VyXWN1HmG9hMb5qPCV441SSkd
	dI8+lJyEmYCqpapZ69/4O8F2PbdWGPWa1olSoUFI+6kADRi4I0dO8CX5pc1C1Tu2OkAXHkUywjuz2
	OuDVU8KuYA0mu2hG+88OwfpEVWC+soTuGz2xPBVGjM4MYDgF1oNAbZJJ58kHI6R69C3jSRuB1QwJ7
	5n1lUpPlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoXV-00039x-KZ; Tue, 08 Oct 2019 12:24:29 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoXS-000397-9m
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 12:24:28 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id E340C80307; Tue,  8 Oct 2019 14:24:01 +0200 (CEST)
Date: Tue, 8 Oct 2019 14:24:16 +0200
From: Pavel Machek <pavel@denx.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4.19 061/106] PCI: rockchip: Propagate errors for
 optional regulators
Message-ID: <20191008122416.GE608@amd>
References: <20191006171124.641144086@linuxfoundation.org>
 <20191006171149.476262829@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <20191006171149.476262829@linuxfoundation.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_052426_649414_D9AD6087 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Thierry Reding <treding@nvidia.com>
Content-Type: multipart/mixed; boundary="===============9139597677207997703=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============9139597677207997703==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Qz2CZ664xQdCRdPu"
Content-Disposition: inline


--Qz2CZ664xQdCRdPu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-10-06 19:21:07, Greg Kroah-Hartman wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> [ Upstream commit 0e3ff0ac5f71bdb6be2a698de0ed0c7e6e738269 ]
>=20
> regulator_get_optional() can fail for a number of reasons besides probe
> deferral. It can for example return -ENOMEM if it runs out of memory as
> it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> problematic because it results in these legitimately fatal errors being
> treated as "regulator not specified in DT".
>=20
> What we really want is to ignore the optional regulators only if they
> have not been specified in DT. regulator_get_optional() returns -ENODEV
> in this case, so that's the special case that we need to handle. So we
> propagate all errors, except -ENODEV, so that real failures will still
> cause the driver to fail probe.

61,62,63,64: Is this fixing any real bug? Why is it suitable for
-stable?

								Pavel

> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct rockc=
hip_pcie *rockchip)
> =20
>  	rockchip->vpcie12v =3D devm_regulator_get_optional(dev, "vpcie12v");
>  	if (IS_ERR(rockchip->vpcie12v)) {
> -		if (PTR_ERR(rockchip->vpcie12v) =3D=3D -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie12v) !=3D -ENODEV)
> +			return PTR_ERR(rockchip->vpcie12v);
>  		dev_info(dev, "no vpcie12v regulator found\n");
>  	}
> =20
>  	rockchip->vpcie3v3 =3D devm_regulator_get_optional(dev, "vpcie3v3");
>  	if (IS_ERR(rockchip->vpcie3v3)) {
> -		if (PTR_ERR(rockchip->vpcie3v3) =3D=3D -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie3v3) !=3D -ENODEV)
> +			return PTR_ERR(rockchip->vpcie3v3);
>  		dev_info(dev, "no vpcie3v3 regulator found\n");
>  	}
> =20
>  	rockchip->vpcie1v8 =3D devm_regulator_get_optional(dev, "vpcie1v8");
>  	if (IS_ERR(rockchip->vpcie1v8)) {
> -		if (PTR_ERR(rockchip->vpcie1v8) =3D=3D -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie1v8) !=3D -ENODEV)
> +			return PTR_ERR(rockchip->vpcie1v8);
>  		dev_info(dev, "no vpcie1v8 regulator found\n");
>  	}
> =20
>  	rockchip->vpcie0v9 =3D devm_regulator_get_optional(dev, "vpcie0v9");
>  	if (IS_ERR(rockchip->vpcie0v9)) {
> -		if (PTR_ERR(rockchip->vpcie0v9) =3D=3D -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie0v9) !=3D -ENODEV)
> +			return PTR_ERR(rockchip->vpcie0v9);
>  		dev_info(dev, "no vpcie0v9 regulator found\n");
>  	}
> =20

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--Qz2CZ664xQdCRdPu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl2cf/AACgkQMOfwapXb+vJv3ACfRzDkFXlTi9tPJOxO6+xiSAgn
z9oAnjZ9WXSOdp7sZSsix4hoHFpYHA7p
=2wkE
-----END PGP SIGNATURE-----

--Qz2CZ664xQdCRdPu--


--===============9139597677207997703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9139597677207997703==--

