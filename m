Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2D71A2D46
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Apr 2020 03:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JcONT3o2HT/6nCZ7BPutIkj955Djm2VTLhXqOZY1lco=; b=nWVipXrrDeh80OeFy8xb+3UR1g
	fjnzP9NU6HwsOwmp8edINJog4YtmuzWb/9J22QeGxQSbEzx0Om7NwfxnwDc+FugzW5cIdjPMbFq5W
	dSNZll3umgL/nj+wQfhXrh7Jg0P0toK/epLFqNCxJATrXLYM65neGGRQS+UzU6rVcJ8YOwVP4bbY1
	w4vTXT6lOrvdr8bM5QGSIUkVO8M3t4Td6UgdLinX9dYeSC+o3mUF1z0sAIewrwKQJRt2HiBCV/iIh
	9LTWykZ9ePp3KP9i5x3kecndbK+Po98XWFaFB2A2GPGNi9l0UIUsWMD8fbBKq0+378wKAcf1j8CiV
	A/vZHoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMLqa-00006I-HB; Thu, 09 Apr 2020 01:19:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMLqX-00005n-UG
 for linux-rockchip@lists.infradead.org; Thu, 09 Apr 2020 01:19:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id h9so9891293wrc.8
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Apr 2020 18:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=E2/NBcIc+EOOv5CPXsarlEbniqcGGi3XbnMq/s2bRBA=;
 b=ZBwfUKd8Vsbe+JNFT3JuKjRP+irlUu6DZOLBGzPsvElz6xYBEKd1efbnBA1CGX3Qj4
 rgumpPX3ojbLH78otplwhR990Q7aaOYDSprDQzyHHH/7SSLu9Y2DSfuRSigJLQRjo2Cd
 1I9QVUdqJHBDcKrHQUQopV+I2BDP4LBdHT4AXXKVNtMJ/Ko+hgdBtzxMvmFZwUvSgR/M
 SjbyyZpygbGnbDBFSafpkpCX+10q8m5ZFKJogPx7KnaGOHkh02PiVqfxFAuOQS4PqqXP
 GUErFYADSFxEY83DIqtjZtLSc7WInisbpmEq5Yo/ulcCJjs1PEhNXuMJeNHW9S5qEOLA
 XTbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E2/NBcIc+EOOv5CPXsarlEbniqcGGi3XbnMq/s2bRBA=;
 b=MN4pe9NVJ3o2ofYmtyLqBeZ1XvJ4fFzUg9mdHcIR8TtpE99XV1OoU7KB7epTgc396E
 WN/lrfBTi8M0R+d8r3AkvxPLfXTKdLB6ZKuBC7uTQDEQxWeP4Ii7XQeES19BaDLhNQPI
 xYZnpC27J2UGB5q60a9zUB7bN35+tFv0swQ4/OnEFolBv5b0bDrAjOuOfLLJ7Qp100zb
 Wn5Wk8yWXUxcKxv34CGIjW7i5bLpYPWU0kw7ESwVCOCE7Xe3HE+hdN1wE+yCiiCC4Poa
 iNii3Rsr9Q3MfSoAI92Tag57p+kI4Frfp7IZnk+Fq03U1VC/RgQFIXwqkVfMVwX9DgFK
 yVrA==
X-Gm-Message-State: AGi0PuZ/Sw6cf1Rg6lQuDWBc03Xasx/laTOTrDhdJA2CdoYlw6nD0EbO
 44rmZ6G4rCloRSLm9Tmd3YY=
X-Google-Smtp-Source: APiQypJyeBKgmAxjXeK+fYWfh30Exoa3l6jR+QiQqbiMR//bgSGIRIu5PfUM3KxjZr2JmvLE1+fVVw==
X-Received: by 2002:adf:e811:: with SMTP id o17mr2770751wrm.390.1586395147857; 
 Wed, 08 Apr 2020 18:19:07 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y22sm1897570wma.0.2020.04.08.18.19.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2020 18:19:07 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: add rk3288 ISP and DPHY
To: Karthik Poduval <karthik.poduval@gmail.com>, linux-media@vger.kernel.org, 
 heiko@sntech.de, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, ezequiel@collabora.com
References: <karthik.poduval@gmail.com>
 <20200406073017.19462-1-karthik.poduval@gmail.com>
 <20200406073017.19462-4-karthik.poduval@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <2fc95890-f938-30a5-a163-bf3fa2e223df@gmail.com>
