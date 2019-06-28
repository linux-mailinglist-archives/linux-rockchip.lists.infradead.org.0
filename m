Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721355A7C7
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Jun 2019 01:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+X7/jMJ2HQJx3BNvaNRJdGAr1O/nTKGggwWArAOPpjE=; b=b42EyXOm3QWqLzo5o3JRevQM5
	F0EDhcPy5C8ebZrn4/Z1kdiBpThTZC8q39kONTu+sv1JajR9TnJjDlQe2Y8oIMXY4rnXR8bOpaiMC
	2xEkcOUe1XTVvwhLqs8gBborbAoclHvq+hgcsybUgfyMgP2U2yUa/i+gpJEPoRBt5V+f0jKBF20tC
	2vaMxfT/5xTUxMgAKMEElRgPY+CAevr9JFeUNcS2e7v7tLU8ZpqLwg4XA7FsrcNgqheUg5P05c6WM
	sXnm4C0QePOxuA1i56W+0Z6g3sItdsrgCZM/EGMbFv3bJoYQ7UZYqnkCPyBd6upuFktGdp4TCSywq
	p3NN43+Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0dY-00077W-Fr; Fri, 28 Jun 2019 23:50:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0dV-000770-Gh
 for linux-rockchip@lists.infradead.org; Fri, 28 Jun 2019 23:50:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id r16so5979764wrl.11
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 16:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aNV4HFwYEt0yMBPXIayN1RSWc1G6NoGgFBBw4GTp5vk=;
 b=ntcAz/iX3Za+9ICjms1KoX9O6oWxXHxtQyDQwCbgMtkqPtk18/HptKLGS6omz63608
 bJU9/zeMqmKOPtdM+RoyfYd/q8NZtn+hlFteOxVYWQ0baUiHP/Dp7qn1LHLcwe1/NQTF
 n58RcsjDnxlmuKe688QDphz0tSXV7FlLD0WGnmmEK08j/NRUNmJCIhyDnpiZzzGeqGi1
 azbIwGfNPGLKNPk0FUf+HxtcM5FpYTc48xjxV6euLmPHk0U7vh2n2FD25akO0letVvPY
 m4XD1MGVns6LUmGSq736lCwKlUDkxZFJenjANpe2th+KMb8U6FD3xp3Jc38BO7m5keTh
 x+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aNV4HFwYEt0yMBPXIayN1RSWc1G6NoGgFBBw4GTp5vk=;
 b=PXnxugWvA6KWwPskrOyQqWW+8qJbSinpoNGBl0xq3am5Z9Tlioqzw2IOw8qWqroaIv
 tFo65mDY6JZbYuvzGXZ+j/U04T6tDTQzI1320tGzFieAdQIAMmjatP0d5SPQkQ1xtUY9
 v/o+KBwZPZtaNiY34u3x+fwJugyAvjRInpcoJrX2NL5oDeZrLNak4CcRwwcjls30VIlI
 OL1ucR5BbYobQtTt2EZqKOl7dCElN+S0qHchY6ovviqwB4zwbCp4eoGNnBMINXhRwIY2
 8xJH+raTJQIq6kxVICYnAzIFMpd3yTTLXehgNagipSrg6NFhg68ZYKgORzmWamxTmvPN
 kZGw==
X-Gm-Message-State: APjAAAVFpF/Kwa/C9DuSQ+qZeyJ54SUAX7q6w4rLzVlhEyar1+S9rMyb
 WsgjZbO+PgiCXR9SuEyWjGo=
X-Google-Smtp-Source: APXvYqwqZ6SOsptqFa/q0p+yLVXdp/0KY0BruP6v8sEZ6TBSCu0PSTL3/w4chYZ3COstYSLzG9RhTw==
X-Received: by 2002:adf:de90:: with SMTP id w16mr9322571wrl.217.1561765830682; 
 Fri, 28 Jun 2019 16:50:30 -0700 (PDT)
Received: from localhost
 (p200300E41F2AB200021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f2a:b200:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id n2sm423403wmi.38.2019.06.28.16.50.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 16:50:29 -0700 (PDT)
Date: Sat, 29 Jun 2019 01:50:28 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 4/7] drm/panel: simple: Use display_timing for Innolux
 n116bge
