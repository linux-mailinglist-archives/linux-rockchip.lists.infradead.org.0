Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0485A31915
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 04:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+CmBWIZ0/8uB3Y1bBWBE+6NVW5jidSQMF3NJt7oqvw=; b=PzXzlLaBxFeKRr
	uMKcKGuw/02XpAAEqf5hHNtbsVcdIwMmIg0FxcnNdiQrRMPM1r83J9cupH3nerZr8zM/v1kcX9Ua6
	kaxbMBOcTh+4wF/Z/IN7U7dQxLw3vq7Ql6759qIbSMbpQdxbY5dCqY4ICsytSgUUJPkS5If13eEJB
	PgPfxfl2+Dxea6niYsPbD8ZCulIuYKE8AD6yAby2gVh4W4A5PrEve7iysWaKTE2ZPWT+tWtYe/5F8
	Xgxc1DsWZD7vuJkpJgsSyBGuYcSUbF/MwxsfIViKD5vW2d5EyqdPGOUmd9KDHk+ThJzzOOWbMneot
	dfq6eFNUxX0SPSTcWB4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtxL-0004uX-U0; Sat, 01 Jun 2019 02:41:15 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtxH-0004u4-RD
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 02:41:14 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.228])
 by regular1.263xmail.com (Postfix) with ESMTP id 7CF29212;
 Sat,  1 Jun 2019 10:41:08 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30673T140488268809984S1559356867075776_; 
 Sat, 01 Jun 2019 10:41:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d76e82a324eb5ea2d0509d438e45602d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [U-Boot] [PATCH v8 2/3] rockchip: rk3399: Add Rockpro64 board
 support
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20190517102941.29145-1-jagan@amarulasolutions.com>
 <20190517102941.29145-2-jagan@amarulasolutions.com>
 <5ca21a9c-4c5d-d38f-c1c7-be8e41a4b04e@rock-chips.com>
Message-ID: <ab3f9198-d5bf-fbb2-fcb2-247ca8059c12@rock-chips.com>
Date: Sat, 1 Jun 2019 10:41:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <5ca21a9c-4c5d-d38f-c1c7-be8e41a4b04e@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_194112_247640_30F4FC6D 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/29/2019 04:09 PM, Kever Yang wrote:
>
> On 05/17/2019 06:29 PM, Jagan Teki wrote:
>> Add initial support for Rockpro64 board.
>>
>> Specification
>> - Rockchip RK3399
>> - 2/4GB Dual-Channel LPDDR3
>> - SD card slot
>> - eMMC socket
>> - 128Mb SPI Flash
>> - Gigabit ethernet
>> - PCIe 4X slot
>> - WiFI/BT module socket
>> - HDMI In/Out, DP, MIPI DSI/CSI, eDP
>> - USB 3.0, 2.0
>> - USB Type C power and data
>> - GPIO expansion ports
>> - DC 12V/2A
>>
>> Commit details of rk3399-rockpro64.dts sync from Linux 5.1-rc2:
>> "arm64: dts: rockchip: rockpro64 dts add usb regulator"
>> (sha1: 6db644c79c8d45d73b56bc389aebd85fc3679beb)
>>
>> 'Akash' has sent an initial patch before, so I keep him as board
>> maintainer and I'm co-maintainer based on our conversation.
>>
>> Signed-off-by: Akash Gajjar <akash@openedev.com>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip/master, thanks!

