Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31016120A0D
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 16:48:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f4fOCdV0AiMobPrhAoKxnp9oze/vSBMsDSVbh+Vfo9U=; b=PQdOTvbXecsTZ/NRRJjuPB35t
	z4+BEurKYSHtQYXyTnQGhBhHLM96wPiybbIDzkerfAmyOzXZ5nAS6xxfzpyBZA0jZrXc38zIxaius
	7e+BnZKuYHafJMp+1eqQGfDdUdFeEPVq39pCnW/BqCOKEV7xjZeyLi1RIp4sbIjUBUyOvfYV6UKd/
	Ug5VEGW7cB0MYoSJ5PS6Mm403pIaOZpoNhF23zpFYbFRa+TIH5xcZe5bGwYqAUg67aQVEipk/VbMD
	ijIgjCB71ZrOyhEiZJoKWm4qxYqIBo+tqJTfMeBbsdIfCmQ3qlDx0/T8XBDDKy24IZdtFIjbLGHAT
	FE8U8EMUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsbe-0001Se-Gt; Mon, 16 Dec 2019 15:48:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsbY-0001RK-O8; Mon, 16 Dec 2019 15:48:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id 6F214260667
Date: Mon, 16 Dec 2019 10:48:03 -0500
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Message-ID: <20191216154803.GA3921@kevin>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_074817_055501_00A226D9 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, lima@lists.freedesktop.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, steven.price@arm.com,
 linux-rockchip@lists.infradead.org, wens@csie.org, yuq825@gmail.com,
 daniel@ffwll.ch, linux-amlogic@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1836777720597470860=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1836777720597470860==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

If so much code is being duplicated over, I'm wondering if it makes
sense for us to move some of the common devfreq code to core DRM
helpers?

On Sun, Dec 15, 2019 at 10:12:22PM +0100, Martin Blumenstingl wrote:
> This is my attempt at adding devfreq (and cooling device) support to
> the lima driver.
> I didn't have much time to do in-depth testing. However, I'm sending
> this out early because there are many SoCs with Mali-400/450 GPU so
> I want to avoid duplicating the work with somebody else.
>=20
> The code is derived from panfrost_devfreq.c which is why I kept the
> Collabora copyright in lima_devfreq.c. Please let me know if I should
> drop this or how I can make it more clear that I "borrowed" the code
> from panfrost.
>=20
> I am seeking comments in two general areas:
> - regarding the integration into the existing lima code
> - for the actual devfreq code (I had to adapt the panfrost code
>   slightly, because lima uses a bus and a GPU/core clock)
>=20
> My own TODO list includes "more" testing on various Amlogic SoCs.
> So far I have tested this on Meson8b and Meson8m2 (which both have a
> GPU OPP table defined). However, I still need to test this on a GXL
> board (which is currently missing the GPU OPP table).
>=20
>=20
> Martin Blumenstingl (1):
>   drm/lima: Add optional devfreq support
>=20
>  drivers/gpu/drm/lima/Kconfig        |   1 +
>  drivers/gpu/drm/lima/Makefile       |   3 +-
>  drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
>  drivers/gpu/drm/lima/lima_device.c  |   4 +
>  drivers/gpu/drm/lima/lima_device.h  |  11 ++
>  drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
>  drivers/gpu/drm/lima/lima_sched.c   |   7 ++
>  drivers/gpu/drm/lima/lima_sched.h   |   3 +
>  9 files changed, 217 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h
>=20
> --=20
> 2.24.1
>=20

--CE+1k2dSO48ffgeK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl33py4ACgkQ/v5QWgr1
WA0Caw/8DBkpxsfWejzUF5wK7xq5rkmaLL+RmwJzt9xgNwWgsJ8p2XWt+hgzJSAr
hNy9KVAEE62SXJHfpziY9CEkQycM+b7cQASYGf2q8/C2XNYfZHv80N8SZv1Gaqmh
NzCfRSsfgc1BvPjbiKu0E1gdsX4RxlB3TXQV0dmSYbOSQ6yyHaYHgrEImW8HVblc
/xkW7pOSkBs9ZdQKMFETaKJlQ6iQvkvUUlaywl2rBO4PvidyCVp5TXgRIYUQzXY/
ls7vy/jU8eWchvp9hlztfssMGtE20BcQeASrHjkKfRUWsaSKt0g9Wh17jbIMf/fj
BfGKqV+KwkKuMDUubvp7EBaJkwxAG8pTr1jv7+QdxOdm/KVnKMu1NSl2DJmTl8Fa
o9mIdlNQCoMJo+TG6i92JuHMZ5VL11NBm6uazi1iJIH8KEYg8UPnePbQttHnDnZq
DqTpy9w0r+T3zu9AH5pQjZCXCcKK+oV4qCTBK5zGe3UtcPigssiTVo912VsGEbb/
Y8LPtySaWSjCI/hfgz4M9ENfrmNX4yqvIewZnAMMPj6vv5sslfRBBGKBCoCtqcQx
T9Iy3c57pp9B/Prrc1llotEuqyd2Mi7mws7gSPfGZXaTC/TPNKCikvph39wdRPdp
WP+lq3rH1n5kMcc3D09p62TZGuaO0uiHmUgxshzPQa3FxXsHqZo=
=QSX1
-----END PGP SIGNATURE-----

--CE+1k2dSO48ffgeK--


--===============1836777720597470860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1836777720597470860==--