Message-ID: <20190628235028.GC1189@mithrandir>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-5-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190401171724.215780-5-dianders@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_165033_562722_081C8C34 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric =?utf-8?B?QmFsbGV0YsOy?= <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 mka@chromium.org
Content-Type: multipart/mixed; boundary="===============9074527090531232231=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============9074527090531232231==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Fig2xvG2VGoz8o/s"
Content-Disposition: inline


--Fig2xvG2VGoz8o/s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 10:17:21AM -0700, Douglas Anderson wrote:
> Convert the Innolux n116bge from using a fixed mode to specifying a
> display timing with min/typ/max values.
>=20
> Note that the n116bge's datasheet doesn't fit too well into DRM's way
> of specifying things.  Specifically the panel's datasheet just
> specifies the vertical blanking period and horizontal blanking period
> and doesn't break things out.  For now we'll leave everything as a
> fixed value but just allow adjusting the pixel clock.  I've added a
> comment on what the datasheet claims so someone could later expand
> things to fit their needs if they wanted to test other blanking
> periods.
>=20
> The goal here is to be able to specify the panel timings in the device
> tree for several rk3288 Chromebooks (like rk3288-veryon-jerry).  These
> Chromebooks have all been running in the downstream kernel with the
> standard porches and sync lengths but just with a slightly slower
> pixel clock because the 76.42 MHz clock is not achievable from the
> fixed PLL that was available.  These Chromebooks only achieve a
> refresh rate of ~58 Hz.  While it's probable that we could adjust the
> timings to achieve 60 Hz it's probably wisest to match what's been
> running on these devices all these years.
>=20
> I'll note that though the upstream kernel has always tried to achieve
> 76.42 MHz, it has actually been running at 74.25 MHz also since the
> video processor is parented off the same fixed PLL.
>=20
> Changes in v4:
>  - display_timing for Innolux n116bge new for v4.
>=20
> Changes in v5:
>  - Added Heiko's Tested-by
>=20
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> ---
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 37 +++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 14 deletions(-)

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--Fig2xvG2VGoz8o/s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Wp8QACgkQ3SOs138+
s6EONRAAnI/lLg3nbvC+NPG+zh2EdypmFBjJwDAq/ZiG0VNTPe0pgjIbyg+vVcKD
TS4SdyIlPL3I043HPwObBM/Y+O1MOcWwuEMxlnTSN0+R0pgyifAawX55sCE14MW0
gf0GUEJcysayA0957o8Zfrvlh74nTmNOPyfp0MlpIXMoKZ7Zh3TMD7i0e4J7rfxM
39xPhrNSLUYM0+fiTAYO3hcy3KGZ01CpLP17+djBgsDDjV+0uDXl6I6FNm9oHvNa
bgbwx2urFytaX9PkFc/DfYYf6o/olkB1XZHxRRJfMZuys2L1cjQB+5zy6PjQ8GIM
mScJALEwkxAKaidmyZ9lPm+a4CsMJF/s+XeG5MpVp6J63w8RdRCyqPRYQFcJkExR
FyxI76LaRZ/wntJOBPgayCa19n3eNyL8KzEy259zNvOhluuzYpKQA+rqjGk2iXy/
hQPgNnKtbu9x2Gh3AnzfxDwqalLX7/+ksHbTDXoXnuxa9HMlBDXuwbw721MMmzea
k4MfVF5pUkQAFp5OODbhg5tlZH4zV0RIZdMvHR2/elsSP23+27kgvxqS7tDor493
jUnLz3GuOGarkedkx9ywBbiNZJOlr6xAJlxW6jgr/hUNmaZ5Da4JwJr8S/3MCUyD
xxMPQvzI/Sacn0JL2kD9cE1ojFOJOxLskiTWEv0tZtChQR2hoXk=
=ZuxI
-----END PGP SIGNATURE-----

--Fig2xvG2VGoz8o/s--


--===============9074527090531232231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9074527090531232231==--

