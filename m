Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F56B04A4
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Sep 2019 21:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date
	:MIME-Version:References:In-Reply-To:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vl1NZ7WG7jfw7hOs06WsZu8q1tKRGchMKQrcUkKgAUk=; b=SukmaKbwYkmQG3Qhs+VrVFkMm
	lyxFGatVT+VQXN5/h5BTIf30KpUbpIsEA/4bMnIYrKLQLsMbNPRZwBOFfew3V6KJPXhipfIXxZXJu
	TtSCvg4CXN39Zd9hEKnb3pfW7TWZt8vxD0MSEak+orttwBaljyM1g14r2GbDzlADvXHdqXgLe93DO
	RD6XFIn9WUTcv7wHmJqvScdXI/iiODrJOB2IiI6AFbVO/Knmc+/rQUQPCFPtT/4lNS3aW455g+bd4
	y1zkeuLFrRqAuwtbcBop3tYs+O79oK2adLOQ58lsigwAUrEV5RMORqdITSEopI8Xr4OhuLqPfDDzd
	woYLb3kEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i88c6-0004US-AF; Wed, 11 Sep 2019 19:49:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i88c1-0004Tx-4T
 for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2019 19:49:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id DBB1128D47A
Message-ID: <20b4042dc3627b46e336e8c1c6fc401622bf3df9.camel@ndufresne.ca>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa <tfiga@chromium.org>
In-Reply-To: <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
 <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
MIME-Version: 1.0
Date: Wed, 11 Sep 2019 15:48:29 -0400
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_124909_437703_4B627E5F 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6750570524956984805=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6750570524956984805==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-v1t+JGEHFAUPnEcHoFwA"


--=-v1t+JGEHFAUPnEcHoFwA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 11 septembre 2019 =C3=A0 09:27 +0100, Ezequiel Garcia a =C3=A9c=
rit :
> On Mon, 2019-09-09 at 16:07 +0900, Tomasz Figa wrote:
> > Hi Ezequiel,
> >=20
> > On Wed, Sep 4, 2019 at 3:17 AM Ezequiel Garcia <ezequiel@collabora.com>=
 wrote:
> > > Hi all,
> > >=20
> > > This series enables the post-processor support available
> > > on the Hantro G1 VPU. The post-processor block can be
> > > pipelined with the decoder hardware, allowing to perform
> > > operations such as color conversion, scaling, rotation,
> > > cropping, among others.
> > >=20
> > > The decoder hardware needs its own set of NV12 buffers
> > > (the native decoder format), and the post-processor is the
> > > owner of the CAPTURE buffers. This allows the application
> > > get processed (scaled, converted, etc) buffers, completely
> > > transparently.
> > >=20
> > > This feature is implemented by exposing other CAPTURE pixel
> > > formats to the application (ENUM_FMT). When the application
> > > sets a pixel format other than NV12, the driver will enable
> > > and use the post-processor transparently.
> >=20
> > I'll try to review the series a bit later, but a general comment here
> > is that the userspace wouldn't have a way to distinguish between the
> > native and post-processed formats. I'm pretty much sure that
> > post-processing at least imposes some power penalty, so it would be
> > good if the userspace could avoid it if unnecessary.
> >=20
>=20
> Hm, that's true, good catch.
>=20
> So, it would be desirable to retain the current behavior of allowing
> the application to just set a different pixel format and get
> a post-processed frame, transparently.
>=20
> But at the same time, it would be nice if the application is somehow
> aware of the post-processing happening. Maybe we can expose a more
> accurate media controller topology, have applications enable
> the post-processing pipeline explicitly.

How it works on the stateful side is that userspace set the encoding
type (the codec), then passes a header (in our case, there will be
parsed structures replacing this) first. The driver then configure
capture format, giving a hint of the "default" or "native" format. This
may or may not be sufficient, but it does work in giving userspace a
hint.

>=20
> Thanks for the feedback,
> Ezequiel
>=20

--=-v1t+JGEHFAUPnEcHoFwA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXXlPiQAKCRBxUwItrAao
HII0AJ4pjy8CgdrB0H02TI6NAG3s7SUkWACffzXziQp0QiEe8fgzFulcgFS/XSU=
=q71o
-----END PGP SIGNATURE-----

--=-v1t+JGEHFAUPnEcHoFwA--



--===============6750570524956984805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6750570524956984805==--


