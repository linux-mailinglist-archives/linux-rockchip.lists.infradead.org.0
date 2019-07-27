Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CD577A4B
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Jul 2019 17:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSBfzRR89tjaWRT1xM4Sici6ehEepAeQBeWaTlHnvAI=; b=p2fvosdJD29egp
	zAOPtQ5wHMr/NkNLca6iiB8DzaLTwGD3iPRlmbxYE80STa+p5tBP1sEWKSsHVjAwD4Wj4p024hLXT
	lzbbMf10sZbFqjFq0zaXCDAkahszOrn7tjhLs+UKkUktICvWEGLRJs/ppZpYc/q+jq33jqGPBgSav
	1ygT7GdaB5/280USMdAlY09vg2xkmwZhZPND8Cd0og8miMYwIchXhURt1tu/SO2qZPLFki85rePOT
	UN3U4nqfqxXKB95gIAHz5D5kX8aIszanp1mdCzDBCwsCGcE68ayXp5CijrDkxivY6VBR6s582sm7f
	Sd0b5mdKb+zKnJBhE0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOhu-0000An-4o; Sat, 27 Jul 2019 15:34:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOhc-0008Qw-5X; Sat, 27 Jul 2019 15:33:45 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hrOhX-0002VP-9k; Sat, 27 Jul 2019 17:33:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Add missing unit address to
 memory node on rk3288-veyron
Date: Sat, 27 Jul 2019 17:33:38 +0200
Message-ID: <86910491.m50tbimVMv@phil>
In-Reply-To: <20190727142736.23188-2-krzk@kernel.org>
References: <20190727142736.23188-1-krzk@kernel.org>
 <20190727142736.23188-2-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_083344_354964_47E5F8C0 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Krzysztof,

Am Samstag, 27. Juli 2019, 16:27:36 CEST schrieb Krzysztof Kozlowski:
> Fix DTC warning:
> 
>     arch/arm/boot/dts/rk3288-veyron.dtsi:21.9-24.4:
>     Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name

please see the comment directly above the memory node on why that needs
to stay that way. So no, we'll keep the veyron memory node as is.


Heiko

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 8fc8eac699bf..02243ff46a65 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -18,7 +18,7 @@
>  	 * The default coreboot on veyron devices ignores memory@0 nodes
>  	 * and would instead create another memory node.
>  	 */
> -	memory {
> +	memory@0 {
>  		device_type = "memory";
>  		reg = <0x0 0x0 0x0 0x80000000>;
>  	};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
