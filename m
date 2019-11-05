Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84DDEF6B7
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 Nov 2019 08:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIr2TbOnSU6L41nR/tSwZJf2cUJqnwuWfFHrL+Z/7co=; b=M73rpImEcXKONt
	It9c3nVu7J8oVbpX9RfGOlP0xu2VkhzEkKZmh6v1IZyj/VVsS5umQjP0CWQUQkyGH+MhZErscLaVJ
	GEkr/L/GOHBnpuF6nioe8+gnDuVIw2FqcvQ4u5pMqlj7RY8tOf0qEgQo6+JARvwfhWryXk+hUDdLP
	nWssgQ78O6uXcQz6rneiftZP73JDGj6Vzf82mt2RkHDMVJqLFeO7/0DefeaOnTm0OmXvyTKRp5VsE
	uVeITUq5uejxsReaePpKCPZ086d4WhjyHoKs4JM/BM+B14B8KpBDFJBxzA+vtVli3KzjZexTMoWIP
	XQUPfNXDiTIKaJlfLj8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtkP-0001SS-60; Tue, 05 Nov 2019 07:59:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtkC-0001KG-C9; Tue, 05 Nov 2019 07:59:19 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iRtjt-0006Im-4m; Tue, 05 Nov 2019 08:58:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: rockchip-thermal: Support the RK3308
 SoC compatible
Date: Tue, 05 Nov 2019 08:58:56 +0100
Message-ID: <2284763.Jna2nk2sLt@diego>
In-Reply-To: <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
 <1572923846-23310-2-git-send-email-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_235916_564099_40F6361D 
X-CRM114-Status: GOOD (  12.27  )
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
 amit.kucheria@verdurent.com, huangtao@rock-chips.com, linux-pm@vger.kernel.org,
 xxx@rock-chips.com, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 xf@rock-chips.com, edubezval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, andy.yan@rock-chips.com, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 5. November 2019, 04:17:24 CET schrieb Elaine Zhang:
> Add a new compatible for thermal founding on RK3308 SoCs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> index c6aac9bcacf1..3a0a9556680e 100644
> --- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> +++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> @@ -6,6 +6,7 @@ Required properties:
>     "rockchip,rv1108-tsadc": found on RV1108 SoCs
>     "rockchip,rk3228-tsadc": found on RK3228 SoCs
>     "rockchip,rk3288-tsadc": found on RK3288 SoCs
> +   "rockchip,rk3308-tsadc": found on RK3308 SoCs
>     "rockchip,rk3328-tsadc": found on RK3328 SoCs
>     "rockchip,rk3368-tsadc": found on RK3368 SoCs
>     "rockchip,rk3399-tsadc": found on RK3399 SoCs
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