> Thanks,
> - Kever
>
>> ---
>> Changes for v8:
>> - Add TPL support
>> - Now the bootchain is 
>>   rkbin (TPL) -> SPL -> U-Boot proper
>>
>>  arch/arm/dts/Makefile                     |   1 +
>>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi |   6 +
>>  arch/arm/dts/rk3399-rockpro64.dts         | 712 ++++++++++++++++++++++
>>  board/rockchip/evb_rk3399/MAINTAINERS     |   7 +
>>  configs/rockpro64-rk3399_defconfig        |  60 ++
>>  5 files changed, 786 insertions(+)
>>  create mode 100644 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
>>  create mode 100644 arch/arm/dts/rk3399-rockpro64.dts
>>  create mode 100644 configs/rockpro64-rk3399_defconfig
>>
>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
>> index 529c506b4d..8522f01aca 100644
>> --- a/arch/arm/dts/Makefile
>> +++ b/arch/arm/dts/Makefile
>> @@ -114,6 +114,7 @@ dtb-$(CONFIG_ROCKCHIP_RK3399) += \
>>  	rk3399-puma-ddr1600.dtb \
>>  	rk3399-puma-ddr1866.dtb \
>>  	rk3399-rock960.dtb \
>> +	rk3399-rockpro64.dtb
>>  
>>  dtb-$(CONFIG_ROCKCHIP_RV1108) += \
>>  	rv1108-elgin-r1.dtb \
>> diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..7bddc3acdb
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-u-boot.dtsi"
>> diff --git a/arch/arm/dts/rk3399-rockpro64.dts b/arch/arm/dts/rk3399-rockpro64.dts
>> new file mode 100644
>> index 0000000000..1f2394e058
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-rockpro64.dts
>> @@ -0,0 +1,712 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>> + */
>> +
>> +/dts-v1/;
>> +#include <dt-bindings/input/linux-event-codes.h>
>> +#include <dt-bindings/pwm/pwm.h>
>> +#include "rk3399.dtsi"
>> +#include "rk3399-opp.dtsi"
>> +
>> +/ {
>> +	model = "Pine64 RockPro64";
>> +	compatible = "pine64,rockpro64", "rockchip,rk3399";
>> +
>> +	chosen {
>> +		stdout-path = "serial2:1500000n8";
>> +	};
>> +
>> +	clkin_gmac: external-gmac-clock {
>> +		compatible = "fixed-clock";
>> +		clock-frequency = <125000000>;
>> +		clock-output-names = "clkin_gmac";
>> +		#clock-cells = <0>;
>> +	};
>> +
>> +	gpio-keys {
>> +		compatible = "gpio-keys";
>> +		autorepeat;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pwrbtn>;
>> +
>> +		power {
>> +			debounce-interval = <100>;
>> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
>> +			label = "GPIO Key Power";
>> +			linux,code = <KEY_POWER>;
>> +			wakeup-source;
>> +		};
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
>> +
>> +		work-led {
>> +			label = "work";
>> +			default-state = "on";
>> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
>> +		};
>> +
>> +		diy-led {
>> +			label = "diy";
>> +			default-state = "off";
>> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +		};
>> +	};
>> +
>> +	sdio_pwrseq: sdio-pwrseq {
>> +		compatible = "mmc-pwrseq-simple";
>> +		clocks = <&rk808 1>;
>> +		clock-names = "ext_clock";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&wifi_enable_h>;
>> +
>> +		/*
>> +		 * On the module itself this is one of these (depending
>> +		 * on the actual card populated):
>> +		 * - SDIO_RESET_L_WL_REG_ON
>> +		 * - PDN (power down when low)
>> +		 */
>> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>> +	};
>> +
>> +	vcc12v_dcin: vcc12v-dcin {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc12v_dcin";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <12000000>;
>> +		regulator-max-microvolt = <12000000>;
>> +	};
>> +
>> +	/* switched by pmic_sleep */
>> +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc1v8_s3";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <1800000>;
>> +		vin-supply = <&vcc_1v8>;
>> +	};
>> +
>> +	vcc3v3_pcie: vcc3v3-pcie-regulator {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pcie_pwr_en>;
>> +		regulator-name = "vcc3v3_pcie";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		vin-supply = <&vcc12v_dcin>;
>> +	};
>> +
>> +	vcc3v3_sys: vcc3v3-sys {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc3v3_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&vcc5v0_sys>;
>> +	};
>> +
>> +	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
>> +	vcc5v0_host: vcc5v0-host-regulator {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc5v0_host_en>;
>> +		regulator-name = "vcc5v0_host";
>> +		regulator-always-on;
>> +		vin-supply = <&vcc5v0_usb>;
>> +	};
>> +
>> +	vcc5v0_typec: vcc5v0-typec-regulator {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc5v0_typec_en>;
>> +		regulator-name = "vcc5v0_typec";
>> +		regulator-always-on;
>> +		vin-supply = <&vcc5v0_usb>;
>> +	};
>> +
>> +	vcc5v0_sys: vcc5v0-sys {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc5v0_sys";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc12v_dcin>;
>> +	};
>> +
>> +	vcc5v0_usb: vcc5v0-usb {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc5v0_usb";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		vin-supply = <&vcc12v_dcin>;
>> +	};
>> +
>> +	vdd_log: vdd-log {
>> +		compatible = "pwm-regulator";
>> +		pwms = <&pwm2 0 25000 1>;
>> +		regulator-name = "vdd_log";
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <800000>;
>> +		regulator-max-microvolt = <1400000>;
>> +		vin-supply = <&vcc5v0_sys>;
>> +	};
>> +};
>> +
>> +&cpu_l0 {
>> +	cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l1 {
>> +	cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l2 {
>> +	cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l3 {
>> +	cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_b>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_b>;
>> +};
>> +
>> +&emmc_phy {
>> +	status = "okay";
>> +};
>> +
>> +&gmac {
>> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
>> +	assigned-clock-parents = <&clkin_gmac>;
>> +	clock_in_out = "input";
>> +	phy-supply = <&vcc_lan>;
>> +	phy-mode = "rgmii";
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&rgmii_pins>;
>> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	snps,reset-delays-us = <0 10000 50000>;
>> +	tx_delay = <0x28>;
>> +	rx_delay = <0x11>;
>> +	status = "okay";
>> +};
>> +
>> +&hdmi {
>> +	ddc-i2c-bus = <&i2c3>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&hdmi_cec>;
>> +	status = "okay";
>> +};
>> +
>> +&gpu {
>> +	mali-supply = <&vdd_gpu>;
>> +	status = "okay";
>> +};
>> +
>> +&i2c0 {
>> +	clock-frequency = <400000>;
>> +	i2c-scl-rising-time-ns = <168>;
>> +	i2c-scl-falling-time-ns = <4>;
>> +	status = "okay";
>> +
>> +	rk808: pmic@1b {
>> +		compatible = "rockchip,rk808";
>> +		reg = <0x1b>;
>> +		interrupt-parent = <&gpio1>;
>> +		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>> +		#clock-cells = <1>;
>> +		clock-output-names = "xin32k", "rk808-clkout2";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_int_l>;
>> +		rockchip,system-power-controller;
>> +		wakeup-source;
>> +
>> +		vcc1-supply = <&vcc5v0_sys>;
>> +		vcc2-supply = <&vcc5v0_sys>;
>> +		vcc3-supply = <&vcc5v0_sys>;
>> +		vcc4-supply = <&vcc5v0_sys>;
>> +		vcc6-supply = <&vcc5v0_sys>;
>> +		vcc7-supply = <&vcc5v0_sys>;
>> +		vcc8-supply = <&vcc3v3_sys>;
>> +		vcc9-supply = <&vcc5v0_sys>;
>> +		vcc10-supply = <&vcc5v0_sys>;
>> +		vcc11-supply = <&vcc5v0_sys>;
>> +		vcc12-supply = <&vcc3v3_sys>;
>> +		vddio-supply = <&vcca_1v8>;
>> +
>> +		regulators {
>> +			vdd_center: DCDC_REG1 {
>> +				regulator-name = "vdd_center";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <750000>;
>> +				regulator-max-microvolt = <1350000>;
>> +				regulator-ramp-delay = <6001>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vdd_cpu_l: DCDC_REG2 {
>> +				regulator-name = "vdd_cpu_l";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <750000>;
>> +				regulator-max-microvolt = <1350000>;
>> +				regulator-ramp-delay = <6001>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_ddr: DCDC_REG3 {
>> +				regulator-name = "vcc_ddr";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_1v8: DCDC_REG4 {
>> +				regulator-name = "vcc_1v8";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <1800000>;
>> +				};
>> +			};
>> +
>> +			vcc1v8_dvp: LDO_REG1 {
>> +				regulator-name = "vcc1v8_dvp";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc3v0_touch: LDO_REG2 {
>> +				regulator-name = "vcc3v0_touch";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <3000000>;
>> +				regulator-max-microvolt = <3000000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcca_1v8: LDO_REG3 {
>> +				regulator-name = "vcca_1v8";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <1800000>;
>> +				};
>> +			};
>> +
>> +			vcc_sdio: LDO_REG4 {
>> +				regulator-name = "vcc_sdio";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <3000000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <3000000>;
>> +				};
>> +			};
>> +
>> +			vcca3v0_codec: LDO_REG5 {
>> +				regulator-name = "vcca3v0_codec";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <3000000>;
>> +				regulator-max-microvolt = <3000000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_1v5: LDO_REG6 {
>> +				regulator-name = "vcc_1v5";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1500000>;
>> +				regulator-max-microvolt = <1500000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <1500000>;
>> +				};
>> +			};
>> +
>> +			vcca1v8_codec: LDO_REG7 {
>> +				regulator-name = "vcca1v8_codec";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc_3v0: LDO_REG8 {
>> +				regulator-name = "vcc_3v0";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-min-microvolt = <3000000>;
>> +				regulator-max-microvolt = <3000000>;
>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <3000000>;
>> +				};
>> +			};
>> +
>> +			vcc3v3_s3: vcc_lan: SWITCH_REG1 {
>> +				regulator-name = "vcc3v3_s3";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +
>> +			vcc3v3_s0: SWITCH_REG2 {
>> +				regulator-name = "vcc3v3_s0";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>> +				regulator-state-mem {
>> +					regulator-off-in-suspend;
>> +				};
>> +			};
>> +		};
>> +	};
>> +
>> +	vdd_cpu_b: regulator@40 {
>> +		compatible = "silergy,syr827";
>> +		reg = <0x40>;
>> +		fcs,suspend-voltage-selector = <1>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vsel1_gpio>;
>> +		regulator-name = "vdd_cpu_b";
>> +		regulator-min-microvolt = <712500>;
>> +		regulator-max-microvolt = <1500000>;
>> +		regulator-ramp-delay = <1000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		vin-supply = <&vcc5v0_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +
>> +	vdd_gpu: regulator@41 {
>> +		compatible = "silergy,syr828";
>> +		reg = <0x41>;
>> +		fcs,suspend-voltage-selector = <1>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vsel2_gpio>;
>> +		regulator-name = "vdd_gpu";
>> +		regulator-min-microvolt = <712500>;
>> +		regulator-max-microvolt = <1500000>;
>> +		regulator-ramp-delay = <1000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		vin-supply = <&vcc5v0_sys>;
>> +
>> +		regulator-state-mem {
>> +			regulator-off-in-suspend;
>> +		};
>> +	};
>> +};
>> +
>> +&i2c1 {
>> +	i2c-scl-rising-time-ns = <300>;
>> +	i2c-scl-falling-time-ns = <15>;
>> +	status = "okay";
>> +};
>> +
>> +&i2c3 {
>> +	i2c-scl-rising-time-ns = <450>;
>> +	i2c-scl-falling-time-ns = <15>;
>> +	status = "okay";
>> +};
>> +
>> +&i2c4 {
>> +	i2c-scl-rising-time-ns = <600>;
>> +	i2c-scl-falling-time-ns = <20>;
>> +	status = "okay";
>> +
>> +	fusb0: typec-portc@22 {
>> +		compatible = "fcs,fusb302";
>> +		reg = <0x22>;
>> +		interrupt-parent = <&gpio1>;
>> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&fusb0_int>;
>> +		vbus-supply = <&vcc5v0_typec>;
>> +		status = "okay";
>> +	};
>> +};
>> +
>> +&i2s0 {
>> +	rockchip,playback-channels = <8>;
>> +	rockchip,capture-channels = <8>;
>> +	status = "okay";
>> +};
>> +
>> +&i2s1 {
>> +	rockchip,playback-channels = <2>;
>> +	rockchip,capture-channels = <2>;
>> +	status = "okay";
>> +};
>> +
>> +&i2s2 {
>> +	status = "okay";
>> +};
>> +
>> +&io_domains {
>> +	status = "okay";
>> +
>> +	bt656-supply = <&vcc1v8_dvp>;
>> +	audio-supply = <&vcca1v8_codec>;
>> +	sdmmc-supply = <&vcc_sdio>;
>> +	gpio1830-supply = <&vcc_3v0>;
>> +};
>> +
>> +&pmu_io_domains {
>> +	pmu1830-supply = <&vcc_3v0>;
>> +	status = "okay";
>> +};
>> +
>> +&pinctrl {
>> +	buttons {
>> +		pwrbtn: pwrbtn {
>> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	fusb302x {
>> +		fusb0_int: fusb0-int {
>> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	leds {
>> +		work_led_gpio: work_led-gpio {
>> +			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		diy_led_gpio: diy_led-gpio {
>> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	pcie {
>> +		pcie_pwr_en: pcie-pwr-en {
>> +			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	pmic {
>> +		pmic_int_l: pmic-int-l {
>> +			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +
>> +		vsel1_gpio: vsel1-gpio {
>> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
>> +		};
>> +
>> +		vsel2_gpio: vsel2-gpio {
>> +			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>> +		};
>> +	};
>> +
>> +	sdio-pwrseq {
>> +		wifi_enable_h: wifi-enable-h {
>> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>> +	usb-typec {
>> +		vcc5v0_typec_en: vcc5v0_typec_en {
>> +			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>> +		};
>> +	};
>> +
>> +	usb2 {
>> +		vcc5v0_host_en: vcc5v0-host-en {
>> +			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +};
>> +
>> +&pwm0 {
>> +	status = "okay";
>> +};
>> +
>> +&pwm2 {
>> +	status = "okay";
>> +};
>> +
>> +&saradc {
>> +	vref-supply = <&vcca1v8_s3>;
>> +	status = "okay";
>> +};
>> +
>> +&sdmmc {
>> +	bus-width = <4>;
>> +	cap-mmc-highspeed;
>> +	cap-sd-highspeed;
>> +	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
>> +	disable-wp;
>> +	max-frequency = <150000000>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>> +	status = "okay";
>> +};
>> +
>> +&sdhci {
>> +	bus-width = <8>;
>> +	mmc-hs400-1_8v;
>> +	mmc-hs400-enhanced-strobe;
>> +	non-removable;
>> +	status = "okay";
>> +};
>> +
>> +&tcphy0 {
>> +	status = "okay";
>> +};
>> +
>> +&tcphy1 {
>> +	status = "okay";
>> +};
>> +
>> +&tsadc {
>> +	/* tshut mode 0:CRU 1:GPIO */
>> +	rockchip,hw-tshut-mode = <1>;
>> +	/* tshut polarity 0:LOW 1:HIGH */
>> +	rockchip,hw-tshut-polarity = <1>;
>> +	status = "okay";
>> +};
>> +
>> +&u2phy0 {
>> +	status = "okay";
>> +
>> +	u2phy0_otg: otg-port {
>> +		status = "okay";
>> +	};
>> +
>> +	u2phy0_host: host-port {
>> +		phy-supply = <&vcc5v0_host>;
>> +		status = "okay";
>> +	};
>> +};
>> +
>> +&u2phy1 {
>> +	status = "okay";
>> +
>> +	u2phy1_otg: otg-port {
>> +		status = "okay";
>> +	};
>> +
>> +	u2phy1_host: host-port {
>> +		phy-supply = <&vcc5v0_host>;
>> +		status = "okay";
>> +	};
>> +};
>> +
>> +&uart0 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&uart0_xfer &uart0_cts>;
>> +	status = "okay";
>> +};
>> +
>> +&uart2 {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host0_ehci {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host0_ohci {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host1_ehci {
>> +	status = "okay";
>> +};
>> +
>> +&usb_host1_ohci {
>> +	status = "okay";
>> +};
>> +
>> +&usbdrd3_0 {
>> +	status = "okay";
>> +};
>> +
>> +&usbdrd_dwc3_0 {
>> +	status = "okay";
>> +	dr_mode = "otg";
>> +};
>> +
>> +&usbdrd3_1 {
>> +	status = "okay";
>> +};
>> +
>> +&usbdrd_dwc3_1 {
>> +	status = "okay";
>> +	dr_mode = "host";
>> +};
>> +
>> +&vopb {
>> +	status = "okay";
>> +};
>> +
>> +&vopb_mmu {
>> +	status = "okay";
>> +};
>> +
>> +&vopl {
>> +	status = "okay";
>> +};
>> +
>> +&vopl_mmu {
>> +	status = "okay";
>> +};
>> diff --git a/board/rockchip/evb_rk3399/MAINTAINERS b/board/rockchip/evb_rk3399/MAINTAINERS
>> index 1f51f65160..295730c91b 100644
>> --- a/board/rockchip/evb_rk3399/MAINTAINERS
>> +++ b/board/rockchip/evb_rk3399/MAINTAINERS
>> @@ -30,3 +30,10 @@ S:	Maintained
>>  F:	configs/orangepi-rk3399_defconfig
>>  F:	arch/arm/dts/rk3399-u-boot.dtsi
>>  F:	arch/arm/dts/rk3399-orangepi-u-boot.dtsi
>> +
>> +ROCKPRO64
>> +M:	Akash Gajjar <akash@openedev.com>
>> +M:	Jagan Teki <jagan@amarulasolutions.com>
>> +S:	Maintained
>> +F:	configs/rockpro64-rk3399_defconfig
>> +F:	arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
>> diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
>> new file mode 100644
>> index 0000000000..90bcaedbd2
>> --- /dev/null
>> +++ b/configs/rockpro64-rk3399_defconfig
>> @@ -0,0 +1,60 @@
>> +CONFIG_ARM=y
>> +CONFIG_ARCH_ROCKCHIP=y
>> +CONFIG_SYS_TEXT_BASE=0x00200000
>> +CONFIG_SPL_LIBCOMMON_SUPPORT=y
>> +CONFIG_SPL_LIBGENERIC_SUPPORT=y
>> +CONFIG_SYS_MALLOC_F_LEN=0x4000
>> +CONFIG_ROCKCHIP_RK3399=y
>> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
>> +CONFIG_DEBUG_UART_BASE=0xFF1A0000
>> +CONFIG_DEBUG_UART_CLOCK=24000000
>> +CONFIG_SPL_STACK_R_ADDR=0x80000
>> +CONFIG_DEBUG_UART=y
>> +CONFIG_NR_DRAM_BANKS=1
>> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rockpro64.dtb"
>> +# CONFIG_DISPLAY_CPUINFO is not set
>> +CONFIG_DISPLAY_BOARDINFO_LATE=y
>> +CONFIG_SPL_STACK_R=y
>> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>> +CONFIG_CMD_BOOTZ=y
>> +CONFIG_CMD_GPT=y
>> +CONFIG_CMD_MMC=y
>> +CONFIG_CMD_SF=y
>> +CONFIG_CMD_USB=y
>> +# CONFIG_CMD_SETEXPR is not set
>> +CONFIG_CMD_TIME=y
>> +CONFIG_SPL_OF_CONTROL=y
>> +CONFIG_DEFAULT_DEVICE_TREE="rk3399-rockpro64"
>> +CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>> +CONFIG_TPL=y
>> +CONFIG_ENV_IS_IN_MMC=y
>> +CONFIG_ROCKCHIP_GPIO=y
>> +CONFIG_SYS_I2C_ROCKCHIP=y
>> +CONFIG_MMC_DW=y
>> +CONFIG_MMC_DW_ROCKCHIP=y
>> +CONFIG_MMC_SDHCI=y
>> +CONFIG_MMC_SDHCI_ROCKCHIP=y
>> +CONFIG_DM_ETH=y
>> +CONFIG_ETH_DESIGNWARE=y
>> +CONFIG_GMAC_ROCKCHIP=y
>> +CONFIG_PMIC_RK8XX=y
>> +CONFIG_REGULATOR_PWM=y
>> +CONFIG_REGULATOR_RK8XX=y
>> +CONFIG_PWM_ROCKCHIP=y
>> +CONFIG_BAUDRATE=1500000
>> +CONFIG_DEBUG_UART_SHIFT=2
>> +CONFIG_SYSRESET=y
>> +CONFIG_USB=y
>> +CONFIG_USB_XHCI_HCD=y
>> +CONFIG_USB_XHCI_DWC3=y
>> +CONFIG_USB_EHCI_HCD=y
>> +CONFIG_USB_EHCI_GENERIC=y
>> +CONFIG_USB_HOST_ETHER=y
>> +CONFIG_USB_ETHER_ASIX=y
>> +CONFIG_USB_ETHER_ASIX88179=y
>> +CONFIG_USB_ETHER_MCS7830=y
>> +CONFIG_USB_ETHER_RTL8152=y
>> +CONFIG_USB_ETHER_SMSC95XX=y
>> +CONFIG_USE_TINY_PRINTF=y
>> +CONFIG_SPL_TINY_MEMSET=y
>> +CONFIG_ERRNO_STR=y
> _______________________________________________
> U-Boot mailing list
> U-Boot@lists.denx.de
> https://lists.denx.de/listinfo/u-boot




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
