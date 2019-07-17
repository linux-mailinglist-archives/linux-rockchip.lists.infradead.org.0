Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E2C6BF4A
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jul 2019 17:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4iJMGS7llcYTv5lzxD7vbsWbbCL9FUpNtC4hniiwzw=; b=ISy2WCNE4lvrxI
	WtHfA7LLSns4oyPUThHYkUpGvxbLaOEkFaOchR+9TnuneX7lIgpULeUyL6gmR1Sz62LYM+Z25ONJL
	c2md1MektEb6lGo2NE6EbDwAtnFprlN/W3bu/mxmKQrozRKCFh5PAJF0Jmt/cFbs4vXQunQHQUfj8
	CLKaV/437AL+azXY6nYY3Dd7g1eOlqKBqdC7d3gLi82R1qjNZILlXf47BzjIdR+Ad6fm9YpJM52+t
	B8toGjEIY6hktwek8mXNenz47G8iirygczqRlgOASoOp++kMFfTjPjnRauj2LtD0kcz/DhJcoc2tF
	ucHayQ/L1azIiTKQ7Ayg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnmA4-00020u-GJ; Wed, 17 Jul 2019 15:48:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnm9z-0001zE-H8
 for linux-rockchip@lists.infradead.org; Wed, 17 Jul 2019 15:48:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so11032076pfg.10
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Jul 2019 08:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zQcGGrXkrtrRlyMUPSTSKjzFhgXLLypr7pK+iVkPWms=;
 b=EZLOKy4Mc8RiFxpr+zyFg+cyDg2yJNLoWkTJNQYxcxf7NgCWGUg28SWbpt+/Xg95SO
 rx2/M4aWGCcW83ygJHnzY5M8xlu8jGT3nwH+YNV/gTc0MSGcgmU0ExCQ3e3H5rv3OwW5
 y8Z2bfAtbpXGX+/5piztv9/qK+cv98OBoDSSY3VuBIp8iqiTd/dsqSCP6kH/I3vxoxGd
 FipbzFl4Xiwv/0enZmnOEjv9fN0ePtLLIe1owQyEDk66PLDXDbvh2MpGZdg8kGD/djrl
 QmlcT5Q2n6qa4L/UBjBK9hFlDDNJ2lrtICzZgtEOce4of5+nS7UAnmPuvltbbZkbGnWo
 SBDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zQcGGrXkrtrRlyMUPSTSKjzFhgXLLypr7pK+iVkPWms=;
 b=NxSTLtqyE/ffbNDYY0nJ1a/schbUgENvJDqXe52SADJRy2RDD1DlWBjG5d0sy7i3IO
 kFjybCUJQRP2IOIpU9Z46n8NpqktVRMwdMCFAUTX83hw8jWLFvTFraEp5BB4ShjGHKh4
 67HeBec1ZiD5jZiTbRuZLt8MfiC6P6Ve+HabK7eMN+I/OeVV7QSv++/dX1aIDebZGLhj
 mk7i7gNJgf4p9LGiLHUYb7r3BJmjWckZyqAZCFt8zVky71mzoERSFe2TZzId6DlKpyqg
 d8YW8/r9qLB2ai1sRbpZh/UO+pWxY5y3Twyd1ve74DjG5m3PDYrQ9dHo9E8d+FMFwDRy
 3oiQ==
X-Gm-Message-State: APjAAAU7S+OM5FRMSSkk7rPT0uch6D8hKYDlcADWmknFCOntax5REBwQ
 uHh5tpiWvW7ItUgFIOE3rw/F
X-Google-Smtp-Source: APXvYqzMzNvBsp4e3uh8J6c9pZVGF8e6ECNi+6oRTtIc6YFb/slmWJIt0xk9SyHEZkRJgbKDaMJGJg==
X-Received: by 2002:a17:90a:d998:: with SMTP id
 d24mr17950601pjv.89.1563378482395; 
 Wed, 17 Jul 2019 08:48:02 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7301:59e6:f493:40df:9c8a:5041])
 by smtp.gmail.com with ESMTPSA id r13sm32517600pfr.25.2019.07.17.08.47.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 08:48:01 -0700 (PDT)
Date: Wed, 17 Jul 2019 21:17:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: Add support for TB-96AI board
Message-ID: <20190717154752.GA13269@Mani-XPS-13-9360>
References: <20190711021209.32529-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711021209.32529-1-zhangzj@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_084803_596622_0E08A117 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Elon,

Thanks for the patch. Overall, this patch needs a bit of cleanup. There
are many nodes added which are not available in mainline.

Please see comments inline.

On Thu, Jul 11, 2019 at 10:12:09AM +0800, Elon Zhang wrote:
> Add devicetree support for RK3399Pro TB-96AI board, one of
> the 96Boards family.
> 
> The TB-96AI board is a 96Boards Compute SOM design, launched
> by Linaro, Rockchip and Beiqicloud.
> 
> More information can be obtained from the following websites:
> 1.https://www.96boards.org/product/tb-96ai/
> 2.http://t.rock-chips.com/
> 3.http://www.beiqicloud.com/
> 
> This patch add basic node for the board and support booting up
> to Fedora.
> 
> Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 5f2687acbf94..3d6c8d4363b5 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -27,3 +27,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-tb-96ai.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
> new file mode 100644
> index 000000000000..1935df99065d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-tb-96ai.dts
> @@ -0,0 +1,629 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> + */
> +
> +/dts-v1/;
> +#include "rk3399pro.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rk3399pro-tb-96ai", "rockchip,rk3399pro";
> +

