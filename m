Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF097D5FD
	for <lists+linux-rockchip@lfdr.de>; Thu,  1 Aug 2019 09:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xy65xWC/uyyfvZP4X60hlUsYeE2u+eQ5S9zfcpMMDug=; b=pJlt9g8BS8coK6+MwJd0GPLKh
	urBHpNPgzuMekdXEjxbMALK13DjY3S1Vo/etrnh2LvWGNk4hAtyNv8X1PZH9NgwNOZ1pOOdhSF8W+
	MLI9owcHUl50XDn/Xz3QvhjvpTQPKKCrmB8y9l4vQFMb3zuD3irdIzfXAolZ6FLU40hnHYfFf0Vb7
	kX9F2Ddq1IBEqnlaUGefBeQyeIBj6lH2Kgxoe5RDlStu80BktruQraBM1N7G/Q8Bq4y4pG2l02ekg
	cspxe8AoDFUccabXINcWXbgzIAUErFStJpt9y6Xd5aDWYulE4bTVKNIZyWf+j0UpJDLt7/tzPSU9E
	/Bdeg7C7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht58W-0004Vh-FR; Thu, 01 Aug 2019 07:04:28 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht58Q-0004V6-GV
 for linux-rockchip@lists.infradead.org; Thu, 01 Aug 2019 07:04:24 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 583F4100012;
 Thu,  1 Aug 2019 07:04:10 +0000 (UTC)
Date: Thu, 1 Aug 2019 09:04:10 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264 decoding
Message-ID: <20190801070410.GA22382@aptenodytes>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-8-boris.brezillon@collabora.com>
 <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHD77HksotqFBTE84rRM=DuNFX=YJPs=YnsuFkaN-pWUNCtoxA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_000422_768706_BFB81392 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============9035653130571070571=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============9035653130571070571==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline


--gKMricLos+KVdGMg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 01 Aug 19, 13:06, Tomasz Figa wrote:
> Hi Boris,
>=20
> On Wed, Jun 19, 2019 at 9:15 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> [snip]
> > @@ -533,10 +535,21 @@ hantro_queue_setup(struct vb2_queue *vq, unsigned=
 int *num_buffers,
> >                 return -EINVAL;
> >         }
> >
> > +       /* The H264 decoder needs extra size on the output buffer. */
> > +       if (ctx->vpu_src_fmt->fourcc =3D=3D V4L2_PIX_FMT_H264_SLICE_RAW)
> > +               extra_size0 =3D 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> > +                             DIV_ROUND_UP(pixfmt->height, 16);
> > +
>=20
> I wonder if this shouldn't be accounted for already in the sizeimage
> returned by TRY_/S_FMT, so that the application can know the required
> buffer size if it uses some external allocator and DMABUF memory type.
> I know we had it like this in our downstream code, but it wasn't the
> problem because we use minigbm, where we explicitly add the same
> padding in the rockchip backend. Any thoughts?

Does the extra size have to be allocated along with the buffer?

On cedrus, we have a need for a similar side-buffer but give it a dedicated=
 CMA
allocation, which should allow dma-buf-imported buffers.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1CjukACgkQ3cLmz3+f
v9E6+wf+OYHawgm5Z7vHIOssrL6TF8ZV3xNsgqTT2Je54KLFCRbarBvD2HyB8nFc
pSPCrxiELvO1Tio+KYCoYz2Xve0PlzdxiBq1zbEYnzb8k95YbZnOMb2Vj90ZLPNm
FPpXE5VrVih6v5T3qgtqBNjaYRHOHLztiWoHRbRshiWxEPvzreD/Hfyawe4LbsJ6
dnzSPh8DvV46LsjnYe4rskINbfEkxEk7VtBynQ9CucYaZ2O8xXKYVQk5D/XkNhtm
48LgrQQJ2QrZH6Qed+We9pqBhOUH/in49PdD+UGN054dLBHT86nVc+0dbfJQW87N
jwHDYAmZKitBd74E4nNs5DQeWXCfig==
=h/ad
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--


--===============9035653130571070571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9035653130571070571==--

