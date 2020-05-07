Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5C01C9C41
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 May 2020 22:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wDHNlt5cLd/9e9bssMtJU5VxoO139J7zYwdgNefjAx8=; b=j0fVHosq6jQn64J4Mk2M6TtWg
	XMGQKoNsm6/JukFadtSPm0o884p1u6aJYy4EU/T+4jI6MGBLDMsLQhzHAzEAoNFDVUl0vw0SL4O2L
	BqgVCqs7YC+rAo5mrir5eGazh2rfDeA/ySQTXlWD1SRnZzSRdBqhZIsDaY6oto3R0msFTM/rVTtDb
	7uo95QIzMZhRh2KLfNN7L9dXcjx/E8LS0jXYv3cadcSs6EMZcHxBbKhetFN9LpqCVhfp4huZU9ONC
	IoCR6lc+cLS/HDCB/wyF1j43HmmU2nNCZleeFx8AaN1Un4B9UPP7OJZVbmtpXQHTFJO3oedcmWlb4
	8XWhkCzCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWn3l-0004wf-Kb; Thu, 07 May 2020 20:23:57 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWn3Y-0004nj-6Z; Thu, 07 May 2020 20:23:45 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E845A1C0002;
 Thu,  7 May 2020 20:23:37 +0000 (UTC)
Date: Thu, 7 May 2020 22:23:37 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
Message-ID: <20200507202337.GJ2422122@aptenodytes>
References: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
 <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_132344_378956_DE52BADD 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============4393797047186801056=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4393797047186801056==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LQAwcd5tHl0Qlnzi"
Content-Disposition: inline


--LQAwcd5tHl0Qlnzi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 30 Apr 20, 23:24, Johan Jonker wrote:
> Hi Paul,
>=20
> >=20
> > Add a new compatible for the PX30 Rockchip SoC, which also features
> > a RGA block. It is compatible with the RK3288 RGA block.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml =
b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > index dd645ddccb07..740586299da9 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > @@ -23,6 +23,9 @@ properties:
>=20
>=20
> >        - items:
> >            - const: rockchip,rk3228-rga
> >            - const: rockchip,rk3288-rga
> > +      - items:
> > +          - const: rockchip,px30-rga
> > +          - const: rockchip,rk3288-rga
>=20
> Use enum.
>=20
>       - items:
>           - enum:
>             - rockchip,px30-rga
>             - rockchip,rk3228-rga
>           - const: rockchip,rk3288-rga

Are you sure about this? The rk3228 above does it as I did it and other exa=
mples
like allwinner,sun4i-a10-csi.yaml appear to be doing the same too.

The case with rockchip,rk3288-rga alone already seems covered.

Cheers,

Paul

> > =20
> >    reg:
> >      maxItems: 1
> > --=20
> > 2.26.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--LQAwcd5tHl0Qlnzi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl60bkkACgkQ3cLmz3+f
v9FGRQf+NACpI/Qm8LidCAjDd2uHl97xlPGI/gb4zzpGYeK/t1BGJfLcDSY4MCkK
srG+0VSic+47U4qA5hlWqq4jXYTLkV5DBpF79lSqNCI6yrPln2oTaZ2bIcY/mF6E
Q1/AljAuM8pcoBnFdLwJEq7Td82Nb79teutcAlVCSl2uUvVI+bEY5EtLmWjeLnOb
ejYXlItHF3Od/hKE8C7GPpPazLyb4Oh67ZP1/RpnxkCEmkl/J41nni9NIRi+wV7Q
1Sz063fVOuzdDdDgmfc7NHdl9pstkqBq/gKyurtSGkpVnAC/qSfSGSRdCk3JX1Om
QZhzaBXFzWq8bStS1rjzsAz+AHUctA==
=zYey
-----END PGP SIGNATURE-----

--LQAwcd5tHl0Qlnzi--


--===============4393797047186801056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4393797047186801056==--

