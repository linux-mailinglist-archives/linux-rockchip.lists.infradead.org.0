Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B95DF2BA
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 18:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gyI/fbd9RKaGKLjwMpVjqNSAbzwHcxzOCTqm/7teZQ=; b=dtKVXAGSiMr9A/
	ZK73jZ8Hj9hI9ZwI1qOp5RUY/RD5VkvacEaKdXhHlR1mGI/fHT/uvxI+KXwqSVnYE2YYBrmga+Ubj
	trLIN0vHKjTIJVqjDK2dUCujYveEBhNqj2uW4m6+47CiBVMbrKXJu1vWV/mrO9a1rNcBcziW5VXDu
	c4jWXnUK17kE5aUj5247dBPuyb7BQArQpOH124hmupHHdR72FVQvxG8zwoFBKiRxpd+llYX5pQfDi
	UG9aCt1ex0FDjwyhEXVEkrqX5a6VvmSEAb7ZYGflWcvabclKF9psRhj/O2RLN7W6/dbUoyYMrec8+
	s4C9RkTTNrhGQICabCQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaOG-0004Pl-53; Mon, 21 Oct 2019 16:18:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaO1-00044z-SC; Mon, 21 Oct 2019 16:18:27 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iMaNr-0006nu-Mh; Mon, 21 Oct 2019 18:18:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v4 5/7] dt-bindings: sram: Merge Rockchip SRAM bindings
 into generic
Date: Mon, 21 Oct 2019 18:18:14 +0200
Message-ID: <3101747.Dqu2aBfdh7@diego>
In-Reply-To: <20191021161351.20789-5-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
 <20191021161351.20789-5-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091826_059258_B905A3B4 
X-CRM114-Status: GOOD (  17.06  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 21. Oktober 2019, 18:13:49 CEST schrieb Krzysztof Kozlowski:
> The Rockchip SRAM bindings list only compatible so integrate them into
> generic SRAM bindings schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> 
> ---
> 
> Changes since v3:
> 1. New patch
> ---
>  .../bindings/sram/rockchip-smp-sram.txt       | 30 -------------------
>  .../devicetree/bindings/sram/sram.yaml        | 15 ++++++++++
>  2 files changed, 15 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
> 
> diff --git a/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
> deleted file mode 100644
> index 800701ecffca..000000000000
> --- a/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -Rockchip SRAM for smp bringup:
> -------------------------------
> -
> -Rockchip's smp-capable SoCs use the first part of the sram for the bringup
> -of the cores. Once the core gets powered up it executes the code that is
> -residing at the very beginning of the sram.
> -
> -Therefore a reserved section sub-node has to be added to the mmio-sram
> -declaration.
> -
> -Required sub-node properties:
> -- compatible : should be "rockchip,rk3066-smp-sram"
> -
> -The rest of the properties should follow the generic mmio-sram discription
> -found in Documentation/devicetree/bindings/sram/sram.txt
> -
> -Example:
> -
> -	sram: sram@10080000 {
> -		compatible = "mmio-sram";
> -		reg = <0x10080000 0x10000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		ranges;
> -
> -		smp-sram@10080000 {
> -			compatible = "rockchip,rk3066-smp-sram";
> -			reg = <0x10080000 0x50>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> index b92e3e10fbfc..1c2d8b0408c0 100644
> --- a/Documentation/devicetree/bindings/sram/sram.yaml
> +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> @@ -68,6 +68,7 @@ patternProperties:
>            - amlogic,meson8-smp-sram
>            - amlogic,meson8b-smp-sram
>            - renesas,smp-sram
> +          - rockchip,rk3066-smp-sram
>            - samsung,exynos4210-sysram
>            - samsung,exynos4210-sysram-ns
>  
> @@ -201,3 +202,17 @@ examples:
>              reg = <0 0x10>;
>          };
>      };
> +
> +  - |
> +    sram@10080000 {
> +        compatible = "mmio-sram";
> +        reg = <0x10080000 0x10000>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        smp-sram@10080000 {
> +            compatible = "rockchip,rk3066-smp-sram";
> +            reg = <0x10080000 0x50>;
> +        };
> +    };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
