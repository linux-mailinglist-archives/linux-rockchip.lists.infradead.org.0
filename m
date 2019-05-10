Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078E81A0E6
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 May 2019 18:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=exjmpYirVan1BK5Nvw2z/NBdAWSGoZmEbTB4i9Oml6M=; b=LHNQyIT4K9XyJSAP/kJlaQ00n
	lJdBfV2PBDtJDWx/xWiFwK24l8vl9pvtDI2CO9ivq3sKY8Gy5MqNMoIli0VMJPJgbLEMAXw286kzc
	xvEIlTlam65d1QCQifFZ/JZp8DuPO3wrksbLWwTX+l9xXWbhpYaADEo5jBrLk9+dtvZPtzaHBwlt/
	XBEWVSyN86fOfQmDZdyahzxUE2Wjz+uLz01wGSkKR8GyY3kKSPVAjzhujy8s5WqXtENQkQyex7RWV
	xqltE5p2Pyxevdz4i9hHJKtnQ1OtyJsNo8mVDd/szc+cJME1Qz6Lip8t1C6H/0d1uxzUiJTPqyLDN
	K3rhsCjew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7xS-0003eg-8H; Fri, 10 May 2019 16:01:14 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7xO-0003dl-3d
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 16:01:12 +0000
Received: by mail-qk1-x741.google.com with SMTP id d4so3959804qkc.9
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 09:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=EPF7suJx7mubtbHbpRYCGM9W4V9liOQ67kxw5dbhCZU=;
 b=LKnu9kS3XgOzMbil/gpYDBgBy3uif2JdNUUihdW1oSuvOo5EIG2jEGZNak/2JqvxAD
 8+hOZTtQWU9nmp0rN7Khc92XZVBG6y8+0UgCWzzwYf8hQS/WYC4vruAL9FdIAxtEar6C
 OKKhTAPkbrZuzgwAyfBc6E2R3tIIApVpz7oCbgYFvt54IRGJQTTlF2FJxxOCEq24AdzL
 VQKj6nCchOfVS7AV13tzYE0i/QgK2zdVCbck0beAZlWlRaQDRuJRyOgttzhtSRBt+fzU
 X4Lr1zVYH8WwBW6nZkWhxl0W4aIpxwNInA9j9s43TPQMqzN0T7RmWYnHJXoqaP60X34J
 K5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=EPF7suJx7mubtbHbpRYCGM9W4V9liOQ67kxw5dbhCZU=;
 b=l/5nXQI2Ka6J3DDCeXy6gkqfLbu3UXOS81oEJmnOsGKJPIzlOud58H5yePwDl+W/sC
 W/uTi23aahUuaxk1wm3t0QF1GSwZOp/ukCix3nB58VDPhTX6mv71K4b1mjkpW6atskMV
 sbE9AJKiSWGMCfWvKr4oGn99PppxNSA2f3tJfJaG7eTii25ilTKEvd5jRkB6nJ9RrcJy
 R+7TMHu7bCyY4scY782Ildua7bPTzdvIQfAfAvmcqLk1jnKP5BoGSQc9R8qWs/SL2zt+
 mbBstv1NP4a43QB78bnM34YDAfbBqwCQHM6E/fAb9ZEY1Hxh+khJjj1KWJuRE2zxrGQP
 aHZw==
X-Gm-Message-State: APjAAAWLhWNCmpsx/KGYFw6JKmxNNr4jsqQf3woS2TrzLBaEeLyPO+tU
 EoMgajQRiG6vtTyNpBIICmM4ig==
X-Google-Smtp-Source: APXvYqwccncUBlMU8w3XVxFxA+PuBYg7glfVagdzjZa2xpSPYGmoB2pqIO/OvE0URLMWpGRL/4Q+7w==
X-Received: by 2002:ae9:c311:: with SMTP id n17mr9249550qkg.332.1557504068862; 
 Fri, 10 May 2019 09:01:08 -0700 (PDT)
