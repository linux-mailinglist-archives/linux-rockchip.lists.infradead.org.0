Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD12E92336
	for <lists+linux-rockchip@lfdr.de>; Mon, 19 Aug 2019 14:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qK8fkiHj5+Ig0tu/rtyNn4NL5QEwo83kkhR/ffNExg0=; b=h2KHSb7CZBQOi/WVA5DpcErhZ
	BDElbHWBJJ8e6qOUfKBnY/jE+XvKg8IhH9r0HMR7iSZDpyPv6+UlbhFyqaml/BuUYrS3j9Af9k9XF
	C1K+trXSgeW2X3jUbAhg1XuTPnfqg6MpPGhuQRkZfFp9CFUzw2kJo0U7kytdQiPtegKTmVqELOtj1
	22y5K5KheSAn7ZgkcxSg/6HOVQKK2bXCr29WY5WyxRNqUt03CQSTSGGeLzdvTLALMzW2qkIuLY4Br
	V0s8KAzEXEqgXdqeQvH0hadJYvzK0HxbAwZRlSZE7IqXI673TN1MLQeCMGXnb8Y6z8fdTUG4zpWli
	F5H4zNEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgYg-0003Nl-PG; Mon, 19 Aug 2019 12:14:46 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgYc-0003NI-KH
 for linux-rockchip@lists.infradead.org; Mon, 19 Aug 2019 12:14:44 +0000
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D5AD624000F;
 Mon, 19 Aug 2019 12:14:30 +0000 (UTC)
Date: Mon, 19 Aug 2019 14:14:30 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v7 04/11] media: uapi: h264: Add the concept of start code
Message-ID: <20190819121430.GA16000@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-5-ezequiel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20190816160132.7352-5-ezequiel@collabora.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_051442_969584_D6698CAF 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============6472355639196013599=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6472355639196013599==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> Stateless decoders have different expectations about the
> start code that is prepended on H264 slices. Add a
> menu control to express the supported start code types
> (including no start code).
>=20
> Drivers are allowed to support only one start code type,
> but they can support both too.
>=20
> Note that this is independent of the H264 decoding mode,
> which specifies the granularity of the decoding operations.
> Either in frame-based or slice-based mode, this new control
> will allow to define the start code expected on H264 slices.

Looks good to me at this point:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Thanks!

Paul

> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
> Changes in v7:
> * None.
> Changes in v6:
> * Rename to START_CODE and enum values
>   as suggested by Hand and Paul.
> Changes in v5:
> * Improve specification as suggested by Hans.
> Changes in v4:
> * New patch.
> ---
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 33 +++++++++++++++++++
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  5 +--
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 +++++
>  include/media/h264-ctrls.h                    |  6 ++++
>  4 files changed, 51 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documenta=
tion/media/uapi/v4l/ext-ctrls-codec.rst
> index 7e7447d9998c..3703c705286f 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -2076,6 +2076,39 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type=
 -
