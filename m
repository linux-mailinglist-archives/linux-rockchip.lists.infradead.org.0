Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0E11DF0A1
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 22:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/L9M6nZsZwdSQsUUvzl/lSQTQ8jUIDFLBFTpx7CuFQc=; b=oqckYPyhvEo8X5AUAaWfIb7X8
	gjiTpesm4DSmPrxX7cmN2eJE87weH+BIwx46QJkt4gKdWTRj2Wr/adwTvPZX2Ds54kKmwjOfPIWcT
	ndqD6p9yuNTiwZaoYfRashk4LT9lyzXNjrrQZhoYUXP7celbGM2OvvMB/rTsdQnRX90KDMY5FuGSt
	IZRnz3QGug5Z8TMWsezN63LlvW8X8rlnbzPgQ8//sRIOK/yWTHYk3J7AgSNKbcvwLcMY5gCW1X/l9
	XNK6buiGFkltamIZi7HR1742ELMi/lu9wJRi7UK/wPKxv2wh9hNnREog5hwLFKj/qhDdPZ61pMCq6
	zbFpoJb0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcEGi-0005Z6-AC; Fri, 22 May 2020 20:27:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcEGe-0005YG-Ft
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 20:27:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 61F5E2A0D98
Message-ID: <91ff6561f7ad1170283127dd1a54b72d64524ec5.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: Fix H264 scaling list order
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@collabora.com>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro
 Carvalho Chehab <mchehab@kernel.org>
Date: Fri, 22 May 2020 16:27:37 -0400
In-Reply-To: <20200522202130.13306-1-jonas@kwiboo.se>
References: <20200522202130.13306-1-jonas@kwiboo.se>
Organization: Collabora
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_132744_790530_14A8290C 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Reply-To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>
Content-Type: multipart/mixed; boundary="===============6372021654677134664=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6372021654677134664==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-ugTiZ55EwgDvKXpGml0K"


