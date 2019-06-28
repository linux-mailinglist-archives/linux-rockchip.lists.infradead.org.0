Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545AE5A7CA
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Jun 2019 01:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Urlxgw4x3h53FhWFzkUWvDiBXrIvrPm3Hk08TaLG7dQ=; b=OFMujlQQ1vXbwJnpx8AWSEwKJ
	fSns1N4qKKYccZzGiRx5MxJlpLC6H23PnAnyP50bKJ+zl9VOEzhLgAWo5qcLgExC0qLgwJpzXUv1g
	S/r2v3A++ygTpabxpR0nMuRaUc2tlbkNp/0lzOAx8mSfKPpQjQPI9qOgGhy0AKOqt7SlxgkgYZkgC
	HHJvDhKXssYaBBtphAWxSEQTtzrlae+hwLE06avFBpUb39uL56Kmp5pUwFvO0aZbF5ipUpRzf5SWv
	fSDeFvW60LldXtMRySjfWjZDi9XZA/noxQgVmoD6HkjG4a/avDnEPHqRzbdmucd6hZKS6jE0EMkpq
	ocj0Wkdzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0e0-0007BP-4x; Fri, 28 Jun 2019 23:51:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0dw-0007As-OJ
 for linux-rockchip@lists.infradead.org; Fri, 28 Jun 2019 23:51:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so10595346wmj.3
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 16:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E/8G2PjZazjY+3koArK1GNsdz2h0E+2RlYWcCl/197M=;
 b=O3DDTJZYIWWPfnAp3HyoJ+2BKJJYwV9YAcHXhNbab8OkXYmj7TCDn6L1ciJ5mH1KO2
 xHOPWC7xq8XznaLHUGH79kWjTEul8jEn7/tJpqaFaRNmyDHm3Jkly+sfvdNAt+0SJC+c
 vIKNnCau9BWNg8JNN5Z5Hd4/aTnl00+f74nhzJSJ7Mrzw3lNFTsw+zvGB7Boe6M2PKzX
 y6wyI6YsWiJAO8E+8XyelBuZkOklteNg6eBGOUyP2bbZIb5FeZ6LQpQMQIb8nnywub2k
 EatzrG99+rp2SHBrvEFe5kCeu6Lrz0T+8z2fIkHTmPp6Vq+5hNQUVqFhjW/cwapYHIwV
 FC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E/8G2PjZazjY+3koArK1GNsdz2h0E+2RlYWcCl/197M=;
 b=jJNF/ofn+t6QpVoiS85XpqB2reNDl5sR0Mpy73fnTryxWh12Ent/qMH9QsJ7sfSPYw
 J14YqAU3tqzqRcQ5C0Ue+Ri2hzaqPCOYGCu8TD8fEeOTmv8F3nzPAzsa7pPseeQ3pBXp
 ccABTkykeLWw+SkIVDu2aHCY9oZoQ6wjNx2GkdS6Gr3Tx6qKJBEb6oufKuF+OO43jch7
 j2ULhzlf8JJqF/AbvzvmuKQEnsvM6BPTuB4jtsjY9Y2maS2rlu61kf9s790LdMczK+oJ
 Z7IjlUdzmx+u6OjEAU+dsckk0143bnkqgkbdlooDlj3A/T0JGUTJAxVy5A1ErDIoc8jq
 ns5A==
X-Gm-Message-State: APjAAAWI/wbrOIrku2msneGlLBnRi3WVPFL9EYD5wcmi4FjXPqZzEpqB
 1MIpM0lS2HEjEuE2lyvoEN8=
X-Google-Smtp-Source: APXvYqwwYIGX0BKFhNZzNRBY6/lBKez08qsNZRlKhSbmT7GM7lr64gjllaB0S3ROfyfooX0EEFWCOg==
X-Received: by 2002:a1c:9ac9:: with SMTP id c192mr9275089wme.0.1561765858237; 
 Fri, 28 Jun 2019 16:50:58 -0700 (PDT)
Received: from localhost
 (p200300E41F2AB200021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f2a:b200:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id t14sm3634009wrr.33.2019.06.28.16.50.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 16:50:57 -0700 (PDT)
Date: Sat, 29 Jun 2019 01:50:56 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 5/7] drm/panel: simple: Use display_timing for AUO
 b101ean01
Message-ID: <20190628235056.GD1189@mithrandir>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-6-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190401171724.215780-6-dianders@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_165100_792215_8BBE4013 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Content-Type: multipart/mixed; boundary="===============0574674649706860818=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0574674649706860818==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="llIrKcgUOe3dCx0c"
Content-Disposition: inline


--llIrKcgUOe3dCx0c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 10:17:22AM -0700, Douglas Anderson wrote:
> Convert the AUO b101ean01 from using a fixed mode to specifying a
> display timing with min/typ/max values.
>=20
> The AUO b101ean01's datasheet says:
> * Vertical blanking min is 12
> * Horizontal blanking min is 60
> * Pixel clock is between 65.3 MHz and 75 MHz
>=20
> The goal here is to be able to specify the proper timing in device
> tree to use on rk3288-veyron-minnie to match what the downstream
> kernel is using so that it can used the fixed PLL.
>=20
> Changes in v4:
>  - display_timing for AUO b101ean01 new for v4.
>=20
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--llIrKcgUOe3dCx0c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Wp+AACgkQ3SOs138+
s6EvcQ//Tbw0f5ozO/fe70CrFitDkI3rMEe8H/oX9vrS8glGIG4EjzpDwgvGTK2Q
D/DP0Y3lmDH7qbvuGkMI2PEOqpraUK6utBFaN1SFu5ZtnSHi44GsqRP8y8lnaRNi
1qsxORATUYK+CpxTPW0/YMCDse/fXHGoMAV7yN4Ml4ufhYL/08XR95rEc/doFZyc
QcERscJUhv5lMegiv+y+aCmRqnvkHWvWonxhE6yCzh54KnfpJeUNI3A2zsZMTw0W
/HUt0DEu2qi9OkoDOG2YCji4yfGjMLsHG1oLTvSZxDmDUOc7C4k12XV25RswW8if
EpckvCxfI+4/JWuK53ofikg5s172SFvDZTLpgMM1M94R/36fp86pX6phZ+CV2Q4H
vARuHnLEFIgs9J5p33EDhRG5pH4xToEzme7wAaJuSpXv24LdsrMp4ewVm17tJ4Ki
koosRochNUaH85RqSs7H1gi5GqWlONIZCj4hG91IvDYDoHbQNzTFWknx85Yge4hG
K8tKn5JpKJg9kKsQQuQbHXO9ziJDta1lmrhykCv8dYENNncEwpK3vwrZaOEmweqQ
w5GZyH7U/gXwhUaSNPeTefo6jZH6185HouIBfPj+BQ0ZKgzSnYN9yEgYxcpWHnaw
4jM6jsv4tpohTfiGOXlbQU5Poz23azF0Q7Jl8Cm7KSgit41OMzY=
=5nXl
-----END PGP SIGNATURE-----

--llIrKcgUOe3dCx0c--


--===============0574674649706860818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0574674649706860818==--

