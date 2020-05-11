Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AB51CD979
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 14:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O3vGymM4r9gGYi2dxL8Gk9Y1pqHbm/Hckl/oopgWFJ4=; b=B19JD04rzhxVKTaD1xBs8VZIG
	9XEunSDaC4s2ktytxog/YfqdY4yev9FZITtt7eh3QLxLXoAIsQJ0eavgau6/94QkyKRX5h02y3clV
	qOGi9y3d+wxa1AJjYiN0yLa2GKSwqrDl7K5HMVBI2601h0b7C2s5vTo94LUlQ3MabrL3/NINZEnNe
	1JndSysrtIH/hLpFgy9y7E/yElzHXk3Dui62HYpHHt+qwWr/ZIlz3QQ5SBSJudZV7er9txlmLHeKj
	ZVx0zGx6DYC3ctfbPoeAxWBdflEoOO60Np50jh0GAhs49SaS19XwVYOj4VPxqKTj+k7Q3P/uGZEPb
	XjE4X009Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7N1-0004KK-FT; Mon, 11 May 2020 12:17:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7My-0004JT-A1
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 12:17:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id E08E42A0FD7
Message-ID: <49a15300a5db8b4c61115c4a89eac1762dc3f31a.camel@collabora.com>
Subject: Re: [PATCH v3 2/3] media: uapi: Add VP9 stateless decoder controls
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia
 <ezequiel@collabora.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Mon, 11 May 2020 08:17:06 -0400
In-Reply-To: <7846cb19-c5e0-4f95-c361-cf78d2c1b16a@xs4all.nl>
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-3-ezequiel@collabora.com>
 <6459bd9f-20f6-9910-8d45-04870a19019d@xs4all.nl>
 <f885e94250778916c09a29269f9c9f42eb67cb66.camel@collabora.com>
 <7846cb19-c5e0-4f95-c361-cf78d2c1b16a@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_051716_477947_492F6CD9 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 gustavo.padovan@collabora.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com
Content-Type: multipart/mixed; boundary="===============0004433369190761795=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0004433369190761795==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-7FJdwtw3aqO6RvgErWDP"


--=-7FJdwtw3aqO6RvgErWDP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 08 mai 2020 =C3=A0 15:16 +0200, Hans Verkuil a =C3=A9crit :
> > I think this comes directly from the spec. The Rockchip VDEC doesn't
> > seem to use it.
> > Do you think we can drop it from here, and rely on the V4L2 colorspace
> > passed in the format negotiation?
>=20
>=20
> That would be preferred, yes. Otherwise you would have two places where y=
ou can
> define colorspaces, and that's confusing.

This is indeed redundant with the color information in the format. In
VP8/9 there is only 1 header for everything, so it's harder to figure-
out what to filter. While in H.264/HEVC this information is usually set
an an extension header.

Though this do re-open the discussion about SPS in H.264/HEVC. In there
you will find the coded size and the crop window and the sub-sampling.
I don't remember exactly what was the conclusion, but I think it was
kept to allow allow bitstream reconstruction. But it will effectively
overlap directly (or indirectly) with some V4L2 generic API.

regards,
Nicolas

--=-7FJdwtw3aqO6RvgErWDP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXrlCQgAKCRBxUwItrAao
HBt3AJ9qVuHoo7obOay42xsXt2h91zXANwCfTanxrgZ1TNarsZjy64md+ngxdW4=
=eeld
-----END PGP SIGNATURE-----

--=-7FJdwtw3aqO6RvgErWDP--



--===============0004433369190761795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0004433369190761795==--


