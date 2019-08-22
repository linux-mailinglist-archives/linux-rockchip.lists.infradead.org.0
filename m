Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D49E9939E
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 14:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yUk9+mUhAisYPRpFxnnvd3soshlnZPAtPEtlY82Ld5Q=; b=XtxjjbJpv82CgxDdgaOVdt/4E
	xGNEcZSuQoxZJ5rt/qK0ecjgKY3BelYmvnoidLzgtobw0UlXuIImB1qRh3ABigHjZvC7o+nQ2PgFu
	MMu5CXWqzveN0mdEVcYWpBiB/tDzkg34OYnMj72jwzWKPsjstgHavYtmchscBh+e8AwApVyopO00G
	DGswUDIIpebOou4qDDLisK0BEcQPhQYh6ZxHm6m335XizQmUoB/vkcGU0OEi1sYvl9ew0FOk033hS
	md8uGyawapJHiffscAuiWnPJuJPA4CNjUhHhvZt78Ya+/ZquJwC3XsYVmZvci7eMx6c+hDJNTdp6z
	l5c2oK/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mFw-0002XX-NS; Thu, 22 Aug 2019 12:31:56 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mFt-0002WX-Om
 for linux-rockchip@lists.infradead.org; Thu, 22 Aug 2019 12:31:55 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F261424000B;
 Thu, 22 Aug 2019 12:31:43 +0000 (UTC)
Date: Thu, 22 Aug 2019 14:31:43 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v7 07/11] media: cedrus: Specify H264 startcode and
 decoding mode
Message-ID: <20190822123143.GB1627@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-8-ezequiel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20190816160132.7352-8-ezequiel@collabora.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053154_110074_8FDACE8D 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============9112383436556045569=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============9112383436556045569==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LpQ9ahxlCli8rRTG"
Content-Disposition: inline


--LpQ9ahxlCli8rRTG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
> buffers to contain H264 slices with no start code.

For clarification, cedrus does not expect any of the two options we have
specified but something in-between that is rather broken (a single frame
composed of a single slice only, in the format that our userspace currently
fills).

So at this point, the uAPI is not yet harmonized across cedrus and hantro
although the new controls from this series are exposed on both.

This situation makes me realize that perhaps we should have a formal discus=
sion
on the roadmap we want to take for stabilizing the API. I see many points t=
hat
need significant adjustments and the new controls that allow Rockchip suppo=
rt
are just one aspect.

Having both drivers abide by the API seems like the next logical step (as f=
ar
as I understood, this is what Hans is expecting now), but I want to stress =
the
fact that it is really not enough to make a proper API and things are still
pretty broken all around.

Cheers,

Paul=20

> Expose this to userspace with the newly added menu control.
>=20
> These two controls are specified as mandatory for applications,
> but we mark them as non-required on the driver side for
> backwards compatibility.
>=20
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes in v7:
> * None.
> Changes in v6:
> * Remove incorrect menu_skip_mask.
> Changes in v6:
> * Adjust to control renames.
> Changes in v5:
> * Clarify commit log.
> Changes in v4:
> * New patch.
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.c
> index 7bdc413bf727..2d3ea8b74dfd 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -77,6 +77,24 @@ static const struct cedrus_control cedrus_controls[] =
=3D {
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
> +	{
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> +			.max	=3D V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +			.def	=3D V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +		},
> +		.codec		=3D CEDRUS_CODEC_H264,
> +		.required	=3D false,
> +	},
> +	{
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> +			.max	=3D V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +			.def	=3D V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +		},
> +		.codec		=3D CEDRUS_CODEC_H264,
> +		.required	=3D false,
> +	},
>  };
> =20
>  #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
> --=20
> 2.22.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--LpQ9ahxlCli8rRTG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1eiy8ACgkQ3cLmz3+f
v9GOYgf9F51621BWqMfkbW3Yux6S7OMfF6dKTdIZX4GXqjqxXCIubBMlLE1VrFEe
RoZ7Num71kBlgoTAX/vigjajD1L51lkIuRvAJnDxC7dvOJmWl8tEqiKDFoop3JGA
x3YH7vafJlkhZEcvc1I5mLCiq07dDt3/R96V1T0bq9Y7yU5UnPMcWhJb5SRraw0J
kf1nWwwKhgmgVHhYWQyGclg2pQ6X7jYeYas5u+77/kVINtW14U534sHpb2+Du9Nm
fpM4UAWg6ByHr138378pB0E4BaMwDWzdACAYIp6MXxzvjRBRHvAUO4ysBd+AnaPk
T//dmu8yitAKEziiw2ZZ0O2NQfoBTA==
=7jOE
-----END PGP SIGNATURE-----

--LpQ9ahxlCli8rRTG--


--===============9112383436556045569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9112383436556045569==--

