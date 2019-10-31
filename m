Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D378EAFCD
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 13:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TP8Xo9H5P5/J8iHW5vGIeZM9UFnGSHn6alU9a2JZ41s=; b=aoBPK8+cibnYm4
	ebe0JDFh+sKI2e7jPwctmA8c7f2EMXiVc7uLvJZ+JUsrsIaTHBYtDFfMCLKt1/YDWXgu429RMAHvy
	55u2OaAIBCPtQdTE/V4gyaUMV8FUz2cDhwI1r6KE3npb7btNe8sPJ8z45CG2xQoqQqWLsqI52eYYg
	EtVwMb1eCsSC6u8Au84gnC/vsCg6ox/boRbMKQt4elvT69ZK5UQyDe3pKWgVf0Gs4WBfVhQCcINsh
	H8476Ed2RJ1q6AmPquBCUYG1+2HKSV0jFsNPLnC+6JZ/Xvr+euQAG2Pj+yTY4RKwe1klSCbcyIdQL
	9J5GTwHwOLRF3pkm/jAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9G8-0006XK-Gg; Thu, 31 Oct 2019 12:09:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9G5-0006WR-Cl
 for linux-rockchip@lists.infradead.org; Thu, 31 Oct 2019 12:08:58 +0000
Received: from dhcp-159-84-61-180.univ-lyon2.fr ([159.84.61.180]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQ9Fx-00050d-VD; Thu, 31 Oct 2019 13:08:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: add phy description for px30
Date: Thu, 31 Oct 2019 13:08:48 +0100
Message-ID: <1974613.gpRaQal8Ma@phil>
In-Reply-To: <20190917082532.25479-1-heiko@sntech.de>
References: <20190917082532.25479-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_050857_586049_4645D1FC 
X-CRM114-Status: GOOD (  14.33  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kishon,

Am Dienstag, 17. September 2019, 10:25:32 CET schrieb Heiko Stuebner:
> The px30 soc from Rockchip shares the same register description as
> the rk3328, so can re-use its definitions.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

could you pick this up as well please?

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt | 1 +
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c                    | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> index 00639baae74a..541f5298827c 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> @@ -2,6 +2,7 @@ ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
>  
>  Required properties (phy (parent) node):
>   - compatible : should be one of the listed compatibles:
> +	* "rockchip,px30-usb2phy"
>  	* "rockchip,rk3228-usb2phy"
>  	* "rockchip,rk3328-usb2phy"
>  	* "rockchip,rk3366-usb2phy"
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index eae865ff312c..680cc0c8825c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1423,6 +1423,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
>  };
>  
>  static const struct of_device_id rockchip_usb2phy_dt_match[] = {
> +	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
>  	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
>  	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
>  	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