--=-ugTiZ55EwgDvKXpGml0K
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 22 mai 2020 =C3=A0 20:21 +0000, Jonas Karlman a =C3=A9crit :
> The Rockchip Video Decoder driver is expecting that the values in a
> scaling list are in zig-zag order and applies the inverse scanning proces=
s
> to get the values in matrix order.
>=20
> Commit 0b0393d59eb4 ("media: uapi: h264: clarify expected
> scaling_list_4x4/8x8 order") clarified that the values in the scaling lis=
t
> should already be in matrix order.
>=20
> Fix this by removing the reordering and change to use two memcpy.
>=20
> Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

I've tested it over GStreamer implementation. Note that in addition to
this patch, we should now fix the documentation. The documentation says
that the scaling list order should be that same as in the bitstream
(that means zigzag order). But I believe it make sense to move to
raster order as we know have the knowledge that this is what all the HW
we supports uses and is what one would pass to VAAPI, NVDEC and DXVA2
too.

Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 70 +++++++---------------
>  1 file changed, 22 insertions(+), 48 deletions(-)
>=20
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging=
/media/rkvdec/rkvdec-h264.c
> index cd4980d06be7..2719f0c66a4a 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -18,11 +18,16 @@
>  /* Size with u32 units. */
>  #define RKV_CABAC_INIT_BUFFER_SIZE	(3680 + 128)
>  #define RKV_RPS_SIZE			((128 + 128) / 4)
> -#define RKV_SCALING_LIST_SIZE		(6 * 16 + 6 * 64 + 128)
>  #define RKV_ERROR_INFO_SIZE		(256 * 144 * 4)
> =20
>  #define RKVDEC_NUM_REFLIST		3
> =20
> +struct rkvdec_scaling_matrix {
> +	u8 scaling_list_4x4[6][16];
> +	u8 scaling_list_8x8[6][64];
> +	u8 padding[128];
> +};
> +
>  struct rkvdec_sps_pps_packet {
>  	u32 info[8];
>  };
> @@ -86,7 +91,7 @@ struct rkvdec_ps_field {
>  /* Data structure describing auxiliary buffer format. */
>  struct rkvdec_h264_priv_tbl {
>  	s8 cabac_table[4][464][2];
> -	u8 scaling_list[RKV_SCALING_LIST_SIZE];
> +	struct rkvdec_scaling_matrix scaling_list;
>  	u32 rps[RKV_RPS_SIZE];
>  	struct rkvdec_sps_pps_packet param_set[256];
>  	u8 err_info[RKV_ERROR_INFO_SIZE];
> @@ -785,56 +790,25 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  	}
>  }
> =20
> -/*
> - * NOTE: The values in a scaling list are in zig-zag order, apply invers=
e
> - * scanning process to get the values in matrix order.
> - */
> -static const u32 zig_zag_4x4[16] =3D {
> -	0, 1, 4, 8, 5, 2, 3, 6, 9, 12, 13, 10, 7, 11, 14, 15
> -};
> -
> -static const u32 zig_zag_8x8[64] =3D {
> -	0,  1,  8, 16,  9,  2,  3, 10, 17, 24, 32, 25, 18, 11,  4,  5,
> -	12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13,  6,  7, 14, 21, 28,
> -	35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51,
> -	58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63
> -};
> -
> -static void reorder_scaling_list(struct rkvdec_ctx *ctx,
> -				 struct rkvdec_h264_run *run)
> +static void assemble_hw_scaling_list(struct rkvdec_ctx *ctx,
> +				     struct rkvdec_h264_run *run)
>  {
>  	const struct v4l2_ctrl_h264_scaling_matrix *scaling =3D run->scaling_ma=
trix;
> -	const size_t num_list_4x4 =3D ARRAY_SIZE(scaling->scaling_list_4x4);
> -	const size_t list_len_4x4 =3D ARRAY_SIZE(scaling->scaling_list_4x4[0]);
> -	const size_t num_list_8x8 =3D ARRAY_SIZE(scaling->scaling_list_8x8);
> -	const size_t list_len_8x8 =3D ARRAY_SIZE(scaling->scaling_list_8x8[0]);
>  	struct rkvdec_h264_ctx *h264_ctx =3D ctx->priv;
>  	struct rkvdec_h264_priv_tbl *tbl =3D h264_ctx->priv_tbl.cpu;
> -	u8 *dst =3D tbl->scaling_list;
> -	const u8 *src;
> -	int i, j;
> -
> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_4x4) !=3D list_len_4x4);
> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_8x8) !=3D list_len_8x8);
> -	BUILD_BUG_ON(ARRAY_SIZE(tbl->scaling_list) <
> -		     num_list_4x4 * list_len_4x4 +
> -		     num_list_8x8 * list_len_8x8);
> -
> -	src =3D &scaling->scaling_list_4x4[0][0];
> -	for (i =3D 0; i < num_list_4x4; ++i) {
> -		for (j =3D 0; j < list_len_4x4; ++j)
> -			dst[zig_zag_4x4[j]] =3D src[j];
> -		src +=3D list_len_4x4;
> -		dst +=3D list_len_4x4;
> -	}
> =20
> -	src =3D &scaling->scaling_list_8x8[0][0];
> -	for (i =3D 0; i < num_list_8x8; ++i) {
> -		for (j =3D 0; j < list_len_8x8; ++j)
> -			dst[zig_zag_8x8[j]] =3D src[j];
> -		src +=3D list_len_8x8;
> -		dst +=3D list_len_8x8;
> -	}
> +	BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_4x4) !=3D
> +		     sizeof(scaling->scaling_list_4x4));
> +	BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_8x8) !=3D
> +		     sizeof(scaling->scaling_list_8x8));
> +
> +	memcpy(tbl->scaling_list.scaling_list_4x4,
> +	       scaling->scaling_list_4x4,
> +	       sizeof(scaling->scaling_list_4x4));
> +
> +	memcpy(tbl->scaling_list.scaling_list_8x8,
> +	       scaling->scaling_list_8x8,
> +	       sizeof(scaling->scaling_list_8x8));
>  }
> =20
>  /*
> @@ -1126,7 +1100,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>  	v4l2_h264_build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
>  				    h264_ctx->reflists.b1);
> =20
> -	reorder_scaling_list(ctx, &run);
> +	assemble_hw_scaling_list(ctx, &run);
>  	assemble_hw_pps(ctx, &run);
>  	assemble_hw_rps(ctx, &run);
>  	config_registers(ctx, &run);

--=-ugTiZ55EwgDvKXpGml0K
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXsg1uQAKCRBxUwItrAao
HCP1AJ0SJnDm3+/AQ2A6yNQv7C6m4CLJtACffi7AgkxZKFAwhUn011nQ6ii/HEk=
=p1oh
-----END PGP SIGNATURE-----

--=-ugTiZ55EwgDvKXpGml0K--



--===============6372021654677134664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6372021654677134664==--


