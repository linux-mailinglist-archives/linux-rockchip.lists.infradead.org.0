Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CDD174505
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Feb 2020 06:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoIsPPjgoz/xgQWaMbG9X1sW6CihLJm48s34oXOfsUY=; b=CprRh7ed8+7mG/
	R0aBGPw9qku8E9wXieHX/C0DhlFPlNkzJY/1YpzbmXrx8vxecTFv+7pmXw05VxVPjDeCbKmzWfRAW
	j/Uv3PPvnt4vGrRajl6+cuLFkCTwSTqGELWKB0SCsPmsDWOlB91Stvoi8GQPouGfdGX6RXxybkKXq
	vapoS42olf+3SUac7/SqtKwnS5T3PbNMKSy/Sl0v4MZgkOx/Y9f/bpEOagkwl/e3xV7wyl796h0BR
	0aH0JXiWJa8/8u+EhvB/0qKy5SDgYKFD7BvOvghwOS3Yhwvg7edGm8PD5AIIjeJbJYPcq+KXUz3Tb
	s8brF7ceLnKOZMIvBdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ubg-0008EH-FS; Sat, 29 Feb 2020 05:24:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ubb-0008Dl-Fq; Sat, 29 Feb 2020 05:24:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id a141so5618923wme.2;
 Fri, 28 Feb 2020 21:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=U1lVIzfWke/5MqaJKiogvhtK47l8ByvamSddi7J0yIQ=;
 b=hPU0OEbUsRNb62dbXz7c9mMNYCTq/og1JBLxrqvGer/ukZ0t63er4Ylxh0ew/yEWHs
 ksSNxpZRVqcmntdKerUGYovStuq9oHCd+Ejgtou4fYjhOZEZy0t46ijpBk+HzcHnHk1h
 gl3WjvCwa2pUoPk44EoKqOOs2AfUK/IGl+ZJmxTT4ZmYp95mfxKOj0ZBLTUBy8BxlOYI
 aGhrCL2/iFPbnBq1UqwYzsKnADV6TltdrmuedbiQx7fTPx7qwlRIPjnPvpatchULPe41
 DxmM2HZ8tnMIXV+m0iu04/VPuOhWFMEr06hpuCjvdWP2hMyXlnWtug9h0sGcd9n4EID/
 rrHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U1lVIzfWke/5MqaJKiogvhtK47l8ByvamSddi7J0yIQ=;
 b=cLmRGBrAtHQzys4r6AyisD7kIwHdzGfI36jibPb0Lla7rwx0Y7TUwdMPhEFFrbdpLR
 KlxBzHD264n5KRbPVgb2uNupIOle2XRV17q2oOYrmZ8t6xvsUdvdA1e9JKDtqHoiAD0G
 g/N86iLtLtG57oeTa5n+wSiC3PwNF4cPdNIWJRj+MXSfAG65RojDHgReQm1fy2iZ7U56
 k+8krzCkt47KVpMbcXrMSV6RQ4+qFN9frZygoOSho6ixPVXgRtN26DUYauoiDDeGjk7W
 1EN4HrjbI6g7Ge2MtIXwJxDJSvSXMv2UVAdE38EBo117ucAb6eBvmYTXBH9nIWIa+UyQ
 2flg==
X-Gm-Message-State: APjAAAXQq9voj+0gjSi9NF8ZDNsHL5OXk6vM6h9mkESgfnIn4yVhp+aL
 9pLyrmQHjlzXfQxCTPHUASk=
X-Google-Smtp-Source: APXvYqyzuQ4KqbqWx7kEFnAmwssX+k/02Sx/0F67SEUfRYujOmALGsvQPwD1AvsFMq67cLzmGWrqBw==
X-Received: by 2002:a05:600c:21c4:: with SMTP id
 x4mr8459210wmj.147.1582953841313; 
 Fri, 28 Feb 2020 21:24:01 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f23sm5218278wmb.1.2020.02.28.21.23.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 21:24:00 -0800 (PST)
