Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0768D283
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 13:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GMw00THmHfzNBO8gKa6nIML0Q0Y2HKczEcLrVX7kbm8=; b=sqWk0VGKV6LtXiADSUZOr75mu
	xvBa6NI/r6NwNFOyPUIva4a7UEGBQUL7B4Cv/D4BgDwEQMT79LSJPFDxgSIPlhsUDNp4ko7AcUpId
	EnppYw7ZsEJlePNgBhB7SiRdWqZpmdaW+43vHUTkGhPw2E6MLFDpSG7xXzvZqai9qDdchzIYEvcG3
	VLl6BILh+W5Gxb9ORuFWjA+SKpKaGekm42b0JiGSub1A9kW1EX4iKeIDE+DY69FeI8tgFeOINm36c
	FOpY2pr6DYFhjakhb8R+9ZB4XW17Zs6RDN8oxEF+ydEXphYrd76M6WKUf2Btbx/WMNAZNWOLpxYmG
	kH0oRFqpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrmc-0007Qz-9S; Wed, 14 Aug 2019 11:49:38 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrmY-0007QC-7v
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 11:49:36 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 336A620004;
 Wed, 14 Aug 2019 11:49:29 +0000 (UTC)
Date: Wed, 14 Aug 2019 13:49:28 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v5 04/11] media: uapi: h264: Add the concept of start code
Message-ID: <20190814114928.GB4687@aptenodytes>
References: <20190812193522.10911-1-ezequiel@collabora.com>
 <20190812193522.10911-5-ezequiel@collabora.com>
 <f88d144f-e0fe-6974-efe5-77b5ed5c6e09@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <f88d144f-e0fe-6974-efe5-77b5ed5c6e09@xs4all.nl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_044934_586343_BEC41144 
X-CRM114-Status: GOOD (  19.44  )
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
Content-Type: multipart/mixed; boundary="===============0289008416621489601=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0289008416621489601==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t0UkRYy7tHLRMCai"
Content-Disposition: inline


--t0UkRYy7tHLRMCai
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 14 Aug 19, 10:11, Hans Verkuil wrote:
> On 8/12/19 9:35 PM, Ezequiel Garcia wrote:
> > Stateless decoders have different expectations about the
> > start code that is prepended on H264 slices. Add a
> > menu control to express the supported start code types
> > (including no start code).
> >=20
> > Drivers are allowed to support only one start code type,
> > but they can support both too.
> >=20
> > Note that this is independent of the H264 decoding mode,
> > which specifies the granularity of the decoding operations.
> > Either in frame-based or slice-based mode, this new control
> > will allow to define the start code expected on H264 slices.
> >=20
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> > Changes in v5:
> > * Improve specification as suggested by Hans.
> > Changes in v4:
> > * New patch.
> > ---
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 33 +++++++++++++++++++
> >  .../media/uapi/v4l/pixfmt-compressed.rst      |  3 +-
> >  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 +++++
> >  include/media/h264-ctrls.h                    |  6 ++++
> >  4 files changed, 50 insertions(+), 1 deletion(-)
> >=20
>=20
> <snip>
>=20
> > diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> > index e6c510877f67..31555c99f64a 100644
> > --- a/include/media/h264-ctrls.h
> > +++ b/include/media/h264-ctrls.h
> > @@ -27,6 +27,7 @@
> >  #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
> >  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+100=
4)
> >  #define V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE	(V4L2_CID_MPEG_BASE+100=
5)
> > +#define V4L2_CID_MPEG_VIDEO_H264_STARTCODE	(V4L2_CID_MPEG_BASE+1006)
>=20
> I almost forgot: can you change this to _START_CODE? Since it is two word=
s?

Agreed, I like it better this way too.

> Thanks!
>=20
> 	Hans
>=20
> > =20
> >  /* enum v4l2_ctrl_type type values */
> >  #define V4L2_CTRL_TYPE_H264_SPS			0x0110
> > @@ -41,6 +42,11 @@ enum v4l2_mpeg_video_h264_decoding_mode {
> >  	V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING,
> >  };
> > =20
> > +enum v4l2_mpeg_video_h264_start_code {
> > +	V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
> > +	V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE,

Could we apply the same START_CODE renaming here too?

I was also thinking that it would be slightly more readable put like this,
with START_CODE as a prefix since it's common to both options and the name =
of
the enum:

- V4L2_MPEG_VIDEO_H264_START_CODE_NONE
- V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B

What do you think?

Cheers,

Paul

> > +};
> > +
> >  #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
> >  #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
> >  #define V4L2_H264_SPS_CONSTRAINT_SET2_FLAG			0x04
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--t0UkRYy7tHLRMCai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1T9UgACgkQ3cLmz3+f
v9HGVQgAiV5mFB7VPdtODmRBRts3AVeDl89JHNmbGXNAG37Sm9z3pUd3Uz5FEScy
owJySCgGlrUekE0s/IQ2/K5cqrhY1dvDuLb4Y8RmfgiPoj//GZy5wK28dUIuujb8
VWkfYxUb1UHyYS0BwZGPqD8K0A34fTD/+jh3CME9vbhrjBGtnhoW3IwQ/MtDxxUJ
ozmmiq6uRcWTcQfcCs89RhFjRk+zyxWnvMZwhIalkH6YdbB/XD4flM+W6JL66GYg
JKiPwFNIcRkICQ/xW8q1Jvt7MMVYxBI1jgGJrz1Dw7mXJBX1pIPRnujYZL1KvgZA
xpzvbtp2A1d1FTT+tFYYfRDNx2T+2A==
=rJGn
-----END PGP SIGNATURE-----

--t0UkRYy7tHLRMCai--


--===============0289008416621489601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0289008416621489601==--