Date: Thu, 9 Apr 2020 03:19:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200406073017.19462-4-karthik.poduval@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_181909_999209_FF65E2F4 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Karthik and others,

Include all mail lists found with:
./scripts/get_maintainer.pl --nogit-fallback --nogit

Helen is moving isp1 bindings out of staging.
Clocks and other things don't fit with her patch serie.
Maybe fix this while still in staging?

arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'phys' is a required property
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'phy-names' is a required property
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'ports' is a required property

arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'assigned-clock-rates', 'assigned-clocks'
do not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
clock-names:2: 'aclk_isp_wrap' was expected
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
clock-names:3: 'hclk_isp' was expected
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
clock-names:4: 'hclk_isp_wrap' was expected

arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: 'power-domains'
is a required property

arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clock-names:1:
'dphy-cfg' was expected
arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clock-names:
['dphy-ref', 'pclk'] is too short
arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clocks: [[7,
126], [7, 358]] is too short


Inside yaml:
Use enum and sort.
>>  properties:
>>    compatible:

>>      const: rockchip,rk3399-cif-isp
>> +    const: rockchip,rk3288-rkisp1

    enum:
      - rockchip,rk3288-rkisp1
      - rockchip,rk3399-cif-isp

>>  properties:
>>    compatible:
>>      const: rockchip,rk3399-mipi-dphy-rx0
>> +    const: rockchip,rk3288-mipi-dphy-rx0

    enum:
      - rockchip,rk3288-mipi-dphy-rx0
      - rockchip,rk3399-mipi-dphy-rx0

> 
> Please, keep consistency, or rk3288-cif-isp, or we change rk3399-cif-isp to be rk3399-rkisp1.


On 4/6/20 9:30 AM, Karthik Poduval wrote:
> ISP and DPHY device entries missing so add them.
> 

> tested on tinkerbaord with ov5647 using command
> cam -c 1 -C -F cap

Disclose dts node for ov5647 in cover letter, so people can reproduce
this experiment.

Caution!
Without dts node this command doesn't work correct.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml

Needed to detect missing: phys, phy-names and ports ,etc.

&isp {
	status = "okay";
};

Needed to detect missing: power-domains, etc.

&mipi_phy_rx0 {
	status = "okay";
};

> 
> Reported-by: Karthik Poduval <karthik.poduval@gmail.com>
> Signed-off-by: Karthik Poduval <karthik.poduval@gmail.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 9beb662166aa..adea8189abd9 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -247,6 +247,23 @@
>  		ports = <&vopl_out>, <&vopb_out>;
>  	};
> 

> +	isp: isp@ff910000 {

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

> +		compatible = "rockchip,rk3288-rkisp1";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru SCLK_ISP>, <&cru ACLK_ISP>,
> +			 <&cru HCLK_ISP>, <&cru PCLK_ISP_IN>,
> +			 <&cru SCLK_ISP_JPE>;
> +		clock-names = "clk_isp", "aclk_isp",
> +			      "hclk_isp", "pclk_isp_in",
> +			      "sclk_isp_jpe";
> +		assigned-clocks = <&cru SCLK_ISP>, <&cru SCLK_ISP_JPE>;
> +		assigned-clock-rates = <400000000>, <400000000>;

> +		power-domains = <&power RK3288_PD_VIO>;
> +		iommus = <&isp_mmu>;

sort

Something missing?
Where are the ports and port nodes?

> +		status = "disabled";
> +	};
> +
>  	sdmmc: mmc@ff0c0000 {
>  		compatible = "rockchip,rk3288-dw-mshc";
>  		max-frequency = <150000000>;
> @@ -891,6 +908,14 @@
>  			status = "disabled";
>  		};
> 

> +		mipi_phy_rx0: mipi-phy-rx0 {

Use separate patch.

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

> +			compatible = "rockchip,rk3288-mipi-dphy-rx0";
> +			clocks = <&cru SCLK_MIPIDSI_24M>, <&cru PCLK_MIPI_CSI>;
> +			clock-names = "dphy-ref", "pclk";
Something missing?
Does this phy have a power domain?

> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		io_domains: io-domains {
>  			compatible = "rockchip,rk3288-io-voltage-domain";
>  			status = "disabled";
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
