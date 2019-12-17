Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B8122A94
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Dec 2019 12:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fJ2giJFbh2OjrrW1pt7Sqoa+wZoRQMAs2DF1wNx+xNI=; b=p1B3AwUXlbso1XszczaPTy7/gd
	qGjyUSBjDevPCh9Vguk/IXpgbHCtCGNjlqoZIuPcFj1RBXAXb66bq7CJrm0Ok6pG8qI2oQjlWbjCq
	wthNeo1PEXGUNBNyQXX1gnWg2DBkqDoKAXlz7dWH9TXxVG4oytRWNPNx886VGOr6+2g97CK+tJEdf
	eet7i4gxz6GNt4bdmyzlAOsuPWG38eMHcGutshTiBTL+GbDHp9B7i/u3+jMCywEQC/H1soYl+RNSl
	R5SyqepNHDWR2pAj5gLBUgBAKsAICiSoaS5PhFQBujxj8a1NLAQxVLI0o9HUPQOSs4HB0Yjoa4AwB
	U2BZ8lAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBLU-0004v5-TS; Tue, 17 Dec 2019 11:48:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBLR-0004uf-Ks
 for linux-rockchip@lists.infradead.org; Tue, 17 Dec 2019 11:48:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so10955495wrt.6
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Dec 2019 03:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=vKL/qBrqkJWUKUt16Um6W8EUzvFu5xAqAnsM7HaP3eY=;
 b=KK8NbWwQ6asYNvlzh/jpZoq6Sw1VsVSnVHahEXzpk7bGxfPMuZFic7yw7/Wi6WsIRe
 d1z0J2BbWho6oknv/CFVyJ8cWzk4YSRA3KcIgCVeIym7Cs1z3DO4MRxGBHqGMCV6dmcs
 fWj0PereIdE4pGZoeq3Qrs10fOVHi8F7ObVmVLZMdQ3Y5G/5EZonvK9/fSIlNvf0KqJh
 NWyeynoz6GKRiu5dwQdJaG/tdAjqpZ993VSBPJXEyitptWA5M34vJlZX2z2OG/ECR7uz
 LUWmZFhGEiYbZ8QdQnHRahdrRysba8x/oFCM1xtutORSus9sT54FFPsgm7Y4g7ZWZ5ZY
 FSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vKL/qBrqkJWUKUt16Um6W8EUzvFu5xAqAnsM7HaP3eY=;
 b=J8CTcSP5jYUPMjG5yzPF1/G8axlbVbsY+Uev26zaKLJNKEAznZVAC8hWicFz+wP6hu
 zCRrtEMzocZ+SoGG360x8rCRoSwKCj2yfQisGp9OunpJWsQ1KvRx92XVBqJiKex2Ht5Z
 R/lMCnCmLGAIsGwGxP1h/02BZ/Oos/7M0QQYcv7/MZRnWWplfkXi8r3Vos4E0lU4HC1X
 b2lKf4plsg3RiBC4+60iFi+4T4qnJnblXXEsHzf2wmE5ayFX4G3WeT505YQjAU3pV0vK
 9pU2yqC7MwFGvmhSf3VUv7Ty6o8Gw4CSKSGTLGByRiUbkDCPGVO7ourKJIctNvuSzZji
 CKZg==
X-Gm-Message-State: APjAAAVreGPD4sVDyXEiytAV6jX5k2jm1hW2pdnt5KR8/BMUZDYMR7pj
 7pGAvZJw5VknG1Aew/mmAuVQwPrz
X-Google-Smtp-Source: APXvYqzJah/EtXThGbMp9HsfFIY5TgqTcfkPwXCwmfWol5ggwd0ts0N3im1IqPND+IMBZhOwcuAk1Q==
X-Received: by 2002:adf:fc0c:: with SMTP id i12mr38655326wrr.74.1576583331609; 
 Tue, 17 Dec 2019 03:48:51 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b16sm25694183wrj.23.2019.12.17.03.48.50
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 03:48:51 -0800 (PST)
To: linux-rockchip@lists.infradead.org
References: <20191217080014.11756-1-akash@openedev.com>
Subject: Re: Re: [V2 1/1 PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <80ca8b77-6a55-ef33-b772-eccaad8871e6@gmail.com>
Date: Tue, 17 Dec 2019 12:48:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191217080014.11756-1-akash@openedev.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_034853_685677_28E232A5 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Akash,

My commit for the second time! Reply!

Question for Heiko:
Should bus-width be defined all in the rk3308 core dtsi or
move them to dts like the rest?

> +&emmc {
> +	bus-width = <4>;

Is this value correct for emmc?
bus-width = <8> is already defined in rk3308.dtsi,
so remove or change value.

> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;

> +	supports-sd;

supports-sd is not mentioned in mmc-controller.yaml

> +	disable-wp;

The mmc.txt didn't explicitly say disable-wp is for SD card slot only,
but that is what it was designed for in the first place.
Remove all disable-wp from emmc or sdio controllers.

> +	non-removable;
> +	num-slots = <1>;
> +	vin-supply = <&vcc_io>;
> +	status = "okay";
> +};

> +&sdmmc {
> +	bus-width = <4>;

bus-width = <4> is already defined in rk3308.dtsi,
so remove or change value.

> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;

> +	max-frequeency = <150000000>;

replace max-frequeency by max-frequency
max-frequency = <150000000> is already defined in rk3308.dtsi,
so remove or change value.

> +	supports-sd;

supports-sd is not mentioned in mmc-controller.yaml

> +	disable-wp;
> +	num-slots = <1>;
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
> +	card-detect-delay = <800>;

Why is this value set to 800? All other dts use 200.
What changed in the specifications?

> +	status = "okay";
> +};

> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;

bus-width = <4> is already defined in rk3308.dtsi,
so remove or change value.

> +	max-frequency = <1000000>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	supports-sdio;

supports-sdio is not mentioned in mmc-controller.yaml

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};

