Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A16C11E9A4
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 19:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ThwSdXI0w61ETn0B8oeQJxzU+m0nadA2s5xsYpuvv0=; b=b6a6e5WpYuvfBn
	CwWWYZG+EkHbnYiO233oVHKLfld84ZM+WjSLdPgrl8ngP9XWl9uRBWBxHmNhFBQkotl3KxgldvD6w
	Lswv3sQ2DbkluqxryoYeXH564sw6FSuy4FUkoy+jKFaEcEXZ74+fmZgPGetOOtXTONIWyRCNi57Fz
	8AqwsW7N+nmaQj8MUeg6amC4w4UhVGpgzPfP+0ybZwOOiccYA6d4wC+HVx57XosXdqqSHOoSlEgjJ
	HAkyvIt9gbVDZMUN7ngDe6POsqHhPQvG4QAPTKp/IifetvtveSjGhHZV5B/VLkgf2HvdlwRCr40b/
	3NQrIhkpA4pyhzy6gsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpGQ-0003G3-22; Fri, 13 Dec 2019 18:02:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpGM-0003F9-2Y; Fri, 13 Dec 2019 18:02:03 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ifpGD-00034y-7z; Fri, 13 Dec 2019 19:01:53 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Fix the PX30 DSI PHY compatible in
 the example
Date: Fri, 13 Dec 2019 19:01:52 +0100
Message-ID: <5367650.jE9fiJsk8z@diego>
In-Reply-To: <20191213180019.25080-1-miquel.raynal@bootlin.com>
References: <20191213180019.25080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_100202_268601_4B2331B1 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 13. Dezember 2019, 19:00:18 CET schrieb Miquel Raynal:
> Use the upstream compatible instead of the BSP one in the example
> section of the DT bindings for this IP.
> 
> Fixes: 3200df7fa1d6 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Thanks for catching that :-)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index 476c56a1dc8c..72aca81e8959 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -58,7 +58,7 @@ additionalProperties: false
>  examples:
>    - |
>      dsi_dphy: phy@ff2e0000 {
> -        compatible = "rockchip,px30-video-phy";
> +        compatible = "rockchip,px30-dsi-dphy";
>          reg = <0x0 0xff2e0000 0x0 0x10000>;
>          clocks = <&pmucru 13>, <&cru 12>;
>          clock-names = "ref", "pclk";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
