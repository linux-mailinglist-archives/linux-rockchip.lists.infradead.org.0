Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC262992AC
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 13:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bUsUcWX/hioVgqyBJeakV4MzAdGOK4MjzIdqoa+T6Yk=; b=fVQOU6dSDc5Nv8ODFLNon1eLJ
	nfFlKBRs9oo3480NeLpxLqhB3ZMw3UpY/oDIn3w4HRl1vuSor+7bX+T0j84MuSHV/35rCaYXeOh4I
	3btN7lokA3WDG1vQss/z6o142z5mPoYfkSi+qaDPaLGQo/vXiVRU9dXcBg923D9dp0e5Rone0lKMB
	L3uRAAUnzxZMtdFplMiQWmZ393mI2K9lPNJfMYzwa14qg/kSvr+/y0G8Pgk5wzeseSqjGmrtn/Bkh
	SMR5Rez3PkciPYqehAcjK7IUHZoZqxuo8H0VVRVO07ZxvJj/wJQmvhT/58VwP5hsKdKcC+xXANcSt
	nk1zLN1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lgS-0002xW-MJ; Thu, 22 Aug 2019 11:55:16 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lgM-00025f-2M
 for linux-rockchip@lists.infradead.org; Thu, 22 Aug 2019 11:55:12 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 5637720006;
 Thu, 22 Aug 2019 11:54:53 +0000 (UTC)
Date: Thu, 22 Aug 2019 13:54:53 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v7 02/11] media: uapi: h264: Rename pixel format
Message-ID: <20190822115453.GA1627@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-3-ezequiel@collabora.com>
 <20190819124110.GB32182@aptenodytes>
 <e618bf01-3f82-ff06-1842-9d21a379d7ee@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <e618bf01-3f82-ff06-1842-9d21a379d7ee@xs4all.nl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_045510_417489_12B1D54A 
