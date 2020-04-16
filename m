Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD081AC16C
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 14:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5fSJES/HUXZFWB+7GPw98FQ3+MYNoWdBDl5Z4L0hIL8=; b=VGua3/BNgqT+uDQlpZ944n83v
	IUehyudPzGuitFFQKs6DEA7WhgNuX10npRrHOzM9iXEYUXXM8FQGKeKWDzHth/uSvMkFA1IwtSC3J
	BbVBb7oQD7Wus9N+Xlj/T02Wm80cns20L0XRq408zmNQTgqTs98mGdELuGbq+fkRivtaGlNhVlzU2
	t3Fb0hIZeYNHpwf4dGDOD8f03X6eRLuBvn8BOUMunE+BybbUWm/90nsXJZta1kvaZtZ+fBp2fQqb4
	tnvA53vPg8mrCG6uHFd3burpKlmr8OyXSmDoO3/3icSsV0YTIOzy88r5CUDkh1ZwzyuL+b9CzOs+/
	tYYwf+IIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3n7-0006Hr-R2; Thu, 16 Apr 2020 12:38:49 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3my-0006CQ-PT; Thu, 16 Apr 2020 12:38:42 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id DA089E0013;
 Thu, 16 Apr 2020 12:38:34 +0000 (UTC)
Date: Thu, 16 Apr 2020 14:38:34 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Message-ID: <20200416123834.GG125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <d33aef355623a5abd6eec176d33a167c456ed915.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <d33aef355623a5abd6eec176d33a167c456ed915.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_053840_958927_12F66023 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2696426269458311518=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============2696426269458311518==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="S5HS5MvDw4DmbRmb"
Content-Disposition: inline


--S5HS5MvDw4DmbRmb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Thu 16 Apr 20, 09:22, Ezequiel Garcia wrote:
> Hi Paul,
>=20
> Thanks for the patch.
>=20
> On Thu, 2020-04-16 at 13:50 +0200, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA =
driver.
> > It also contains a fix for the YUV2YUV case that was not properly handl=
ed.
>=20
> How have you been testing this?

I tested it with a standalone utility setting V4L2_PIX_FMT_YUV420 on both
output and capture. The issue should be pretty easy to reproduce.

Cheers,

Paul

> Thanks,
> Ezequiel
>=20
> > Cheers,
> >=20
> > Paul
> >=20
> > Paul Kocialkowski (4):
> >   dt-bindings: rockchip-rga: Add PX30 compatible
> >   arm64: dts: rockchip: Add RGA support to the PX30
> >   media: rockchip: rga: Add support for the PX30 compatible
> >   media: rockchip: rga: Only set output CSC mode for RGB input
> >=20
> >  .../devicetree/bindings/media/rockchip-rga.txt |  1 +
> >  arch/arm64/boot/dts/rockchip/px30.dtsi         | 11 +++++++++++
> >  drivers/media/platform/rockchip/rga/rga-hw.c   | 18 +++++++++++-------
> >  drivers/media/platform/rockchip/rga/rga.c      |  4 +++-
> >  4 files changed, 26 insertions(+), 8 deletions(-)
> >=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--S5HS5MvDw4DmbRmb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6YUcoACgkQ3cLmz3+f
v9EMAQf8C+o9NTz5s1Go3gR6vgIrpWCEJZ018/7aZT+9I8EdjoBxSH0wE9Nl/Ir6
99oB3jHnwpjXEisECpuYP29hhXJl8O7wsuJGu21Jq9Nil/wMJRO2sbkkVuNDHNGi
R6uiCiwoj71YvB5W3QR7wVf+2przwmkdGtg6+xjVa6mFVACIE91EAC3oJHrCAdjO
WS+3EXhZ6kisMEMOhSKGVqe2X5xLitPfHm5N7owGiCYy210dxmciQhe1mqbagcBO
QQCFM1DpzUdMz6JFE68azeMHq+InMno9rrlbNBqwJcm2oYIDZ8FlzTP/pitouaFs
pFewZcsp2SqyCM+TzUdiBighDMz3sg==
=6ymt
-----END PGP SIGNATURE-----

--S5HS5MvDw4DmbRmb--


--===============2696426269458311518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2696426269458311518==--

