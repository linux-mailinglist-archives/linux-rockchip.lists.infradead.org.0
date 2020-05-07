Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A001C9C49
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 May 2020 22:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YIq5mHNmxh3YRaKm68tHoLlKl6bRzV7Epw90+PDkOsc=; b=c0i8ZfMe7ZPcr1irMOGIPf0og
	JpyoUrL//0sjruhPm72WRDWWqoj2D3HhMIPh+B0KH3vfM/Ej/W7eYr0JKTZJKqliiEeSLvF0b0Qm5
	KsJEWIBj0Ca6/9QqekYDQqj8qlWGyyt3SFvWdMaK32Ribvi3hYWjaHIKkqWv2ZWmotWi0fWQRH3Sw
	xY7lOMUIK/og5YQuTYNqXx/zKEucoz19+mnD2X0xvDJE6u4LU4IvBmdk6Y+ttwLGoi/4svM8BaHD2
	WATO4yqfet9VCZpKyO/y8I/kKp4PbAL4fOljt+YRTvujeJsqN/+HPQVSunE/fhanpO92G0T1kDZy8
	tQRBJOSCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWn5x-0007v7-23; Thu, 07 May 2020 20:26:13 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWn5o-0007nT-5x; Thu, 07 May 2020 20:26:05 +0000
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 26FC6100002;
 Thu,  7 May 2020 20:25:59 +0000 (UTC)
Date: Thu, 7 May 2020 22:25:58 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Message-ID: <20200507202558.GK2422122@aptenodytes>
References: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com>
 <c3954924-c220-73ef-06dd-85b6876be819@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c3954924-c220-73ef-06dd-85b6876be819@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_132604_358753_FC9AEFBB 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 hansverk@cisco.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4917622248665478101=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4917622248665478101==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aqWxf8ydqYKP8htK"
Content-Disposition: inline


--aqWxf8ydqYKP8htK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 01 May 20, 00:05, Johan Jonker wrote:
> Hi Paul,
>=20
> > The PX30 features a RGA block: add the necessary node to support it.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/d=
ts/rockchip/px30.dtsi
> > index f809dd6d5dc3..3de70aa4f1ce 100644
> > --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > @@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
> >  		status =3D "disabled";
> >  	};
> > =20
> > +	rga: rga@ff480000 {
> > +		compatible =3D "rockchip,px30-rga", "rockchip,rk3288-rga";
> > +		reg =3D <0x0 0xff480000 0x0 0x10000>;
> > +		interrupts =3D <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> > +		clock-names =3D "aclk", "hclk", "sclk";
>=20
> > +		resets =3D <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> > +		reset-names =3D "core", "axi", "ahb";
> > +		power-domains =3D <&power PX30_PD_VO>;
>=20
> sort
>=20
> 		power-domains =3D <&power PX30_PD_VO>;
> 		resets =3D <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> 		reset-names =3D "core", "axi", "ahb";

What's the rationale behind this (besides alphabetic sorting, which I don't
believe is a rule for dt properties)? Some nodes above in the file have it =
in
the same order that I do, and I like to see clocks followed by resets.

Cheers,

Paul

>=20
>=20
> > +	};
> > +
> >  	qos_gmac: qos@ff518000 {
> >  		compatible =3D "syscon";
> >  		reg =3D <0x0 0xff518000 0x0 0x20>;
> > --=20
> > 2.26.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--aqWxf8ydqYKP8htK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl60btYACgkQ3cLmz3+f
v9Ha1Qf/Xr5JD/LpgWWDus3bRN+aBAhQYAdGgLJOCLzfZ73l5ovYy4znYccQvOP7
9jefTg3IgTEVV/Dxsh+EFuaWAJzHmEREpDRMSCywxGQgrkWyU8rgB2z7GHjT0xUM
DV0SU5Hi8mL2SDyXXMjAu+VQRu2ewNCXTSrNGMNey2R9ii5XZB51VZ61lYh4Zct8
wZ/M1S+jG6x/JbZT4UalUqvUyQIvNHS27RlkBROLBHcEBngSWCB/iQCOuLl5kjwa
3FFE9oLKQC/8C0q8Ys8o0Oz7lnfH5EEQ+3y4wLuHBTLGjMBrED3AREihwZOaLoHS
OmTf3luRVKugDzmY3MKRI6vUPxK0lA==
=fLpQ
-----END PGP SIGNATURE-----

--aqWxf8ydqYKP8htK--


--===============4917622248665478101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4917622248665478101==--