X-CRM114-Status: GOOD (  33.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7149969143461631896=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============7149969143461631896==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 19 Aug 19, 17:53, Hans Verkuil wrote:
> On 8/19/19 2:41 PM, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> >> The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
> >> because the pixel format would represent H264 slices without any
> >> start code.
> >>
> >> However, as we will now introduce a start code menu control,
> >> give the pixel format a more meaningful name, while it's
> >> still early enough to do so.
> >=20
> > I definitely agree that SLICE_RAW is not the suffix we are looking for,=
 but I'm
> > not sure that _SLICE is self-describing given that we can operate either
> > per-frame or per-slice, and _SLICE sort of implies the latter. Also, VP=
8 uses
> > _FRAME to clearly indicate that it operates per-frame.
>=20
> Well, VP8 doesn't support slices at all.
>=20
> >=20
> > In addition, the _SLICE suffix is used by MPEG-2 in the stable API. Sin=
ce we
>=20
> Regarding MPEG-2: while it has a concept of slices, it is my understanding
> that you never process slices separately, but only full pictures. I may be
> wrong here.

I don't think that is the case since ffmpeg clearly implements decoding on a
per-slice basis (mpeg_decode_slice).

Information is also passed on a per-slice basis to VAAPI=20
(vaapi_mpeg2_decode_slice) with a distinct data buffer and slice parameter
buffer for each slice. Among other things, it contains the vertical and
horizontal positions for the slice, which we can set in the hardware.

> > certainly want MPEG-2 to allow per-slice and per-frame decoding as well=
 as
> > H.264 and that the _SLICE format is specified to be the broken "concate=
nated
> > slices" that cedrus expects, we probably want to use another suffix. Th=
is way,
> > we could deprecated MPEG2_SLICE and introduce a new format for MPEG-2 t=
hat would
> > have consistent naming with the other mpeg formats.
>=20
> I actually think that H264_SLICE is a decent name.
>=20
> I'm less sure about MPEG2_SLICE since I am not sure if it means the same =
as
> a H264 slice.

The main problem I see is that we have already specified MPEG2_SLICE in a w=
ay
that is incompatible with the future improvments we want to bring to the AP=
I:
" The output buffer must contain the appropriate number of macroblocks to
decode a full corresponding frame to the matching capture buffer."

So I only see two possibilities: either we decide to change the specificati=
on
of the pixel format and we can keep using the _SLICE suffix, either we need=
 to
introduce a new pixel format with another suffix, which should also be refl=
ected
on other MPEG formats for consistency. Then we can deprecate MPEG2_SLICE and
have drivers stop using it.

What do you think?

Cheers,

Paul

> > One suggestion I had was to call it H264_PARSED (and apply this to MPEG=
-2 and
> > HEVC when similar controls to H.264 are set in place for them). I think=
 Hans had
> > another suggestion for the name but I don't recall what it was at this =
point.
>=20
> I can't remember it either. In any case, I'm not that keen on _PARSED.
>=20
> I think for H264 and HEVC the _SLICE suffix is good enough.
>=20
> Regards,
>=20
> 	Hans
>=20
> >=20
> > Either way, if this has to be some debate, we could perhaps take it off=
 your
> > series and stay with SLICE_RAW for now, as long as we do rename it befo=
re making
> > the API stable.
> >=20
> > What do you think?
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> >> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> >> ---
> >> Changes in v7:
> >> * None.
> >> Changes in v6:
> >> * None.
> >> Changes in v5:
> >> * None.
> >> Changes in v4:
> >> * New patch.
> >> ---
> >>  Documentation/media/uapi/v4l/pixfmt-compressed.rst | 4 ++--
> >>  drivers/media/v4l2-core/v4l2-ioctl.c               | 2 +-
> >>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c    | 2 +-
> >>  drivers/staging/media/sunxi/cedrus/cedrus_video.c  | 6 +++---
> >>  include/media/h264-ctrls.h                         | 2 +-
> >>  5 files changed, 8 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Docu=
mentation/media/uapi/v4l/pixfmt-compressed.rst
> >> index f52a7b67023d..9b65473a2288 100644
> >> --- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> >> +++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> >> @@ -52,9 +52,9 @@ Compressed Formats
> >>        - ``V4L2_PIX_FMT_H264_MVC``
> >>        - 'M264'
> >>        - H264 MVC video elementary stream.
> >> -    * .. _V4L2-PIX-FMT-H264-SLICE-RAW:
> >> +    * .. _V4L2-PIX-FMT-H264-SLICE:
> >> =20
> >> -      - ``V4L2_PIX_FMT_H264_SLICE_RAW``
> >> +      - ``V4L2_PIX_FMT_H264_SLICE``
> >>        - 'S264'
> >>        - H264 parsed slice data, without the start code and as
> >>  	extracted from the H264 bitstream.  This format is adapted for
> >> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2=
-core/v4l2-ioctl.c
> >> index bb5b4926538a..39f10621c91b 100644
> >> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> >> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> >> @@ -1343,7 +1343,7 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc=
 *fmt)