Received: from tpx230-nicolas.collaboramtl
 (modemcable154.55-37-24.static.videotron.ca. [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id 8sm3357686qtr.32.2019.05.10.09.01.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 10 May 2019 09:01:07 -0700 (PDT)
Message-ID: <703e94a8eaf995ffedf94d3d6d88a83cf8a5366e.camel@ndufresne.ca>
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Date: Fri, 10 May 2019 12:01:04 -0400
In-Reply-To: <4e7f49b2-48ad-b504-5826-d993ba85e624@xs4all.nl>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
 <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
 <20190510112847.GA4972@pendragon.ideasonboard.com>
 <c2d02ffb-5273-67a8-1a3a-c7268dc7bfb6@xs4all.nl>
 <20190510122411.GB4972@pendragon.ideasonboard.com>
 <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
 <106a6aa5fe62cf5b18652b667d15bc8677790cad.camel@ndufresne.ca>
 <4e7f49b2-48ad-b504-5826-d993ba85e624@xs4all.nl>
User-Agent: Evolution 3.32.1 (3.32.1-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_090110_287232_10D28F18 
X-CRM114-Status: GOOD (  32.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1619733341274258983=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1619733341274258983==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-yEjoGGMsbnF9v99MRnEu"


--=-yEjoGGMsbnF9v99MRnEu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 10 mai 2019 =C3=A0 16:07 +0200, Hans Verkuil a =C3=A9crit :
> On 5/10/19 3:51 PM, Nicolas Dufresne wrote:
> > Le vendredi 10 mai 2019 =C3=A0 14:30 +0200, Hans Verkuil a =C3=A9crit :
> > > On 5/10/19 2:24 PM, Laurent Pinchart wrote:
> > > > Hi Hans,
> > > >=20
> > > > On Fri, May 10, 2019 at 02:17:32PM +0200, Hans Verkuil wrote:
> > > > > On 5/10/19 1:28 PM, Laurent Pinchart wrote:
> > > > > > On Fri, May 10, 2019 at 10:57:26AM +0200, Hans Verkuil wrote:
> > > > > > > On 5/3/19 1:47 PM, Boris Brezillon wrote:
> > > > > > > > Users can define custom sizeimage and bytesperline as long =
as they're
> > > > > > > > big enough to store the amount of pixels required for a spe=
cific
> > > > > > > > width/height under a specific format. Avoid overriding thos=
e fields in
> > > > > > > > this case.
> > > > > > > >=20
> > > > > > > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.c=
om>
> > > > > > > > ---
> > > > > > > > Hello Hans,
> > > > > > > >=20
> > > > > > > > The sizeimage/bytesperline check on !MPLANE formats is stil=
l not 100%
> > > > > > > > sure, as custom bytesperline might induce bigger sizeimage =
than what
> > > > > > > > we calculate.
> > > > > > > >=20
> > > > > > > > I tried implementing something smarter taking the per-compo=
nent plane
> > > > > > > > bpp + hdiv param as we discussed the other day but decided =
to step
> > > > > > > > back after realizing the per-component plane macro block mi=
ght also
> > > > > > > > differ at least in theory (not sure that's true in practice=
) and that
> > > > > > > > has an impact on bytesperline too.
> > > > > > > >=20
> > > > > > > > Let me know how you want to handle that case.
> > > > > > > >=20
> > > > > > > > Regards,
> > > > > > > >=20
> > > > > > > > Boris
> > > > > > > >=20
> > > > > > > > Changes in v5:
> > > > > > > > * New patch
> > > > > > > > ---
> > > > > > > >  drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++=
++++--------
> > > > > > > >  1 file changed, 39 insertions(+), 15 deletions(-)
> > > > > > > >=20
> > > > > > > > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/driver=
s/media/v4l2-core/v4l2-common.c
> > > > > > > > index 3c6f5c115fc5..37bfc984a8b5 100644
> > > > > > > > --- a/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > > +++ b/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > > @@ -563,9 +563,10 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pi=
x_format_mplane *pixfmt,
> > > > > > > >  	pixfmt->num_planes =3D info->mem_planes;
> > > > > > > > =20
> > > > > > > >  	if (info->mem_planes =3D=3D 1) {
> > > > > > > > +		u32 bytesperline, sizeimage =3D 0;
> > > > > > > > +
> > > > > > > >  		plane =3D &pixfmt->plane_fmt[0];
> > > > > > > > -		plane->bytesperline =3D ALIGN(width, v4l2_format_block_w=
idth(info, 0)) * info->bpp[0];
> > > > > > > > -		plane->sizeimage =3D 0;
> > > > > > > > +		bytesperline =3D ALIGN(width, v4l2_format_block_width(in=
fo, 0)) * info->bpp[0];
> > > > > > > > =20
> > > > > > > >  		for (i =3D 0; i < info->comp_planes; i++) {
> > > > > > > >  			unsigned int hdiv =3D (i =3D=3D 0) ? 1 : info->hdiv;
> > > > > > > > @@ -576,10 +577,17 @@ int v4l2_fill_pixfmt_mp(struct v4l2_p=
ix_format_mplane *pixfmt,
> > > > > > > >  			aligned_width =3D ALIGN(width, v4l2_format_block_width(=
info, i));
> > > > > > > >  			aligned_height =3D ALIGN(height, v4l2_format_block_heig=
ht(info, i));
> > > > > > > > =20
> > > > > > > > -			plane->sizeimage +=3D info->bpp[i] *
> > > > > > > > -				DIV_ROUND_UP(aligned_width, hdiv) *
> > > > > > > > -				DIV_ROUND_UP(aligned_height, vdiv);
> > > > > > > > +			sizeimage +=3D info->bpp[i] *
> > > > > > > > +				     DIV_ROUND_UP(aligned_width, hdiv) *
> > > > > > > > +				     DIV_ROUND_UP(aligned_height, vdiv);
> > > > > > > >  		}
> > > > > > > > +
> > > > > > > > +		/*
> > > > > > > > +		 * The user might have specified custom sizeimage/bytesp=
erline,
> > > > > > > > +		 * only override them if they're not big enough.
> > > > > > > > +		 */
> > > > > > > > +		plane->sizeimage =3D max(sizeimage, plane->sizeimage);
> > > > > > > > +		plane->bytesperline =3D max(bytesperline, plane->bytespe=
rline);
> > > > > > >=20
> > > > > > > Let's just set bytesperline, ignoring the value the user supp=
lied. There are very
> > > > > > > few drivers that allow the user to set bytesperline anyway, s=
o it's not a big deal
> > > > > > > to drop support for that for now. We can add it back later.
> > > > > > >=20
> > > > > > > Just add a comment that a user-defined bytesperline value isn=
't currently supported.
> > > > > >=20
> > > > > > Kieran recently ran into an issue related to this, when sharing=
 buffers
> > > > > > between a CSI-2 receiver and an ISP. The ISP has alignment cons=
traints
> > > > > > in both the horizontal and vertical directions on the line stri=
de and
> > > > > > total image size. Out software framework currently allocates bu=
ffers
> > > > > > from the CSI-2 receiver which doesn't have those constraints, a=
nd not
> > > > > > being able to specify sizeimage is thus a problem.
> > > > >=20
> > > > > Not being able to specify sizeimage where? From userspace? Sorry,=
 I don't
> > > > > quite understand the specific issue here.
> > > >=20
> > > > Yes, from userspace.
> > >=20
> > > Ah, OK. But why not use CREATEBUFS? You can provide your own size whe=
n allocating
> > > the buffers.
> > >=20
> > > Also note this patch: https://patchwork.linuxtv.org/patch/55656/
> > >=20
> > > Although this is specific for compressed formats.
> >=20
> > While this work for compressed formats, it does not do anything for raw
> > image horizontal padding. The importation bit of V4L2 is pretty
> > difficult, so if we add helpers, we should load the way and simplify
> > things for userspace rather then enforcing the existing difficulty.
> >=20
> > I think from now own we should design with the mindset that a DMABuf
> > that cannot be imported back into another driver due to software
> > limitations is a useless waste of FD.
>=20
> I agree, but I feel that this is part of the new fmt and streaming
> ioctls project that Boris started. Doing further hacking of the existing =
API
> is just complicating matters even more.
>=20
> Creating new format ioctls that are much more flexible in describing imag=
e
> formats (and closer to drm where possible) seems to be the right approach=
.
>=20
> Hmmm... "waste of FD": Face Detection? File Descriptor? Probably not.
>=20
> The urbandictionary doesn't help either: https://www.urbandictionary.com/=
define.php?term=3DFD
>=20
> No idea what FD means :-), although I get the sentiment.

I was not swearing. An FD on Unix systems like Linux is also well know
as a File Descriptor. DMABuf, memfd, an open file, etc.

regards,
Nicolas

>=20
> Regards,
>=20
> 	Hans
>=20

--=-yEjoGGMsbnF9v99MRnEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXNWgQQAKCRBxUwItrAao
HOX2AKCZZogx/e+z8hoV2BV/L1iPqNyNgwCglC9UIw2gaCh2F73xSghYer0xUjQ=
=Gm4Z
-----END PGP SIGNATURE-----

--=-yEjoGGMsbnF9v99MRnEu--



--===============1619733341274258983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1619733341274258983==--