I think the manufacturer of this board is, Xiamen Beiqi Technology Co. Ltd.
So, the compatible should be:

compatible = "beiqui,rk3399pro-tb-96ai", "rockchip,rk3399pro";

And there should a separate patch to add the vendor prefix. You can refer
below patch:

https://lkml.org/lkml/2019/7/17/39

> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	xin32k: xin32k {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "xin32k";
> +		#clock-cells = <0>;
> +	};
> +
> +	vcc_phy: vcc-phy-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_phy";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc5v0_sys: vccsys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vdd_log: vdd_log {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +	};
> +
> +	leds: gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 =<&leds_gpio>;

Leave a space after =

> +
> +		led@1 {
> +			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
> +			label = "system_work_led1";
> +			retain-state-suspended;
> +		};
> +

We are using a standard LED formats for all 96Boards. Please see,
rk3399-rock960.dts for reference. Since there is only user leds
(apart from power leds), just define those as per the format.

> +		led@2 {
> +			gpios = <&gpio2 4 GPIO_ACTIVE_HIGH>;
> +			label = "system_work_led2";
> +			retain-state-suspended;
> +		};
> +
> +		led@3 {
> +			gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
> +			label = "system_work_led3";
> +			retain-state-suspended;
> +		};
> +	};
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +	i2c-scl-rising-time-ns = <180>;
> +	i2c-scl-falling-time-ns = <30>;
> +	clock-frequency = <400000>;
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";

It looks like this driver is not present in mainline yet. I can see
some old patches in lkml archive but not sure about the status of those.
So, please remove this node and use dummy regulators where applicable.

