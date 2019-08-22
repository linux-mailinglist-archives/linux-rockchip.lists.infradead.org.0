Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996C999739
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 16:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LDcre5RR9KFNE37Xo8OmWdCNzvkNhb709cumptIhzw0=; b=XPGAtT4mL/tWP+5IjDMEOq9Zz
	ef/rcdvvhrnJItiszQOMMeVN6OD1mqUNedRphgit+Ye6PUZPJ0JofpdrkxEP85oCMZyApdXacqG3P
	GV2Gu8ssgG2lkUI+SlyeJJNZDYdVmeYDCh2y5h4Oy7/iUu9CNGnBarfC0HgdPUA9Kavu7WDr1H5b6
	YqNfA5LFshfx41a2bHokTJzznND4esQG9VFRObUGfOxFgAH4f44M3eWYI7yq1NsIBkUN7z9IfVNBp
	4RjpjksLof119/e/qt73XJhVCQuKbC40UxC87ebZp+kUuP/Hoi/MZkGAkYeG40FBvoSqizNPslvq6
	oAyR94hww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oKm-0006Ok-8G; Thu, 22 Aug 2019 14:45:04 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oIf-0004dk-9j
 for linux-rockchip@lists.infradead.org; Thu, 22 Aug 2019 14:43:04 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 0208C60003;
 Thu, 22 Aug 2019 14:42:40 +0000 (UTC)
Date: Thu, 22 Aug 2019 16:42:40 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v7 02/11] media: uapi: h264: Rename pixel format
Message-ID: <20190822144240.GA1618@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-3-ezequiel@collabora.com>
 <20190819124110.GB32182@aptenodytes>
 <e618bf01-3f82-ff06-1842-9d21a379d7ee@xs4all.nl>
 <20190822115453.GA1627@aptenodytes>
 <5a6432ce-6d90-9efa-9ae8-400b5ca1d653@xs4all.nl>
 <5ad0899e81ef8f22545bcb6b01833c493ce2bdc9.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <5ad0899e81ef8f22545bcb6b01833c493ce2bdc9.camel@collabora.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074253_661014_8ADB1CA0 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6069415984348510908=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6069415984348510908==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu 22 Aug 19, 11:38, Ezequiel Garcia wrote:
> On Thu, 2019-08-22 at 15:47 +0200, Hans Verkuil wrote:
> > On 8/22/19 1:54 PM, Paul Kocialkowski wrote:
> > > Hi,
> > >=20
> > > On Mon 19 Aug 19, 17:53, Hans Verkuil wrote:
> > > > On 8/19/19 2:41 PM, Paul Kocialkowski wrote:
> > > > > Hi,
> > > > >=20
> > > > > On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> > > > > > The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
> > > > > > because the pixel format would represent H264 slices without any
> > > > > > start code.
> > > > > >=20
> > > > > > However, as we will now introduce a start code menu control,
> > > > > > give the pixel format a more meaningful name, while it's
> > > > > > still early enough to do so.
> > > > >=20
> > > > > I definitely agree that SLICE_RAW is not the suffix we are lookin=
g for, but I'm
> > > > > not sure that _SLICE is self-describing given that we can operate=
 either
> > > > > per-frame or per-slice, and _SLICE sort of implies the latter. Al=
so, VP8 uses
> > > > > _FRAME to clearly indicate that it operates per-frame.
> > > >=20
> > > > Well, VP8 doesn't support slices at all.
> > > >=20
> > > > > In addition, the _SLICE suffix is used by MPEG-2 in the stable AP=
I. Since we
> > > >=20
> > > > Regarding MPEG-2: while it has a concept of slices, it is my unders=
tanding
> > > > that you never process slices separately, but only full pictures. I=
 may be
> > > > wrong here.
> > >=20
> > > I don't think that is the case since ffmpeg clearly implements decodi=
ng on a
> > > per-slice basis (mpeg_decode_slice).
> > >=20
> > > Information is also passed on a per-slice basis to VAAPI=20
> > > (vaapi_mpeg2_decode_slice) with a distinct data buffer and slice para=
meter
> > > buffer for each slice. Among other things, it contains the vertical a=
nd
> > > horizontal positions for the slice, which we can set in the hardware.
> > >=20
> > > > > certainly want MPEG-2 to allow per-slice and per-frame decoding a=
s well as
> > > > > H.264 and that the _SLICE format is specified to be the broken "c=
oncatenated
> > > > > slices" that cedrus expects, we probably want to use another suff=
ix. This way,
> > > > > we could deprecated MPEG2_SLICE and introduce a new format for MP=
EG-2 that would
> > > > > have consistent naming with the other mpeg formats.
> > > >=20
> > > > I actually think that H264_SLICE is a decent name.
> > > >=20
> > > > I'm less sure about MPEG2_SLICE since I am not sure if it means the=
 same as
> > > > a H264 slice.
> > >=20
> > > The main problem I see is that we have already specified MPEG2_SLICE =
in a way
> > > that is incompatible with the future improvments we want to bring to =
the API:
> > > " The output buffer must contain the appropriate number of macroblock=
s to
> > > decode a full corresponding frame to the matching capture buffer."
> > >=20
> > > So I only see two possibilities: either we decide to change the speci=
fication
> > > of the pixel format and we can keep using the _SLICE suffix, either w=
e need to
> > > introduce a new pixel format with another suffix, which should also b=
e reflected
> > > on other MPEG formats for consistency. Then we can deprecate MPEG2_SL=
ICE and
> > > have drivers stop using it.
> > >=20
> > > What do you think?
> >=20
> > I'd change the specification of the pixel format. So MPEG2_SLICE now su=
pports
> > multiple slices if the hardware supports it as well.
> >=20
> > We would need an MPEG2_DECODING_MODE control as well, that currently wo=
uld
> > read FRAME based only.
> >=20
>=20
> That's exactly what I was about to suggest.

Sounds perfect then!

I have started looking at the start-code situation to see if it shares
similarities with H.264, but did not go far enough to reach any conclusion
on that aspect.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1eqeAACgkQ3cLmz3+f
v9EUVQf+J1FHQy9KETtrc0FuHLl83ZvjI8dmqaowj10YOKGx/Hu25lw1yudeG1HF
+ErY6z3RKxFeYf3N61X4WSgjPI+r+s5AFzjYgss3MBtZ9TON88te8YClR7XBXhy/
CboiD37r1VMc4nWCXDAVbP+eEky0bD1V15EwOKLPrdW/4bYRcBVcNZaWX/3Tcg/h
isFrhTDzYwrCFGKfjb/pmFwXcTUspT4eYFUj0wgteHInWeQ6/t+StlnD8R22Wa0m
KszJXNoLeXAskjRAzjFzLOaPxRzviW2GOYBQJhT1p6+Yulwe0CR082Ptq8iyX1LB
tz42nt26InblIDf8QlCBPrZkVIIdbA==
=bwBa
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--


--===============6069415984348510908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6069415984348510908==--

