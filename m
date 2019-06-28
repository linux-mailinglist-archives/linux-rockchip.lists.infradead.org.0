Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843335A7C4
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Jun 2019 01:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=36hM3oePGVtYagXFNgU7ja5j7eRbEf1PJg7gPkD2Ykw=; b=A/Y0wp2g7CgWbuuag7BqDukpt
	aWCc/BdHByoruOm+2RowtG1mRzXDGiKa88Jz30fqBx1Ckmg5KxWT9DfVrSdFIn/kWx+S3XgbpUjLG
	a32Eeeu/ElpxZuiEyvJmSLhUCriL5O0ILYZAiGgBzOClU57fGQh0iPheCQ6G/ikwDKOt89uviiQh2
	s7D/6fA6knH5wN7dHmRGhJZQMUrkGxVDoFwNO9XLRZtiw0WcqREWBN34ba01lQA4esLQ+sy4ghxCx
	RAOSLGlcKo3izo0xRTLOLg2V/sCFz17TJbHtjcgFwprCoXzFR8QUuEckeH8DUOrGrtzrB0kHMD4lW
	FUFVJglgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0ct-0005qR-Na; Fri, 28 Jun 2019 23:49:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0cq-0005pr-B5
 for linux-rockchip@lists.infradead.org; Fri, 28 Jun 2019 23:49:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id k11so7874053wrl.1
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 16:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q7IEImnfjv+A3lRFXyTXResy2KVoDPFK5pOWIOXw67k=;
 b=vG3d8acLaTa36M8Qk+1Ig6NnkHOM4RXcyJFhhNYvfAeittbGLBIk42dMPmgjNUsdn5
 FuYVQa5cR7tHr2HSfddbCSHiQE09EEBRNwSaFvQfSxIOOjgnN2uv5TAD5a7xmftR1T5T
 pwq8FCkeB+h/d/mMeVatdy/dOi9jzYpHc8DizVguo7L2LBu1Frni/N7D6Ji4+QESaydA
 6CkAd7WRlSIFr1DbePAevzpDomH5OxStI3Qj/Gndq12vMLl42ZMaSDAnZbNnui7niT0N
 L8iltdGDiezmYdLexEiKRS5zIuJc3XejBOaAIAXAiVoL2uKNPXt8Eu2bcyM+3tG1iuQq
 qUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q7IEImnfjv+A3lRFXyTXResy2KVoDPFK5pOWIOXw67k=;
 b=Pt/Ws+NFdrvys/wyA9cZGNmOYWgHzvnqN+8PuZ/z6wiML9E5GFH5hvv6jzk2YZFqMn
 ryEM2QcN46iJm0dpT4A00A4nZJuF6nso0C+mdAk0Xu7nQgnWPXvzI42RXBNbxTMzRAHS
 s4fsGMO3Tb/MkJ8wLORHygq/CszLKIS9aWaxXoMRW6FXbS+OkLIXPBbZYabxp38sQYx2
 xBMb7quBFbUin6cm6LsJT6xZLDL80tfY6eI2VaXhN7RDT9WI27RGapU6MCDwbMi1lk8/
 5dTlMDCI3Br+biVFyCEhSB6Znpmzpn8GCgX80029yYwhLAV8uclDylbQnFWbYwBlJRos
 2xtg==
X-Gm-Message-State: APjAAAVQrGoTU4mvEpl8DvcjmAqn9Hw0nhRldKF6xcFfRFFShx82Z7tb
 2ez1lD2c8r3G0Z4SOPS1hOU=
X-Google-Smtp-Source: APXvYqxqv88pnNrGXl9e9tW3mOegaQe/CRnhjJlMga0gyKaLHiB23YZKxAYNn9ymY4Gf8UHD1YMp7A==
X-Received: by 2002:adf:fecd:: with SMTP id q13mr9877353wrs.97.1561765788237; 
 Fri, 28 Jun 2019 16:49:48 -0700 (PDT)
