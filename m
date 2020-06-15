Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C631F9530
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jun 2020 13:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kpjo/C8WM0kPkUtYp/2M9GPEURnAcFkViVujecJI+Xw=; b=JuFhCpX5tc64jqtXRnJy2Di79
	6m4y6tIjloFUopEcTRaxrAJLMUG8UdR2sfSaXjv7tflD3abYhap23xjtt7R0ieN/jat7iQiJEpuy5
	2h+8Rlrt7bmbR6yT4Xj73WKyMUeB9ci93KF6xWTvGEfF4eUFD7Sm7024ouch7JHR08SVm7ENF3WIe
	krdTSrWb1a1dY3ndZJnTjrFkDRCO8SjLIkXwdJTlehaOIvJCtZp0HtUIgumQW1D/eX/WlcFMaWpXD
	o6ocurGhr5/dx7LsUDT6NKAYA1dXOvQmEFrmGSbrCM5ci0g7BGUFNllwIJsp9K6MCWaS5Gg47iCAI
	i3jZn6Jrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkn9S-0003nV-Bn; Mon, 15 Jun 2020 11:19:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkn9F-0003SE-Pk; Mon, 15 Jun 2020 11:19:30 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 058D020679;
 Mon, 15 Jun 2020 11:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592219969;
 bh=09YCLJTSpwXYksfyCYSJl2k+cwsJ7qFx3Cq3UzjbGyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y9XD9p0MeL4taa2ELATHmZjnxuB2Qwom8k1ILpzM+ZKmgHncRSrZRkWHzXJoKUZYG
 RVzFdcjhfF4+7tviRu0Z7J7pql7QVnbcy5lmyaFqXh1wKUMpINf6iGMDn+vhj+ObwV
 iv9FZnGvAGdOWuUFB1fqKEZG7JlfMHbBDSJzRm08=
Date: Mon, 15 Jun 2020 12:19:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 13/29] dt: fix broken links due to txt->yaml renames
Message-ID: <20200615111927.GC4447@sirena.org.uk>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_041929_855629_A4AD73B8 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Jakub Kicinski <kuba@kernel.org>, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, netdev@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-bluetooth@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6923886286972110008=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6923886286972110008==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WfZ7S8PLGjBY9Voh"
Content-Disposition: inline


--WfZ7S8PLGjBY9Voh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 08:46:52AM +0200, Mauro Carvalho Chehab wrote:
> There are some new broken doc links due to yaml renames
> at DT. Developers should really run:

I also previously acked this one in 20200504100822.GA5491@sirena.org.uk.
Has anything changed here to cause the ack to be dropped?

--WfZ7S8PLGjBY9Voh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nWT4ACgkQJNaLcl1U
h9BSJQf9FR8Vke3pe9Gs5pnWmw6vzxds7jfidCUpXIKPoosgfYfzYQrN1G9m2fSm
pLlYWjhQBEAU+w9oq7WktfEZ8r736noKsRW4hd5a+Zf2koBr0M9O7ull4h7WlHvr
asCHlWuqJvpVevxf1ag9x0dAA9NRMqh8xxd8ah/ENWTbXmzZPir0Pa6Q+9lzG2Ld
aqgHcA+WbonAUk4BqLRSasRy6AkO3zUbYWqVecAV8xRPcVjiWd/PkhEQ/BV67wG9
Kh/sFCs6+PalKQu5PDZP70apmaRPYHwPZmkNu5Y8rAUsjsQradS2JB1zFlWDSxZk
0qIWVDJdY+FIcxlqt8Rda5akpjL2SQ==
=51fv
-----END PGP SIGNATURE-----

--WfZ7S8PLGjBY9Voh--


--===============6923886286972110008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6923886286972110008==--