>          The OUTPUT buffer must contain all slices needed to decode the
>          frame. The OUTPUT buffer must also contain both fields.
> =20
> +``V4L2_CID_MPEG_VIDEO_H264_START_CODE (enum)``
> +    Specifies the H264 slice start code expected for each slice.
> +    This control is used as a modifier for V4L2_PIX_FMT_H264_SLICE
> +    pixel format. Applications that support V4L2_PIX_FMT_H264_SLICE
> +    are required to set this control in order to specify the start code
> +    that is expected for the buffer.
> +    Drivers may expose a single or multiple start codes, depending
> +    on what they can support.
> +
> +    .. note::
> +
> +       This menu control is not yet part of the public kernel API and
> +       it is expected to change.
> +
> +.. c:type:: v4l2_mpeg_video_h264_start_code
> +
> +.. cssclass:: longtable
> +
> +.. flat-table::
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - ``V4L2_MPEG_VIDEO_H264_START_CODE_NONE``
> +      - 0
> +      - Selecting this value specifies that H264 slices are passed
> +        to the driver without any start code.
> +    * - ``V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B``
> +      - 1
> +      - Selecting this value specifies that H264 slices are expected
> +        to be prefixed by Annex B start codes. According to :ref:`h264`
> +        valid start codes can be 3-bytes 0x000001 or 4-bytes 0x00000001.
> +
>  .. _v4l2-mpeg-mpeg2:
> =20
>  ``V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS (struct)``
> diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documen=
tation/media/uapi/v4l/pixfmt-compressed.rst
> index d666eb51741a..493b6020107d 100644
> --- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> +++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> @@ -60,8 +60,9 @@ Compressed Formats
>  	extracted from the H264 bitstream.  This format is adapted for
>  	stateless video decoders that implement an H264 pipeline
>  	(using the :ref:`mem2mem` and :ref:`media-request-api`).
> -	This pixelformat has a modifier that must be set at least once
> -	through the ``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE`` control.
> +	This pixelformat has two modifiers that must be set at least once
> +	through the ``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE``
> +        and ``V4L2_CID_MPEG_VIDEO_H264_START_CODE`` controls.
>  	In addition, metadata associated with the frame to decode are
>  	required to be passed through the ``V4L2_CID_MPEG_VIDEO_H264_SPS``,
>  	``V4L2_CID_MPEG_VIDEO_H264_PPS``,
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-co=
re/v4l2-ctrls.c
> index 2c67f9fc4d5b..1d8f38824631 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls.c
> @@ -407,6 +407,11 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
>  		"Frame-Based",
>  		NULL,
>  	};
> +	static const char * const h264_start_code[] =3D {
> +		"No Start Code",
> +		"Annex B Start Code",
> +		NULL,
> +	};
>  	static const char * const mpeg_mpeg2_level[] =3D {
>  		"Low",
>  		"Main",
> @@ -640,6 +645,8 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
>  		return h264_fmo_map_type;
>  	case V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE:
>  		return h264_decode_mode;
> +	case V4L2_CID_MPEG_VIDEO_H264_START_CODE:
> +		return h264_start_code;
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
>  		return mpeg_mpeg2_level;
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
> @@ -860,6 +867,7 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS:		return "H264 Slice Paramet=
ers";
>  	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:		return "H264 Decode Param=
eters";
>  	case V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE:		return "H264 Decode Mode";
> +	case V4L2_CID_MPEG_VIDEO_H264_START_CODE:		return "H264 Start Code";
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:			return "MPEG2 Level";
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:			return "MPEG2 Profile";
>  	case V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP:		return "MPEG4 I-Frame QP Va=
lue";
> @@ -1229,6 +1237,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum=
 v4l2_ctrl_type *type,
>  	case V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE:
>  	case V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE:
>  	case V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE:
> +	case V4L2_CID_MPEG_VIDEO_H264_START_CODE:
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
>  	case V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL:
> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> index 928c48c57282..ba2876a64cf6 100644
> --- a/include/media/h264-ctrls.h
> +++ b/include/media/h264-ctrls.h
> @@ -27,6 +27,7 @@
>  #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE	(V4L2_CID_MPEG_BASE+1005)
> +#define V4L2_CID_MPEG_VIDEO_H264_START_CODE	(V4L2_CID_MPEG_BASE+1006)
> =20
>  /* enum v4l2_ctrl_type type values */
>  #define V4L2_CTRL_TYPE_H264_SPS			0x0110
> @@ -40,6 +41,11 @@ enum v4l2_mpeg_video_h264_decode_mode {
>  	V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED,
>  };
> =20
> +enum v4l2_mpeg_video_h264_start_code {
> +	V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +	V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
> +};
> +
>  #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
>  #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
>  #define V4L2_H264_SPS_CONSTRAINT_SET2_FLAG			0x04
> --=20
> 2.22.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1akqYACgkQ3cLmz3+f
v9HkCgf9EmtF/rN0QiLiX+k4kPVfCMb8vlZ5MAqK1Wq5hwVnVw1tUlePMcBtGU4/
nRVS0Yn97edBvSNBKDWOBKU9l+pwPE7FVkWBHS97ZHFc6nhasIRFp2mKBRbyTkJT
h1SrzZdFIY91Jt3kb0ugKd0MwUYPTrGqvCGYF4YXRVQ+vHmN9tCjpeJhvkK+uD2/
iBrih2R16bP4m3CxtzizKDybhZJxts1+qX7m47Z8IlYy/PqFjGpHMZdjJWvb57hh
TQjJmaK6CvtSRVnVvpk1NaRlOJ7ZDAVAqno1owV5qTDx7+8/wedOPPsNHfUn24bf
xxZ/e0a/SeoDTvhvpvMqvIf8CQTcIQ==
=iIB7
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============6472355639196013599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6472355639196013599==--