> +		reg = <0x20>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PC2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default", "pmic-sleep",
> +				"pmic-power-off", "pmic-reset";
> +		pinctrl-0 = <&pmic_int_l>;
> +		pinctrl-1 = <&soc_slppin_slp>, <&rk809_slppin_slp>;
> +		pinctrl-2 = <&soc_slppin_gpio>, <&rk809_slppin_pwrdn>;
> +		pinctrl-3 = <&soc_slppin_gpio>,<&rk809_slppin_null>;
> +		rockchip,system-power-controller;
> +		pmic-reset-func = <1>;
> +		wakeup-source;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +
> +		vcc1-supply = <&vcc5v0_sys>;
> +		vcc2-supply = <&vcc5v0_sys>;
> +		vcc3-supply = <&vcc5v0_sys>;
> +		vcc4-supply = <&vcc5v0_sys>;
> +		vcc5-supply = <&vcc_buck5>;
> +		vcc6-supply = <&vcc_buck5>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc5v0_sys>;
> +
> +		pwrkey {
> +			status = "okay";
> +		};
> +
> +		rtc {
> +			status = "okay";
> +		};
> +
> +		pinctrl_rk8xx: pinctrl_rk8xx {
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +
> +			rk809_slppin_null: rk809_slppin_null {
> +				pins = "gpio_slp";
> +				function = "pin_fun0";
> +			};
> +
> +			rk809_slppin_slp: rk809_slppin_slp {
> +				pins = "gpio_slp";
> +				function = "pin_fun1";
> +			};
> +
> +			rk809_slppin_pwrdn: rk809_slppin_pwrdn {
> +				pins = "gpio_slp";
> +				function = "pin_fun2";
> +			};
> +
> +			rk809_slppin_rst: rk809_slppin_rst {
> +				pins = "gpio_slp";
> +				function = "pin_fun3";
> +			};
> +		};
> +
> +		regulators {
> +			vdd_center: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_center";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_cpu_l";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_ddr";
> +				regulator-initial-mode = <0x2>;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sys: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vcc3v3_sys";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_buck5: DCDC_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <2200000>;
> +				regulator-max-microvolt = <2200000>;
> +				regulator-name = "vcc_buck5";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <2200000>;
> +				};
> +			};
> +
> +			vcca_0v9: LDO_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vcca_0v9";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-name = "vcc_1v8";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc0v9_soc: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-name = "vcc0v9_soc";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vcca_1v8: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-name = "vcca_1v8";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd1v5_dvp: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +
> +				regulator-name = "vdd1v5_dvp";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v5: LDO_REG6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +
> +				regulator-name = "vcc_1v5";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-name = "vcc_3v0";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-name = "vccio_sd";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_sd: LDO_REG9 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-name = "vcc_sd";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc5v0_usb: SWITCH_REG1 {
> +				regulator-min-microvolt = <5000000>;
> +				regulator-max-microvolt = <5000000>;
> +
> +				regulator-name = "vcc5v0_usb";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_3v3: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-name = "vccio_3v3";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: tcs452x@1c {
> +		compatible = "tcs,tcs452x";

Again, there is no driver for this.

> +		reg = <0x1c>;
> +		vin-supply = <&vcc5v0_sys>;
> +		regulator-compatible = "fan53555-reg";
> +		pinctrl-0 = <&vsel1_gpio>;
> +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <2300>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-initial-state = <3>;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: tcs452x@10 {
> +		compatible = "tcs,tcs452x";

ditto.

> +		status = "okay";
> +		reg = <0x10>;
> +		vin-supply = <&vcc5v0_sys>;
> +		regulator-compatible = "fan53555-reg";
> +		pinctrl-0 = <&vsel2_gpio>;
> +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <735000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-ramp-delay = <2300>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +};
> +
> +&i2c8 {
> +	status = "okay";
> +	i2c-scl-rising-time-ns = <345>;
> +	i2c-scl-falling-time-ns = <11>;
> +	clock-frequency = <100000>;
> +
> +	fusb0: fusb30x@22 {
> +		compatible = "fairchild,fusb302";

ditto, please remove.

> +		reg = <0x22>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int>;
> +		int-n-gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
> +		vbus-5v-gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
> +		status = "okay";
> +	};
> +
> +};
> +
> +&io_domains {
> +	status = "okay";
> +	bt656-supply = <&vcca_1v8>; /* APIO2_VDD */
> +	audio-supply = <&vcca_1v8>; /* APIO5_VDD */
> +	sdmmc-supply = <&vccio_sd>; /* SDMMC0_VDD */
> +	gpio1830-supply = <&vcc_1v8>; /* APIO4_VDD */
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&npu_ref_clk>;
> +
> +	fusb30x {
> +		fusb0_int: fusb0-int {
> +			rockchip,pins =
> +				<1 RK_PA2 0 &pcfg_pull_up>;
> +		};
> +	};

not needed.

> +
> +	gpio-leds {
> +		leds_gpio: leds-gpio {
> +			rockchip,pins =
> +				<2 5 RK_FUNC_GPIO &pcfg_pull_up>,
> +				<2 4 RK_FUNC_GPIO &pcfg_pull_up>,
> +				<2 3 RK_FUNC_GPIO &pcfg_pull_up>;

I don't think we need pull-up here.

> +		};
> +	};
> +
> +	npu_clk {
> +		npu_ref_clk: npu-ref-clk {
> +			rockchip,pins =
> +				<0 RK_PA2 1 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins =
> +				<1 RK_PC2 0 &pcfg_pull_up>;
> +		};
> +
> +		soc_slppin_gpio: soc-slppin-gpio {
> +			rockchip,pins =
> +				<1 RK_PA5 0 &pcfg_output_low>;
> +		};
> +
> +		soc_slppin_slp: soc-slppin-slp {
> +			rockchip,pins =
> +				<1 RK_PA5 1 &pcfg_pull_down>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins =
> +				<1 RK_PC1 0 &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins =
> +				<1 RK_PB6 0 &pcfg_pull_down>;
> +		};
> +	};

not needed.

> +
> +	usb3 {
> +		usb3_host_en: usb3-host-en {
> +			rockchip,pins =
> +				<2 RK_PA2 RK_FUNC_GPIO &pcfg_output_high>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	status = "okay";
> +	pmu1830-supply = <&vcc_1v8>;
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	status = "okay";
> +	vref-supply = <&vcc_1v8>;
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs400-1_8v;
> +	supports-emmc;

there is no such property, so please remove. Since this controller is
used for emmc, you can use "no-sd" and "no-sdio" properties if needed.

> +	non-removable;
> +	keep-power-in-suspend;
> +	mmc-hs400-enhanced-strobe;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	clock-frequency = <150000000>;
> +	clock-freq-min-max = <400000 150000000>;
> +	supports-sd;

Same as above, property not available. Use, "no-sdio" and "no-emmc" if
needed.

> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	num-slots = <1>;

not needed.

> +	vqmmc-supply = <&vccio_sd>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
> +	status = "okay";
> +};
> +
> +&tcphy0 {
> +	extcon = <&fusb0>;
> +	status = "okay";
> +};
> +
> +&tcphy1 {
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>; /* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-polarity = <1>; /* tshut polarity 0:LOW 1:HIGH */

Any clue about shutdown temperature? Not necessary now but good to have.

Thanks,
Mani
> +	status = "okay";
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +	extcon = <&fusb0>;
> +
> +	u2phy0_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy0_host: host-port {
> +		phy-supply = <&vcc5v0_usb>;
> +		status = "okay";
> +	};
> +};
> +
> +&u2phy1 {
> +	status = "okay";
> +
> +	u2phy1_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy1_host: host-port {
> +		phy-supply = <&vcc5v0_usb>;
> +		status = "okay";
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +&usbdrd3_0 {
> +	extcon = <&fusb0>;
> +	status = "okay";
> +};
> +
> +&usbdrd3_1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&usb3_host_en>;
> +};
> +
> +&usbdrd_dwc3_0 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_1 {
> +	snps,dis-u3-autosuspend-quirk;
> +	status = "okay";
> +};
> +
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
