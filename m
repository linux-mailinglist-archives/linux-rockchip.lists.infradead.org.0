Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462FE1AC094
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 14:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A6+VcrcsciaOD5wb6q8dP7tSOBR2dZwJoCr7LXdjA3U=; b=nJWQeiKAwa+srL/3iG6ToLbaZ
	3j3Qt8uTDX9eSdE4mDM2xUwoPRzlACyPqrODnWx7QU1sO1aVvfDhalfwAxMtFMrsHOVeUnAvzZ+Cz
	jOHTtWN+Eij0tpdSlcsBoP4U/CvUnaP6wheBY+GjzytXgteYaKyCCp8oRHCTb46JA2cJtbig0k9U7
	HDB9X+mpWNzJMDoZKVfS6uWN3yYnXlw3z1rXwYWhH6ekXyZ9tZapd8CXfZgJ/MlbnTH+TXRg2PC93
	y5Z6/rcNd5bmVWvX7s8Ci1CH00Zv868gpmufOtMawatDxUqrQhbR6Fq34N7VJK7yfJHpjBsaWw/Ae
	ds4DzQIQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3CF-0004eh-9j; Thu, 16 Apr 2020 12:00:43 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3C6-0004Xf-Fj; Thu, 16 Apr 2020 12:00:36 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 254D41C001F;
 Thu, 16 Apr 2020 12:00:26 +0000 (UTC)
Date: Thu, 16 Apr 2020 14:00:25 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 3/4] media: rockchip: rga: Add support for the PX30
 compatible
Message-ID: <20200416120025.GF125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <20200416115047.233720-4-paul.kocialkowski@bootlin.com>
 <cd224bf8-5b0a-46e5-1657-4b40c6d3915e@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <cd224bf8-5b0a-46e5-1657-4b40c6d3915e@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_050034_662747_7E414484 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>,
 linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0406999709952496593=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0406999709952496593==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yRA+Bmk8aPhU85Qt"
Content-Disposition: inline


--yRA+Bmk8aPhU85Qt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 16 Apr 20, 13:58, Hans Verkuil wrote:
> On 16/04/2020 13:50, Paul Kocialkowski wrote:
> > The PX30 SoC has a RGA block, so add the associated compatible to
> > support it.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/media/platform/rockchip/rga/rga.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/=
platform/rockchip/rga/rga.c
> > index e9ff12b6b5bb..0ebeb9b4c14a 100644
> > --- a/drivers/media/platform/rockchip/rga/rga.c
> > +++ b/drivers/media/platform/rockchip/rga/rga.c
> > @@ -880,7 +880,6 @@ static int rga_probe(struct platform_device *pdev)
> >  	rga->cmdbuf_virt =3D dma_alloc_attrs(rga->dev, RGA_CMDBUF_SIZE,
> >  					   &rga->cmdbuf_phy, GFP_KERNEL,
> >  					   DMA_ATTR_WRITE_COMBINE);
> > -
>=20
> Spurious change?

Ah sorry about that. Will fix in v2.

Cheers,

Paul

> Regards,
>=20
> 	Hans
>=20
> >  	rga->src_mmu_pages =3D
> >  		(unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
> >  	rga->dst_mmu_pages =3D
> > @@ -955,6 +954,9 @@ static const struct dev_pm_ops rga_pm =3D {
> >  };
> > =20
> >  static const struct of_device_id rockchip_rga_match[] =3D {
> > +	{
> > +		.compatible =3D "rockchip,px30-rga",
> > +	},
> >  	{
> >  		.compatible =3D "rockchip,rk3288-rga",
> >  	},
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--yRA+Bmk8aPhU85Qt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6YSNkACgkQ3cLmz3+f
v9HcIwf/SaOTWWzEOe0dZG4yxmCG1gZdhPpc/T2J0x3X4fh6wY1AQ5SojDHUl0Qg
eUMyWPA+vb5dxmGDgY8W9uIE0/yEI/mvPhhvYDw3kcn7O7KyeqrL0Jet3K15/iJ4
AzZUCb8tBJ+CYVeevmlklRwlYsjjxEwqhfxFDud4aI0hP3spuP8rQebtgyTTAEYI
6r36v0557kcmjUyFy2oKsF1iJ2ifCOVIFhBvTYMhgYBZILoHb8NBIJUq9Ys2XwvL
BVCMZHMWYKysP7pjoL3ulQp3AoM3K951fL/YYu4gNZaXNIJC02DYboIm1xpIF1iy
0fFdRNBEynGwtsc2yLefFg2d1YeXow==
=JROB
-----END PGP SIGNATURE-----

--yRA+Bmk8aPhU85Qt--


--===============0406999709952496593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0406999709952496593==--