From rk3308.dtsi:

	emmc: dwmmc@ff490000 {
		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff490000 0x0 0x4000>;
		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
		bus-width = <8>;
		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		status = "disabled";
	};

	sdmmc: dwmmc@ff480000 {
		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff480000 0x0 0x4000>;
		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
		bus-width = <4>;
		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		pinctrl-names = "default";
		pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
		status = "disabled";
	};

	sdio: dwmmc@ff4a0000 {
		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff4a0000 0x0 0x4000>;
		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
		bus-width = <4>;
		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		pinctrl-names = "default";
		pinctrl-0 = <&sdio_bus4 &sdio_cmd &sdio_clk>;
		status = "disabled";
	};

From host.c:

	device_property_read_bool(dev, "non-removable");
	device_property_read_bool(dev, "cd-inverted");
	device_property_read_bool(dev, "broken-cd");
	device_property_read_bool(dev, "wp-inverted");
	device_property_read_bool(dev, "disable-wp");
	device_property_read_u32(dev, "bus-width", &bus_width);
	device_property_read_u32(dev, "max-frequency", &host->f_max);
	if (device_property_read_bool(dev, "cap-sd-highspeed"))
		host->caps |= MMC_CAP_SD_HIGHSPEED;
	if (device_property_read_bool(dev, "cap-mmc-highspeed"))
		host->caps |= MMC_CAP_MMC_HIGHSPEED;
	if (device_property_read_bool(dev, "sd-uhs-sdr12"))
		host->caps |= MMC_CAP_UHS_SDR12;
	if (device_property_read_bool(dev, "sd-uhs-sdr25"))
		host->caps |= MMC_CAP_UHS_SDR25;
	if (device_property_read_bool(dev, "sd-uhs-sdr50"))
		host->caps |= MMC_CAP_UHS_SDR50;
	if (device_property_read_bool(dev, "sd-uhs-sdr104"))
		host->caps |= MMC_CAP_UHS_SDR104;
	if (device_property_read_bool(dev, "sd-uhs-ddr50"))
		host->caps |= MMC_CAP_UHS_DDR50;
	if (device_property_read_bool(dev, "cap-power-off-card"))
		host->caps |= MMC_CAP_POWER_OFF_CARD;
	if (device_property_read_bool(dev, "cap-mmc-hw-reset"))
		host->caps |= MMC_CAP_HW_RESET;
	if (device_property_read_bool(dev, "cap-sdio-irq"))
		host->caps |= MMC_CAP_SDIO_IRQ;
	if (device_property_read_bool(dev, "full-pwr-cycle"))
		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE;
	if (device_property_read_bool(dev, "keep-power-in-suspend"))
		host->pm_caps |= MMC_PM_KEEP_POWER;
	if (device_property_read_bool(dev, "wakeup-source") ||
	    device_property_read_bool(dev, "enable-sdio-wakeup")) /* legacy */
		host->pm_caps |= MMC_PM_WAKE_SDIO_IRQ;
	if (device_property_read_bool(dev, "mmc-ddr-3_3v"))
		host->caps |= MMC_CAP_3_3V_DDR;
	if (device_property_read_bool(dev, "mmc-ddr-1_8v"))
		host->caps |= MMC_CAP_1_8V_DDR;
	if (device_property_read_bool(dev, "mmc-ddr-1_2v"))
		host->caps |= MMC_CAP_1_2V_DDR;
	if (device_property_read_bool(dev, "mmc-hs200-1_8v"))
		host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
	if (device_property_read_bool(dev, "mmc-hs200-1_2v"))
		host->caps2 |= MMC_CAP2_HS200_1_2V_SDR;
	if (device_property_read_bool(dev, "mmc-hs400-1_8v"))
		host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;
	if (device_property_read_bool(dev, "mmc-hs400-1_2v"))
		host->caps2 |= MMC_CAP2_HS400_1_2V | MMC_CAP2_HS200_1_2V_SDR;
	if (device_property_read_bool(dev, "mmc-hs400-enhanced-strobe"))
		host->caps2 |= MMC_CAP2_HS400_ES;
	if (device_property_read_bool(dev, "no-sdio"))
		host->caps2 |= MMC_CAP2_NO_SDIO;
	if (device_property_read_bool(dev, "no-sd"))
		host->caps2 |= MMC_CAP2_NO_SD;
	if (device_property_read_bool(dev, "no-mmc"))
		host->caps2 |= MMC_CAP2_NO_MMC;
	device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type);
	device_property_read_u32(dev, "post-power-on-delay-ms",
				 &host->ios.power_delay_ms);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
