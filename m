Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5391202E9
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 11:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xCRRnJX9EOrt24qNuHBeXRI+y9FtdyvxUbYNy1Zv63U=; b=RnsVK77gCZE2mQD7z2VAddHnM
	pZ+TlWIQvHFs65OQ2hwtQpESqIsv7BXH5gDRF1n6WldSPr4L77XEMt0lSCzWf9UJ7WsdkXePV0Otr
	An7acai2v9TPlTX3JuHPKO9/LiSCi2gMedOx296RrVNt3zBYhj9Bgx/0y97teuuaYA1YjGcMy56AB
	wkFhHCrMbhrWuieLCqNzwuRCoysuVLI/IDWvrmj/ECGfkU9m6sKjzl//pJZewtHYbkcNGvJruBn9z
	vzMJB/AeLOSpPW/NYGKRq6jfS3aBX56HzOZMlUgQs2iorRsxytq6lCigoYQmmsNBZnUd6PV0Kc8yq
	Krbzd4SkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignvw-0006aX-H0; Mon, 16 Dec 2019 10:49:00 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignvK-000643-Nw; Mon, 16 Dec 2019 10:48:24 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8277E712E;
 Mon, 16 Dec 2019 05:48:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 16 Dec 2019 05:48:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=b2sdt1L+RtAvCJWD+Ejy+ZFvgQM
 jCXlABUGffB8yAfA=; b=hpoeKy4M0e/xSvJLEpsfWD6wOgXYRtamc7oXmnJ0piJ
 I3b0fZd7v59vpwxad7wQ7IxLTz9XYIZcSri9aKECh0m9CZAqp7RJy/wpf+TKCk0H
 5drdwgmqEjXT2Q+noD1x+8Jeh0cexJphIVqVMMezk5wyNUeVKsY512uvA2jyko62
 joC4nuay5b6kHnbeRsHJctp83oWLygRop0qtKLLF4l0x4L5U29IPwBc1qC6a147H
 iyKQZeFWzr9T1mpkPO5GSA02X+Tb7bU/Eh/l1s+CXUMrr18ApOQ+vwKrZWnS7o5z
 08+V6irSPmYEc1zbk10CNKSW89FJVspqMaV3OK1+0QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=b2sdt1
 L+RtAvCJWD+Ejy+ZFvgQMjCXlABUGffB8yAfA=; b=wDSmux4G5XsrldAYsui0YF
 pYc8Svcsbxs4ZWyysfS0XnYYgzgFlGK65W2CxBUJlCWNyTC5mWVMT2cvaAfXSHfS
 uquhig/HLIC5SSZgSyJBr7pRjkYsl0aioO4aAme/OFok3dRbGp+dYN3Egryn3BjN
 ZQKtlfGjZRyzGqWJsuYq79ril5x5A7tBykog+2quKzQOsD601klvnizLN6sSJe21
 ORNH77lHrfe3ksC54G4wLc/YrjRHzwzNEC0MhJHCxcStVH5pKSPVYX6Vcg0Y8+K6
 O4HW2lD5mxpboe7fh8+ay7aHynmv3gNcxX2SFDwT0RtxurAfT9HyrPMpoL9KjUtw
 ==
X-ME-Sender: <xms:82D3XYYias_kvtl7_R0ILc0k8BsgyyYH-tzt2rV1jsQwfOdwtKr3XA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddthedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:82D3XWofO-dhm5zVt2cImA2pQHn1JHEAMECKaBperVUf4LUGme1KBQ>
 <xmx:82D3XcYf6FwSIxZiZteTo-Eyu0wayV82DR75lHASu3ZTWx5dJdEZjQ>
 <xmx:82D3XeTmSoQpebhQDlaOCf4ZnlRApl7Hq_DyQFTnf4GRE6ikH9CZZQ>
 <xmx:9GD3XYvCRlj-vrtszBqs79rDoXPTEjGttA70nTEU0BduQ4J5v2mBdw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id ACF288005A;
 Mon, 16 Dec 2019 05:48:18 -0500 (EST)
Date: Mon, 16 Dec 2019 11:48:16 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 02/12] dt-bindings: display: rockchip-lvds: Document PX30
 PHY
Message-ID: <20191216104816.zttjrgck3rdr54ok@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20191213181051.25983-3-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_024823_149766_4E3D7E37 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5591363989755709945=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5591363989755709945==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="inqcuz5g7xh4n5en"
Content-Disposition: inline


--inqcuz5g7xh4n5en
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 13, 2019 at 07:10:41PM +0100, Miquel Raynal wrote:
> PX30 SoCs use a single PHY shared by two display pipelines: MIPI DSI
> and LVDS. In the case of the LVDS IP, document the possibility to fill
> a PHY handle.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-lvds.txt     | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> index aa5663a6fd42..ec7b4341cfd2 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> @@ -19,6 +19,9 @@ Required properties:
>  - rockchip,grf: phandle to the general register files syscon
>  - rockchip,output: "rgb", "lvds" or "duallvds", This describes the output interface
>
> +- phys: LVDS/DSI DPHY (px30 only)
> +- phy-names: name of the PHY, should be "dphy"

Should or must?

Also, phy-names is optional only for px30

Maxime

--inqcuz5g7xh4n5en
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdg8AAKCRDj7w1vZxhR
xel0AP9MqWCTdMxRsTUEkW3yY3dbF1oX5qWpR8bMcDtuj70uRwEA57+6MTtKXQt5
k9opFOaTXgz5rq8ptFWDC/kAy5Z8/Ao=
=SRme
-----END PGP SIGNATURE-----

--inqcuz5g7xh4n5en--


--===============5591363989755709945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5591363989755709945==--

