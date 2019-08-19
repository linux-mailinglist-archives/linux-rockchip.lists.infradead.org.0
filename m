Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6CD9237E
	for <lists+linux-rockchip@lfdr.de>; Mon, 19 Aug 2019 14:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZOgpan+PnHCFchuiN0XsDgidMWg5v2NF9VgZtTdDMNM=; b=cW735aMHSrOHH9d2S51VpZ4ou
	vvGGcHvf5ARdPcdwvcbSXAxuCYRfQR8a+3n9NF9FKFt6fCH2RlgjufMh6aLUFObb3gBPgctVY3gR7
	2yyog/N257h8MIfprZhCA2/2DRVuj04r1TPoaVxc9sBICg0tpLjVw7H1Mkc1QFZkd9aJWyntzdUK8
	KfykZZ8ow2+zuHAv9eqUNBNFV5tQ43O+6Ws809+8r53M/7ygudknrZBhH92dXYRtDtdfo9alJRLZn
	P/WGd1wj4e90c5+jJoNdVWIR9gQFdhfI+93tdtowON5XXZOIcCKIkw3Kdd4RBXML5zrpHHBGjJZrh
	WItuAG07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgp9-0001pU-KL; Mon, 19 Aug 2019 12:31:47 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgp5-0001od-Ly
 for linux-rockchip@lists.infradead.org; Mon, 19 Aug 2019 12:31:46 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D8119240008;
 Mon, 19 Aug 2019 12:31:31 +0000 (UTC)
Date: Mon, 19 Aug 2019 14:31:31 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v7 06/11] media: cedrus: Cleanup control initialization
Message-ID: <20190819123131.GA32182@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-7-ezequiel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20190816160132.7352-7-ezequiel@collabora.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_053144_020947_AB7E79EA 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1322559591195842574=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1322559591195842574==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> In order to introduce other controls, the control initialization
> needs to support an initial struct v4l2_ctrl_control.
>=20
> While here, let's cleanup the control initialization,
> removing unneeded fields.

Thanks for the change!

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes in v7:
> * None.
> Changes in v6:
> * None.
> Changes in v5:
> * None.
> Changes in v4:
> * New patch.
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.c | 45 +++++++++++----------
>  drivers/staging/media/sunxi/cedrus/cedrus.h |  3 +-
>  2 files changed, 25 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.c
> index 370937edfc14..7bdc413bf727 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -29,44 +29,51 @@
> =20
>  static const struct cedrus_control cedrus_controls[] =3D {
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_mpeg2_slice_params),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
> +		},
>  		.codec		=3D CEDRUS_CODEC_MPEG2,
>  		.required	=3D true,
>  	},
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_mpeg2_quantization),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
> +		},
>  		.codec		=3D CEDRUS_CODEC_MPEG2,
>  		.required	=3D false,
>  	},
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_h264_decode_params),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS,
> +		},
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_h264_slice_params),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS,
> +		},
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_H264_SPS,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_h264_sps),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_SPS,
> +		},
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_H264_PPS,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_h264_pps),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_PPS,
> +		},
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
>  	{
> -		.id		=3D V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX,
> -		.elem_size	=3D sizeof(struct v4l2_ctrl_h264_scaling_matrix),
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX,
> +		},
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
> @@ -106,12 +113,8 @@ static int cedrus_init_ctrls(struct cedrus_dev *dev,=
 struct cedrus_ctx *ctx)
>  		return -ENOMEM;
> =20
>  	for (i =3D 0; i < CEDRUS_CONTROLS_COUNT; i++) {
> -		struct v4l2_ctrl_config cfg =3D {};
> -
> -		cfg.elem_size =3D cedrus_controls[i].elem_size;
> -		cfg.id =3D cedrus_controls[i].id;
> -
> -		ctrl =3D v4l2_ctrl_new_custom(hdl, &cfg, NULL);
> +		ctrl =3D v4l2_ctrl_new_custom(hdl, &cedrus_controls[i].cfg,
> +					    NULL);
>  		if (hdl->error) {
>  			v4l2_err(&dev->v4l2_dev,
>  				 "Failed to create new custom control\n");
> @@ -178,7 +181,7 @@ static int cedrus_request_validate(struct media_reque=
st *req)
>  			continue;
> =20
>  		ctrl_test =3D v4l2_ctrl_request_hdl_ctrl_find(hdl,
> -							    cedrus_controls[i].id);
> +							    cedrus_controls[i].cfg.id);
>  		if (!ctrl_test) {
>  			v4l2_info(&ctx->dev->v4l2_dev,
>  				  "Missing required codec control\n");
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.h
> index d8e6777e5e27..2f017a651848 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -49,8 +49,7 @@ enum cedrus_h264_pic_type {
>  };
> =20
>  struct cedrus_control {
> -	u32			id;
> -	u32			elem_size;
> +	struct v4l2_ctrl_config cfg;
>  	enum cedrus_codec	codec;
>  	unsigned char		required:1;
>  };
> --=20
> 2.22.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--k1lZvvs/B4yU6o8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1alqMACgkQ3cLmz3+f
v9FHGgf9GLCQ3HMQRLLRzQ23YG4MhNKPyvS67MXgy+nC7SUk4wllp+NwI9uTGkXZ
my2QXgKSmJZOZL5D6SMa2IRMbfebAUfRcosZSjsu9HBheoMnXnRst06mSaQd+Q0H
KoaHiAL65KKGaiWPgkMqVpr1mpJv6qaJ5BpFa+IRqKKPXxfn70CG7A7odiyEzAVN
oFe0Ai8iiHlhw7dCL3vxcotf4radt8PivRBp8jRwXtTv54XV1TrYDjRysMCwzmZl
pTSS8ioM8QwSyxjDzH45kDFXQH3Hxh4iIUTh1SYAfxUNSWRieaWhN3BGIJ63It1h
3Lgr7cpxBlH/5+y4H35NpZmqgSPLNQ==
=C07M
-----END PGP SIGNATURE-----

--k1lZvvs/B4yU6o8G--


--===============1322559591195842574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1322559591195842574==--

