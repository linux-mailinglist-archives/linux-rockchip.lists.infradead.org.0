Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFAD19C7CE
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 19:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBYSPG/gsR/8K2fhUeJrZfZmrPGXroLF3xAooiHj1rU=; b=pzadYPwKFmIvug
	o604KnefqrnYwDzxLaOcvCXxt1G9B3tQMETycmbt4JzBKU+XjUdA13TGGHsPvAMFrNgK0ztoSXjsB
	u1H6PGgEzOIsfwswqxPYmDK4xKaY1jjCrOmxPs8TzCz/VyQpCFalZg8+UKiR9yyLG5rWg36gLkFcv
	tEu4kaucybCkvQuEOpfMhlsnkfifS4JxBuxO1ikV9faTsOXzTJiZaZ3AS28XZAxXT6K5JtT0BxNcV
	qDYOE2Vzswm0Q1wBHqMJxa34X5K+/ZvTfEqYoY2wkEBoM06eVvJZ2gozggyNfzyvijGf/wl8TsRlc
	h2fRHzx0onG+M2kjcnWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK3W0-0008IG-0C; Thu, 02 Apr 2020 17:20:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK3Vx-0008Hl-3J
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 17:20:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id h15so5162682wrx.9
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 10:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UNJ1uaTiNqIRTE+G4swZEf2hRjorhqOonJ08sUIRMO8=;
 b=jEtA31kCYdON/FahHCcg+UBAPDTy+pA+0phOgPakqyDAcWizWXyX2voqe6wOOShhz+
 lad+2Y+Y76Nug9dGKGO4MM6Q2ZQKJ9czz0E/xBDjQE9N7mG0M95Try7/j0B2rbQceGCY
 4QG77bLGCkcn1eVcULRpr8BblLziRJEpSpsEADs3Ej1K29FH53U02Nrmnniz/6ugULeu
 awM1dc0I4KYlvz2i210q6CiLt8W/7umpXeK1yi+U7B2WZJ8JF6mYeWRqD4Ftfi6PtGBw
 JrXmtfnWOWSF88o9sP1cP/5Vxh0+0uzDr2Ku8qDONJcFTLIcEompanRTmp0Engu85CIO
 PG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UNJ1uaTiNqIRTE+G4swZEf2hRjorhqOonJ08sUIRMO8=;
 b=r1WPKu3N4OiR7lH9TTxb/48v2H5tF0fJ2mpPwjZZJQlRkziAFWUlPTBnliL97D03Ce
 9g/OXFT3P8e51qS68neYL9NsspZ9eN4DXPxhEsAbTVUT/z42N/s7OG+dQeS9Eu94HcTp
 UxWT0XUizaqvXDvIrronM4rXdrB+o5RR4QRmaHgTQIIvh0akWZ3jckY+bpHq437EqoAD
 HHiRbERGO4JQc1PmxucW06iqjOQ2Mo7XgZW6EP61dbgBljC8ranqU/j6nQhqYNYsr3kh
 3eg385f7O0+aJ6g9pmAQsPKc7hk074+C6jtva0PLQaH0ZSEFFkVjfEUIG1p3+uwVoVaX
 /pCw==
X-Gm-Message-State: AGi0PuZxWO1RgEUXDbWCfVlpTVz2QiDKXqJkMKWZRCT2jd7PwzULI8dL
 ITjvwRrSaPZVTMWB9oYWoRA=
X-Google-Smtp-Source: APiQypKmwTbIEdvuK9WraXHHv2M4yWUIWm+FRJNIs5z6cWkO9BgGTzdDqqMxZD0Qzr89n/zfC45I+A==
X-Received: by 2002:adf:9168:: with SMTP id j95mr4319844wrj.145.1585848023290; 
 Thu, 02 Apr 2020 10:20:23 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b199sm8670886wme.23.2020.04.02.10.20.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 10:20:22 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-5-helen.koike@collabora.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
Date: Thu, 2 Apr 2020 19:20:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-5-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_102025_139583_CB02662F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index fc0295d2a65a1..815099a0cd0dd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>  		status = "disabled";
>  	};
>  
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "clk_isp",
> +			      "aclk_isp", "aclk_isp_wrap",
> +			      "hclk_isp", "hclk_isp_wrap";

> +		power-domains = <&power RK3399_PD_ISP0>;
> +		iommus = <&isp0_mmu>;
> +		phys = <&mipi_dphy_rx0>;
> +		phy-names = "dphy";

Maybe a little sort? But keep rest as it is. Also in example.

		iommus = <&isp0_mmu>;
		phys = <&mipi_dphy_rx0>;
		phy-names = "dphy";
		power-domains = <&power RK3399_PD_ISP0>;

> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;

Move reg above #address-cells. Change that in example as well.

				reg = <0>;
				#address-cells = <1>;
				#size-cells = <0>;

> +			};
> +		};
> +	};
> +
>  	isp0_mmu: iommu@ff914000 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
> -- 
> 2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
