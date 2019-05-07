Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AAC162B3
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 13:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whjx+/sQjx07HIeYAc8VBWwNF+A5pm81+Vno6MQILfc=; b=OdIwkh6JvEy57v
	cWkW+qoobO52NYfdTb7XFPd7Nr4s0+FxDEui9u4gXCqEAaUkfnhItOhzevhqtnxzjckn6PmrZKrYO
	ultVmfNelvq0o3bQrN3e371TuS5/lrXvefanCvTLt0e9J5opmsmWjceZZMyKHLkIioUP0y77kAqz0
	jGPB47jvDFnWxY5K0HNGPiUpD7mr2V0u7PhpbRCzYXj+ryTAXKZV+sKnoicUUBAUg1NZiOa1IEZNd
	jQK4DeYa9E2KLKuCOdkCmG90dHtLo1fTDFINn/0J0Ylf43bfMbkjB1HC7Jh5dQHG9oHE4va6xP/Wb
	BwJN5vec/xrvW99tolXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyAo-0006Db-IL; Tue, 07 May 2019 11:22:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyAf-00067b-Vt; Tue, 07 May 2019 11:22:07 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNyAe-00085l-3B; Tue, 07 May 2019 13:22:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Tue, 07 May 2019 13:22:03 +0200
Message-ID: <2127870.SxaTtWf5LP@phil>
In-Reply-To: <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_042206_170665_9AA032E4 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 6. Mai 2019, 14:04:58 CEST schrieb Manivannan Sadhasivam:
> Enable SPI1 exposed on both Low and High speed expansion connectors
> of Ficus. SPI1 has 3 different chip selects wired as below:
> 
> CS0 - Serial Flash (unpopulated)
> CS1 - Low Speed expansion
> CS2 - High Speed expansion
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> index 027d428917b8..9baa378fc770 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> @@ -146,6 +146,12 @@
>  	};
>  };
>  
> +&spi1 {
> +	/* On both Low speed and High speed expansion */
> +	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;

cs0 should still be part of the cs-gpios though (gpio1 RK_PB2).
The flash is part of the schematics, so there might be board with
it pre-populated or people might put a flash chip on it.

Also please use the constants for pin specification (RK_PA6, RK_PA7 above)


Heiko

> +	status = "okay";
> +};
> +
>  &usbdrd_dwc3_0 {
>  	dr_mode = "host";
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