Received: from localhost
 (p200300E41F2AB200021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f2a:b200:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id s188sm3658105wmf.40.2019.06.28.16.49.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 16:49:47 -0700 (PDT)
Date: Sat, 29 Jun 2019 01:49:46 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override
 typical timing
Message-ID: <20190628234946.GB1189@mithrandir>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190401171724.215780-3-dianders@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_164952_387722_56146E05 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Eric Anholt <eric@anholt.net>, David Airlie <airlied@linux.ie>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Enric =?utf-8?B?QmFsbGV0YsOy?= <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 mka@chromium.org
Content-Type: multipart/mixed; boundary="===============0250314184506141147=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0250314184506141147==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NDin8bjvE/0mNLFQ"
Content-Disposition: inline


--NDin8bjvE/0mNLFQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 10:17:19AM -0700, Douglas Anderson wrote:
> From: Sean Paul <seanpaul@chromium.org>
>=20
> This patch adds the ability to override the typical display timing for a
> given panel. This is useful for devices which have timing constraints
> that do not apply across the entire display driver (eg: to avoid
> crosstalk between panel and digitizer on certain laptops). The rules are
> as follows:
>=20
> - panel must not specify fixed mode (since the override mode will
>   either be the same as the fixed mode, or we'll be unable to
>   check the bounds of the overried)
> - panel must specify at least one display_timing range which will be
>   used to ensure the override mode fits within its bounds
>=20
> Changes in v2:
>  - Parse the full display-timings node (using the native-mode) (Rob)
> Changes in v3:
>  - No longer parse display-timings subnode, use panel-timing (Rob)
> Changes in v4:
>  - Don't add mode from timing if override was specified (Thierry)
>  - Add warning if timing and fixed mode was specified (Thierry)
>  - Don't add fixed mode if timing was specified (Thierry)
>  - Refactor/rename a bit to avoid extra indentation from "if" tests
>  - i should be unsigned (Thierry)
>  - Add annoying WARN_ONs for some cases (Thierry)
>  - Simplify 'No display_timing found' handling (Thierry)
>  - Rename to panel_simple_parse_override_mode() (Thierry)
> Changes in v5:
>  - Added Heiko's Tested-by
>=20
> Cc: Doug Anderson <dianders@chromium.org>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: St=C3=A9phane Marchesin <marcheu@chromium.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> ---
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 109 +++++++++++++++++++++++++--
>  1 file changed, 104 insertions(+), 5 deletions(-)

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--NDin8bjvE/0mNLFQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Wp5oACgkQ3SOs138+
s6HkOA//aJRj++gDyHqyv+35Dnz1qJOb04MLQT25wHlW53LhiXm6APFDfKgu6GY1
jEhdqsfBT7y0c+yM8SQRwJx44H4QN8YbkqpH0jFsvLli7S8oalKWtu6ti1nRv1XB
oW2oTzn340rTKD1zeqQL1A26GF7G3COyKIOBhW+yHNAGA4gqi3XMi3RwKP0tLYWa
1zpI7ZMQw8kwprzPZZbsEnfRYj1R5YUfBO1252HaixMStJbJGj5vfhKFE2H7wTJv
zCz0JlxX6kepkO7aHmrwOWHYgnvrcCaphJy8YBWMhsBRN7UdOlLjjcBtvqGidKbc
5bBZucu8NOKSBVKP9V7HlWgQjoCI4uPXSJ+Z9G+NemzcqFtLOYAgGezKiTVjnw1T
AvEbEQ2ed9MPm2Yt93ozVgR0fvTqeJu0t5ybGaVhUXqevtek7HTCDbCiY+oFLBGs
ubaXXPCJaYls415YuHWxeIOBuyuyAkSihPy9JB2SZ5jZbXgRiXFrppGI+/zcTklX
InfVw9QwQMMHay+FhcnET0HkWiD47kvEnVBmaeHoMEnYKrE3p1IVZMXlzQsLqefL
ADaFGSl0UIS5kyS6yB/b82C2XkyuyFqG40ohDu3qpa2ShzY7iovd1rJBRFmI22/3
05j4j/3dS0eGTqoVVM1zpmdAaIvHaw7GbVjIEsd0BtG+51TIhW4=
=P4R1
-----END PGP SIGNATURE-----

--NDin8bjvE/0mNLFQ--


--===============0250314184506141147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0250314184506141147==--