> >>  		case V4L2_PIX_FMT_H264:		descr =3D "H.264"; break;
> >>  		case V4L2_PIX_FMT_H264_NO_SC:	descr =3D "H.264 (No Start Codes)"; b=
reak;
> >>  		case V4L2_PIX_FMT_H264_MVC:	descr =3D "H.264 MVC"; break;
> >> -		case V4L2_PIX_FMT_H264_SLICE_RAW:	descr =3D "H.264 Parsed Slice Dat=
a"; break;
> >> +		case V4L2_PIX_FMT_H264_SLICE:	descr =3D "H.264 Parsed Slice Data"; =
break;
> >>  		case V4L2_PIX_FMT_H263:		descr =3D "H.263"; break;
> >>  		case V4L2_PIX_FMT_MPEG1:	descr =3D "MPEG-1 ES"; break;
> >>  		case V4L2_PIX_FMT_MPEG2:	descr =3D "MPEG-2 ES"; break;
> >> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers=
/staging/media/sunxi/cedrus/cedrus_dec.c
> >> index bdad87eb9d79..56ca4c9ad01c 100644
> >> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> >> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> >> @@ -46,7 +46,7 @@ void cedrus_device_run(void *priv)
> >>  			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> >>  		break;
> >> =20
> >> -	case V4L2_PIX_FMT_H264_SLICE_RAW:
> >> +	case V4L2_PIX_FMT_H264_SLICE:
> >>  		run.h264.decode_params =3D cedrus_find_control_data(ctx,
> >>  			V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
> >>  		run.h264.pps =3D cedrus_find_control_data(ctx,
> >> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drive=
rs/staging/media/sunxi/cedrus/cedrus_video.c
> >> index 681dfe3367a6..eeee3efd247b 100644
> >> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> >> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> >> @@ -38,7 +38,7 @@ static struct cedrus_format cedrus_formats[] =3D {
> >>  		.directions	=3D CEDRUS_DECODE_SRC,
> >>  	},
> >>  	{
> >> -		.pixelformat	=3D V4L2_PIX_FMT_H264_SLICE_RAW,
> >> +		.pixelformat	=3D V4L2_PIX_FMT_H264_SLICE,
> >>  		.directions	=3D CEDRUS_DECODE_SRC,
> >>  	},
> >>  	{
> >> @@ -104,7 +104,7 @@ static void cedrus_prepare_format(struct v4l2_pix_=
format *pix_fmt)
> >> =20
> >>  	switch (pix_fmt->pixelformat) {
> >>  	case V4L2_PIX_FMT_MPEG2_SLICE:
> >> -	case V4L2_PIX_FMT_H264_SLICE_RAW:
> >> +	case V4L2_PIX_FMT_H264_SLICE:
> >>  		/* Zero bytes per line for encoded source. */
> >>  		bytesperline =3D 0;
> >> =20
> >> @@ -449,7 +449,7 @@ static int cedrus_start_streaming(struct vb2_queue=
 *vq, unsigned int count)
> >>  		ctx->current_codec =3D CEDRUS_CODEC_MPEG2;
> >>  		break;
> >> =20
> >> -	case V4L2_PIX_FMT_H264_SLICE_RAW:
> >> +	case V4L2_PIX_FMT_H264_SLICE:
> >>  		ctx->current_codec =3D CEDRUS_CODEC_H264;
> >>  		break;
> >> =20
> >> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> >> index e1404d78d6ff..6160a69c0143 100644
> >> --- a/include/media/h264-ctrls.h
> >> +++ b/include/media/h264-ctrls.h
> >> @@ -14,7 +14,7 @@
> >>  #include <linux/videodev2.h>
> >> =20
> >>  /* Our pixel format isn't stable at the moment */
> >> -#define V4L2_PIX_FMT_H264_SLICE_RAW v4l2_fourcc('S', '2', '6', '4') /=
* H264 parsed slices */
> >> +#define V4L2_PIX_FMT_H264_SLICE v4l2_fourcc('S', '2', '6', '4') /* H2=
64 parsed slices */
> >> =20
> >>  /*
> >>   * This is put insanely high to avoid conflicting with controls that
> >> --=20
> >> 2.22.0
> >>
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1egowACgkQ3cLmz3+f
v9HUvwf/c1/t2Bh47jOv/AkazFk+B1K2PrLTIjCzloE2+ARtu+aA4ReG3ojr8W6K
6/BNEPJsRPCXDKNgpRaZ5Z+CsQ2bA9ufcYK44c/XUnZQvWncOj4AZnfe5xSGzoF+
vKAxGLRYgyuBL7clW9VTkH2ZFxC2L1cycQ2pappszgfisBzsKPBPuU+xB8ZAbKZr
8TGSBSsXneH3DBUJ0o19efY0q91jNSNZFc6KQkDVXKDGsJPdEjKl7tIBjX4tFGd7
kOgn93vIzkpXR7YXiBTMaVERsQq16LYCVZ4Tb6mrckHhNQo5oSPNdIchIsviLfic
pJ9fJ2KPgUGKm8A+8twWoFcOAi3Ztg==
=pbkP
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--


--===============7149969143461631896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7149969143461631896==--

