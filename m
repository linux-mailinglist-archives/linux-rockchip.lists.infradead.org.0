Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02115A7BE
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Jun 2019 01:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6JcS4HIr/oIADm0RS8IA3oQC4UMX4epd7BjQlDEnwvg=; b=qQ0Isg6lA+lSN0bqDkfeAQ245
	cUGuskyYgWNCSPVIr1w+FAtUc7bMyme92BWCie2btLgxBsPka/jYWrZvIMgDhaZ+qhvsziv9iaNuZ
	CguGrFrdnl4/QmzLcTHcPbFh3KzfuBxnPxd+Wep/EneDYGwsW6i0kjN3sqeVIXy+Xw4LA5I5eB+38
	rpiU5e/ep+IFDQK+M90Xfx0RF/gRYUIMAjQmf14I4rYRx/uEi9zYBEvsDvhNtJOIrcy9ug4SKhrxm
	mu3Snl9Ll4490VUw25eE+DByvRONnv2x/HxU2Ozy32dW40bdN9C5KWuwqBRrLGXBJW0ly6VrrDQL1
	rw4rByagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0ay-0005cx-Mc; Fri, 28 Jun 2019 23:47:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0av-0005c0-1R
 for linux-rockchip@lists.infradead.org; Fri, 28 Jun 2019 23:47:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so10423158wml.0
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jun 2019 16:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WpQcKsFD0NKZ7fPE5iTV9T6ToE9rNRS6uT4dH8oCPLc=;
 b=TWvOtAdomHPpfqXEDjnGsUAE3rCGlYqAN8dwbsRG1MOzi5mIpkI8S96tuE/Kpa2n+B
 Jo1O0Xs8KFecgA39TZq8DETewatPBOCRCN3NeiriIwStN5Ndeby3p39OFU4WVMISyxU+
 LNEovz2X/nWrrvbC8zBvcDYzWt0Tfpjup3ksupEMAN6CG92A/piwxTfEzBw7bOGKgqgD
 pP4c1YFtF1XLhmrbm3hfbQWaXuxAG2JfA6rCx2iekseDJ0RyTKZTbEUfMEgouKmJg7cZ
 WvwWbI21l39jAFtFVdXg5Cs8/+zfbca73AR0vrdT+95M4lIGJIz3+ZkJn5/2067p6gMy
 GQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WpQcKsFD0NKZ7fPE5iTV9T6ToE9rNRS6uT4dH8oCPLc=;
 b=ZnDWF4zBfhr8XFmbpN/Fs0i2q2GtXKs7TSu/n48xHXIjmIyRUkrSSgBJC5LmN3Yzx6
 KBdVa0YHMOEN/X6eUe3YX+hPRTwilX2eBNGCS78tPlPic9dMLSjJT1woxA0dX6rES5oe
 mqbCX7PnBUVL1wBEUmZtmKB2yEGTM39DRe1LgY92ASmFioiDIk1aajTJt8BSaA+ErUD0
 mL2YjNnE2XWXoSjr2bFp3QOPSSkXncL7kRAKU/LYJpBw4Ehiqkocn1GmL/ToVyyq7hc3
 DLN5fR2EAsT3p0jo9iUCkwdZKSWMkmU0lfXHATI8YjyilEpddZ5MD0y9xmci11RgWEnA
 4Tew==
X-Gm-Message-State: APjAAAUr7EdWpCp/ISDKatGnPHxLsM4L0olFZ/kJi+K7O87yx5c5ahWf
 iqpn6bSKyXkoVU82iQgKWjg=
X-Google-Smtp-Source: APXvYqw6ZEMnpha5XCDbIvNtiOuep0jp4imvqTJh2Woy7CGxoh5T4N0DDfQGVf/ZJoBoO90+uDIqLg==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr8328858wmj.2.1561765670272;
 Fri, 28 Jun 2019 16:47:50 -0700 (PDT)
Received: from localhost
 (p200300E41F2AB200021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f2a:b200:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id 18sm2622459wmg.43.2019.06.28.16.47.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 16:47:48 -0700 (PDT)
Date: Sat, 29 Jun 2019 01:47:47 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: Add panel-timing subnode to
 simple-panel
Message-ID: <20190628234747.GA1189@mithrandir>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-2-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190401171724.215780-2-dianders@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_164753_109684_767E5A13 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Eric Anholt <eric@anholt.net>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>,
 Enric =?utf-8?B?QmFsbGV0YsOy?= <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 mka@chromium.org
Content-Type: multipart/mixed; boundary="===============6398202315992972216=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6398202315992972216==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 10:17:18AM -0700, Douglas Anderson wrote:
> From: Sean Paul <seanpaul@chromium.org>
>=20
> This patch adds a new subnode to simple-panel allowing us to override
> the typical timing expressed in the panel's display_timing.
>=20
> Changes in v2:
>  - Split out the binding into a new patch (Rob)
>  - display-timings is a new section (Rob)
>  - Use the full display-timings subnode instead of picking the timing
>    out (Rob/Thierry)
> Changes in v3:
>  - Go back to using the timing subnode directly, but rename to
>    panel-timing (Rob)
> Changes in v4:
>  - Simplify desc. for when override should be used (Thierry/Laurent)
>  - Removed Rob H review since it's been a year and wording changed
> Changes in v5:
>  - Removed bit about OS may ignore (Rob/Ezequiel)
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
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>=20
>  .../bindings/display/panel/simple-panel.txt   | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)

Sorry for taking so long to get back to this, sounds good to me:

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Wpx0ACgkQ3SOs138+
s6FkAA//dq1vkl6yNj7/hlMzdjFe9maoEW7fwyt9MG/kUuV2+7K/iB2hj9M9DaKS
36rSIataHUoMbKAZprhPFKpa4Ux0KVuFcld+pU/GfvX1ux+omwfYZioEtkacrlFa
FVpTSbqsQm/A1a6jTK/44si7bTgnG3AiJ7Nz+7+VBEn0Fsf+Hua9GUbwMHCPz1lb
fRuJXIEGj6s9ZnCd/2YevxcrAscypxSeU5kAePyZF2i7bdeta2TR7655vYQkdqOb
nNFz+2R53UC5P4K9ekNZPue3QivyLjyN9M+OCmf+uSkdCK2RLF/lGKDtzcxtbMJF
FK4bsJRqF0icbG7bQucnIIIf5zgUFWuURWyzciqEa0TjnkqIy4Ugdw7iUY6MERlE
fn2u1wJAjWuztuyl9FSOgBs86zFvlnW79FkX7q4Db4BZSU1c7Vld08Cw0/scsuuW
fwJMzZSf/vSshfuJrXRo8wB+YsU7WgY0Y6v7IYx+5r3gvxKAGy02i/rjvPRb+e9c
0kvQKZqBYPxZDv3xkWZHLD4fZo5vkluDnxxTU/6omXTRCsqIAS26XZ8jlXE5fcHk
0hfy2HaCXhG7ckpQusum9uasjhcpQg3QKxul3oqM2iD1XvJIwcBwJq15pMvUm5w3
Qqm5DatatB3t0U+G84KTeIEzFIBNjeLY0kNjTOa0Ke9GRDyGoEU=
=lrYn
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--


--===============6398202315992972216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6398202315992972216==--

