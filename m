Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE7F1C43C9
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 May 2020 20:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rTYh9vJ2wMfn1GQ8juC31V0SRmgIA3JUlYi8nii/P4w=; b=QEXlTwNt0as7Qph0O1qno8MZP
	Eub/1qPTWuPor5eiqB9yCVJrsjS6tv24Tzh7Q5AmMxQyeNvDVbMkZVM674XON/Lbg0LXYRthGTLau
	jOH2Ti22GMHP62IoL5J1ucwNLILWR0EZELkb/S8deWBwgOkwj9w5jEioxfQ5sSgpzp06rpROy8Ik3
	ldZzLhglfErkNtVK7gugipfFzsHlsJifZkyXdBq5B7PuJCy0JrAW9v7YeCh9LMtu+9A9VXjdZq9nR
	OCPr5vq6nDwhNnxzDpq/yEGXdYQ1rxgVl1TFZ59F8oMSLe4ikabob5NL4Z6nL67uh5+Ebf209GiaL
	cigNccLxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfPT-0004nO-EH; Mon, 04 May 2020 18:01:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfPR-0004m2-4R
 for linux-rockchip@lists.infradead.org; Mon, 04 May 2020 18:01:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 73E842A0458
Message-ID: <e53824aed3eeb27419e5399576cce028f0ba8203.camel@collabora.com>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Boris Brezillon
 <boris.brezillon@collabora.com>
Date: Mon, 04 May 2020 14:01:32 -0400
In-Reply-To: <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
 <20200410115113.31728-3-ezequiel@collabora.com>
 <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
 <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
 <20200502203707.402ea3cd@collabora.com>
 <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_110141_303583_CDD50095 
X-CRM114-Status: GOOD (  15.46  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2791492726696115973=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============2791492726696115973==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-OSiYpnCOHGwM5bzGy/T7"


--=-OSiYpnCOHGwM5bzGy/T7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le samedi 02 mai 2020 =C3=A0 19:55 -0300, Ezequiel Garcia a =C3=A9crit :
> +Nicolas
>=20
> On Sat, 2020-05-02 at 20:37 +0200, Boris Brezillon wrote:
> > On Fri, 01 May 2020 13:57:49 -0300
> > Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >=20
> > > > > +
> > > > > +.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
> > > > > +
> > > > > +.. flat-table:: enum v4l2_vp9_reset_frame_context
> > > > > +    :header-rows:  0
> > > > > +    :stub-columns: 0
> > > > > +    :widths:       1 2
> > > > > +
> > > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE``
> > > > > +      - Do not reset any frame context.
> > > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE_ALT``
> > > > > +      - Do not reset any frame context. This is an alternative v=
alue for
> > > > > +        V4L2_VP9_RESET_FRAME_CTX_NONE. =20
> > > >=20
> > > > Add `` around V4L2_VP9_RESET_FRAME_CTX_NONE.
> > > >  =20
> > >=20
> > > Hm, now that I look closer, what's the point
> > > of having the NONE_ALT in our uAPI if it
> > > has same meaning as NONE?
> > >=20
> > > I think it can be removed.
> >=20
> > The intent was to match the spec so that one can pass the value
> > extracted from the bitstream directly.

reset_frame_contextspecifies whether the frame context should be reset
to default values:
  =E2=88=92 0 or 1 means do not reset any frame context
  =E2=88=92 2 resets just the context specified in the frame header
  =E2=88=92 3 resets all cont

But aren't we going too far by making this an emum ? In Microsfot DXVA,
we pass that value without interpreting it in userspace. For the
following RKVDEC, it is (suspiciously ?) ignored. Maybe just passing
over the value would make more sense, less work ?

> >=20
> > > > I got several smatch warnings:
> > > >=20
> > > > smatch: ERRORS
> > > > drivers/media/v4l2-core/v4l2-ctrls.c:1880 validate_vp9_frame_decode=
_params() warn: was && intended here instead of ||?
> > > >=20
> > > > (Commented on this ^^^ one above)
> > > >=20
> > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:426 init_intra_only_probs=
() error: buffer overflow 'ptr' 9 <=3D 69
> > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1478 rkvdec_vp9_done() er=
ror: potentially dereferencing uninitialized 'ctrl'.
> > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1483 rkvdec_vp9_done() er=
ror: uninitialized symbol 'dec_dst_buf'.
> > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:941:6: warning: variable =
'ret' set but not used [-Wunused-but-set-variable]
> > > > drivers/staging/media/rkvdec/rkvdec-vp9.c:1466:40: warning: variabl=
e 'fctx' set but not used [-Wunused-but-set-variable]
> > > >  =20
> > >=20
> > > Oh, I'll run smatch and fix them all.
> >=20
> > Oops!
>=20
>=20

--=-OSiYpnCOHGwM5bzGy/T7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXrBYfAAKCRBxUwItrAao
HEl0AKCsffGNkgR8IRMvRvpqEdfuIJofVACgwecGH6S4+u9ily9wRCE4jpdn++E=
=ONvy
-----END PGP SIGNATURE-----

--=-OSiYpnCOHGwM5bzGy/T7--



--===============2791492726696115973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2791492726696115973==--