To: t.schramm@manjaro.org
References: <20200228203806.346299-3-t.schramm@manjaro.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <68b8b201-d77a-7f91-fccd-8fec7eb15da5@gmail.com>
Date: Sat, 29 Feb 2020 06:23:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200228203806.346299-3-t.schramm@manjaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_212403_571403_40A80C7C 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, m.reichl@fivetechno.de,
 npcomplete13@gmail.com, heiko@sntech.de, katsuhiro@katsuster.net,
 linux-kernel@vger.kernel.org, dianders@chromium.org, robh+dt@kernel.org,
 kever.yang@rock-chips.com, anarsoul@gmail.com,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 jagan@amarulasolutions.com, nick@khadas.com, andy.yan@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, aballier@gentoo.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Tobias,

When I do some tests with the commands below it gives me errors.
Please manually recheck your nodes for invalid properties.
This patch is for the Linux tree and not for Google, etc.

make ARCH=arm64 CROSS_COMPILE=/usr/bin/arm-linux-gnueabi- defconfig
make ARCH=arm64 CROSS_COMPILE=/usr/bin/arm-linux-gnueabi- menuconfig
# select Rockchip platform
make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/panel-simple.yaml

  DTC     arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml
/media/user/jjprive6/documenten/rk30/linux-next-20200228/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml:
edp-panel: compatible: ['boe,nv140fhmn49', 'simple-panel'] is too long
/media/user/jjprive6/documenten/rk30/linux-next-20200228/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml:
edp-panel: compatible: Additional items are not allowed ('simple-panel'
was unexpected)
/media/user/jjprive6/documenten/rk30/linux-next-20200228/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dt.yaml:
edp-panel: 'enable-delay-ms', 'ports', 'prepare-delay-ms' do not match
any of the regexes: 'pinctrl-[0-9]+'


> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 1119 +++++++++++++++++
>  2 files changed, 1120 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 60d9437096c7..ae7621309e92 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> new file mode 100644
> index 000000000000..3873f6c63dfc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -0,0 +1,1119 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2020 Tobias Schramm <t.schramm@manjaro.org>
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/usb/pd.h>
> +#include <dt-bindings/leds/common.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "Pine64 Pinebook Pro";
> +	compatible = "pine64,pinebook-pro", "rockchip,rk3399";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	backlight: edp-backlight {
> +		compatible = "pwm-backlight";
> +		power-supply = <&vcc_12v>;
> +		pwms = <&pwm0 0 740740 0>;
> +	};
> +
> +	edp_panel: edp-panel {

> +		compatible = "boe,nv140fhmn49", "simple-panel";
Change to:
		compatible = "boe,nv140fhmn49";

> +		backlight = <&backlight>;
> +

> +		enable-delay-ms = <20>;
Invalid

> +		enable-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&panel_en_gpio>;
> +
> +		power-supply = <&vcc3v3_panel>;

> +		prepare-delay-ms = <20>;
Invalid

> +
> +		ports {

> +			#address-cells = <0x01>;

Change to:
			#address-cells = <1>;

> +			#size-cells = <0x00>;

Change to:
			#size-cells = <0>;

> +			port@0 {
> +				panel_in_edp: endpoint@0 {
> +					remote-endpoint = <&edp_out_panel>;
> +				};
> +			};
> +		};
> +	};
> +
> +	/*
> +	 * Use separate nodes for gpio-keys to allow for selective deactivation
> +	 * of wakeup sources via sysfs without disabling the whole key
> +	 */
> +	gpio-key-lid {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lidbtn_gpio>;
> +
> +		lid {
> +			debounce-interval = <20>;
> +			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
> +			label = "Lid";
> +			linux,code = <SW_LID>;
> +			linux,input-type = <EV_SW>;
> +			wakeup-event-action = <EV_ACT_DEASSERTED>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	gpio-key-power {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrbtn_gpio>;
> +
> +		power {
> +			debounce-interval = <20>;
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "Power";
> +			linux,code = <KEY_POWER>;
> +			wakeup-source;
> +		};
> +	};
> +
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrled_gpio &slpled_gpio>;
> +
> +		green-led {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +			label = "green:power";
> +		};
> +
> +		red-led {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "off";
> +			function = LED_FUNCTION_STANDBY;
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			label = "red:standby";
> +			panic-indicator;
> +			retain-state-suspended;
> +		};
> +	};
> +
> +	/* Power sequence for SDIO WiFi module */
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk808 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h_gpio>;
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <500000>;
> +
> +		/* WL_REG_ON on module */
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	/* Audio components */
> +	es8316-sound {
> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det_gpio>;
> +		simple-audio-card,name = "rockchip,es8316-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =
> +			"MIC1", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Speaker Amplifier INL", "HPOL",
> +			"Speaker Amplifier INR", "HPOR",
> +			"Speaker", "Speaker Amplifier OUTL",
> +			"Speaker", "Speaker Amplifier OUTR";
> +
> +		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
> +		simple-audio-card,aux-devs = <&speaker_amp>;
> +		simple-audio-card,pin-switches = "Speaker";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&es8316>;
> +		};
> +	};
> +
> +	speaker_amp: speaker-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		sound-name-prefix = "Speaker Amplifier";> +		VCC-supply = <&pa_5v>;
> +	};
> +
> +	/* Power tree */
> +	/* Root power source */
> +	vcc_sysin: vcc-sysin {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name = "vcc_sysin";
> +	};
> +
> +	/* Regulators supplied by vcc_sysin */
> +	/* LCD backlight supply */
> +	vcc_12v: vcc-12v {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		regulator-name = "vcc_12v";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* Main 3.3 V supply */
> +	vcc3v3_sys: wifi_bat: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_sys";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	/* 5 V USB power supply */
> +	vcc5v0_usb: pa_5v: vcc5v0-usb-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwr_5v_gpio>;
> +		regulator-always-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_usb";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* RK3399 logic supply */
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-name = "vdd_log";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	/* Regulators supplied by vcc3v3_sys */
> +	/* 0.9 V supply, always on */
> +	vcc_0v9: vcc-0v9 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		regulator-name = "vcc_0v9";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* S3 1.8 V supply, switched by vcc1v8_s3 */
> +	vcca1v8_s3: vcc1v8-s3 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-name = "vcca1v8_s3";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* micro SD card power */
> +	vcc3v0_sd: vcc3v0-sd {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdmmc0_pwr_h_gpio>;
> +		regulator-always-on;
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		regulator-name = "vcc3v0_sd";
> +		vin-supply = <&vcc3v3_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* LCD panel power, called VCC3V3_S0 in schematic */
> +	vcc3v3_panel: vcc3v3-panel {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lcdvcc_en_gpio>;
> +		regulator-always-on;
> +		regulator-enable-ramp-delay = <100000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_panel";
> +		vin-supply = <&vcc3v3_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* M.2 adapter power, switched by vcc1v8_s3 */
> +	vcc3v3_ssd: vcc3v3-ssd {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_ssd";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* Regulators supplied by vcc5v0_usb */
> +	/* USB 3 port power supply regulator  */
> +	vcc5v0_otg: vcc5v0-otg {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en_gpio>;
> +		regulator-always-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_otg";
> +		vin-supply = <&vcc5v0_usb>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* Regualtors supplied by vcc5v0_usb */
> +	/* Type C port power supply regulator */
> +	vbus_5vout: vbus_typec: vbus-5vout {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec0_en_gpio>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vbus_5vout";
> +		vin-supply = <&vcc5v0_usb>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* Regualtors supplied by vcc_1v8 */
> +	/* Primary 0.9 V LDO */
> +	vcca0v9_s3: vcca0v9-s3 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vcc0v9_s3";
> +		vin-supply = <&vcc_1v8>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	mains_charger: dc-charger {
> +		compatible = "gpio-charger";
> +		charger-type = "mains";
> +		gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
> +
> +		/* Also triggered by USB charger */
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&dc_det_gpio>;
> +	};
> +};
> +
> +&cdn_dp {
> +	status = "okay";
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
> +&edp {
> +	status = "okay";

status below

> +	force-hpd;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&edp_hpd>;
> +
> +	ports {
> +		edp_out: port@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			edp_out_panel: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&panel_in_edp>;
> +			};
> +		};
> +	};
> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;
> +	status = "okay";
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l_gpio>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sysin>;
> +		vcc2-supply = <&vcc_sysin>;
> +		vcc3-supply = <&vcc_sysin>;
> +		vcc4-supply = <&vcc_sysin>;
> +		vcc6-supply = <&vcc_sysin>;
> +		vcc7-supply = <&vcc_sysin>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc_sysin>;
> +		vcc10-supply = <&vcc_sysin>;
> +		vcc11-supply = <&vcc_sysin>;
> +		vcc12-supply = <&vcc3v3_sys>;
> +		vcc13-supply = <&vcc_sysin>;
> +		vcc14-supply = <&vcc_sysin>;
> +
> +		regulators {
> +			/* rk3399 center logic supply */
> +			vdd_center: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-name = "vdd_center";
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-name = "vdd_cpu_l";
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_ddr";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: vcc_wl: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_1v8";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			/* not used */
> +			LDO_REG1 {
> +			};
> +
> +			/* not used */
> +			LDO_REG2 {
> +			};
> +
> +			vcc1v8_pmupll: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc1v8_pmupll";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_sdio: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vcc_sdio";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcca3v0_codec: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vcca3v0_codec";
> +
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
> +				regulator-name = "vcc_1v5";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1500000>;
> +				};
> +			};
> +
> +			vcca1v8_codec: LDO_REG7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca1v8_codec";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vcc_3v0";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcc3v3_s3: SWITCH_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc3v3_s3";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_s0: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc3v3_s0";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel1_gpio>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-ramp-delay = <1000>;
> +		vin-supply = <&vcc_1v8>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: regulator@41 {
> +		compatible = "silergy,syr828";
> +		reg = <0x41>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel2_gpio>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-name = "vdd_gpu";
> +		regulator-ramp-delay = <1000>;
> +		vin-supply = <&vcc_1v8>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;

> +	status = "okay";

status below and sort

> +
> +	clock-frequency = <100000>;
> +
> +	es8316: es8316@11 {
> +		compatible = "everest,es8316";
> +		reg = <0x11>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +	};
> +};
> +
> +&i2c3 {
> +	i2c-scl-rising-time-ns = <450>;
> +	i2c-scl-falling-time-ns = <15>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <600>;
> +	i2c-scl-falling-time-ns = <20>;
> +	status = "okay";
> +
> +	fusb0: fusb30x@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		fcs,int_n = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int_gpio>;
> +		status = "okay";
> +		vbus-supply = <&vbus_typec>;
> +
> +		connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			op-sink-microwatt = <1000000>;
> +			power-role = "dual";
> +			sink-pdos =
> +				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
> +			try-power-role = "sink";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					usbc_hs: endpoint {
> +						remote-endpoint =
> +							<&u2phy0_typec_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					usbc_ss: endpoint {
> +						remote-endpoint =
> +							<&tcphy0_typec_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					usbc_dp: endpoint {
> +						remote-endpoint =
> +							<&tcphy0_typec_dp>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&i2s1 {
> +	#sound-dai-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s_8ch_mclk_gpio>, <&i2s1_2ch_bus>;
> +	rockchip,playback-channels = <8>;
> +	rockchip,capture-channels = <8>;
> +	status = "okay";
> +};
> +
> +&io_domains {

> +	status = "okay";

status below

> +
> +	audio-supply = <&vcc_3v0>;
> +	sdmmc-supply = <&vcc_sdio>;

sort

> +	gpio1830-supply = <&vcc_3v0>;
> +};
> +
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	bus-scan-delay-ms = <1000>;
> +	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> +	max-link-speed = <2>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;

> +	status = "okay";

status below

> +	vpcie0v9-supply = <&vcca0v9_s3>;
> +	vpcie1v8-supply = <&vcca1v8_s3>;
> +	vpcie3v3-supply = <&vcc3v3_ssd>;
> +};
> +
> +&pinctrl {
> +	buttons {
> +		pwrbtn_gpio: pwrbtn-gpio {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +		lidbtn_gpio: lidbtn-gpio {
> +			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	dc-charger {
> +		dc_det_gpio: dc-det-gpio {
> +			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	es8316 {
> +		hp_det_gpio: hp-det-gpio {
> +			rockchip,pins =

> +				<0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;

same line is easier for our simple rockchip,pins parsers/convertor/check
scripts else we get loads of warnings

> +		};
> +	};
> +
> +	fusb302x {
> +		fusb0_int_gpio: fusb0-int-gpio {
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	i2s1 {
> +		i2s_8ch_mclk_gpio: i2s-8ch-mclk-gpio {

> +			rockchip,pins = <4 0 RK_FUNC_1 &pcfg_pull_none>;

Use correct pin name
RK_FUNC_1 is deprecated

> +		};
> +	};
> +
> +	lcd-panel {
> +		lcdvcc_en_gpio: lcdvcc-en-gpio {
> +			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		panel_en_gpio: panel-en-gpio {
> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		lcd_panel_reset_gpio: lcd-panel-reset-gpio {
> +			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	leds {
> +		pwrled_gpio: pwrled_gpio {
> +			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		slpled_gpio: slpled_gpio {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l_gpio: pmic-int-l-gpio {
> +			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	sdcard {
> +		sdmmc0_pwr_h_gpio: sdmmc0-pwr-h-gpio {
> +			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h_gpio: wifi-enable-h-gpio {
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb-typec {
> +		vcc5v0_typec0_en_gpio: vcc5v0-typec0-en-gpio {
> +			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	usb2 {
> +		pwr_5v_gpio: pwr-5v-gpio {
> +			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_host_en_gpio: vcc5v0-host-en-gpio {
> +			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	wireless-bluetooth {
> +		bt_wake_gpio: bt-wake-gpio {
> +			rockchip,pins =

> +				<2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;

same line

> +		};
> +		bt_host_wake_gpio: bt-host-wake-gpio {
> +			rockchip,pins =

> +				<0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;

same line

> +		};
> +
> +		bt_reset_gpio: bt-reset-gpio {
> +			rockchip,pins =

> +				<0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;

same line

> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmu1830-supply = <&vcc_3v0>;
> +	status = "okay";
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
> +	vref-supply = <&vcca1v8_s3>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;

> +	max-frequency = <150000000>;

max-frequency already defined in dtsi

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};

	sdmmc: mmc@fe320000 {
		max-frequency = <150000000>;
	};

> +
> +&sdio0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	disable-wp;

disable-wp not used in combination with emmc and sdio

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs200-1_8v;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&spi1 {

> +	status = "okay";

status below

> +	max-freq = <10000000>;
> +
> +	spiflash: spi-flash@0 {

Can't find spi-flash in the documentation, maybe just use flash?

> +		#address-cells = <0x1>;
> +		#size-cells = <1>;

Where do we need #address-cells and #size-cells for?

> +		compatible = "jedec,spi-nor";

Sort compatible to the top, reg below and then the rest

> +		m25p,fast-read;
> +		reg = <0x0>;

Change to:
		reg = <0>;

> +		spi-max-frequency = <10000000>;
> +		status = "okay";
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			loader@8000 {
> +				label = "loader";
> +				reg = <0x0 0x3F8000>;
> +			};
> +
> +			env@3f8000 {
> +				label = "env";
> +				reg = <0x3F8000 0x8000>;
> +			};
> +
> +			vendor@7c0000 {
> +				label = "vendor";
> +				reg = <0x7C0000 0x40000>;
> +			};
> +		};
> +	};
> +};
> +
> +&tcphy0 {
> +	status = "okay";
> +};
> +
> +&tcphy0_dp {
> +	port {
> +		tcphy0_typec_dp: endpoint {
> +			remote-endpoint = <&usbc_dp>;
> +		};
> +	};
> +};
> +
> +&tcphy0_usb3 {
> +	port {
> +		tcphy0_typec_ss: endpoint {
> +			remote-endpoint = <&usbc_ss>;
> +		};
> +	};
> +};
> +
> +&tcphy1 {
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	/* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-mode = <1>;
> +	/* tshut polarity 0:LOW 1:HIGH */
> +	rockchip,hw-tshut-polarity = <1>;
> +	status = "okay";
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +
> +	u2phy0_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy0_host: host-port {
> +		phy-supply = <&vcc5v0_otg>;
> +		status = "okay";
> +	};
> +
> +	port {
> +		u2phy0_typec_hs: endpoint {
> +			remote-endpoint = <&usbc_hs>;
> +		};
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
> +		phy-supply = <&vcc5v0_otg>;
> +		status = "okay";
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;

> +	status = "okay";

status below

> +	uart-has-rtscts;
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4345c5";
> +		clocks = <&rk808 1>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		max-speed = <1500000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_gpio &bt_wake_gpio &bt_reset_gpio>;
> +		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +		vbat-supply = <&wifi_bat>;
> +		vddio-supply = <&vcc_wl>;
> +	};
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +&usbdrd3_0 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_0 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbdrd3_1 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_1 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&vopb {
> +	status = "okay";
> +};
> +
> +&vopb_mmu {
> +	status = "okay";
> +};
> +
> +&vopl {
> +	status = "okay";
> +};
> +
> +&vopl_mmu {
> +	status = "okay";
> +};
> -- 
> 2.24.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
