Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D9F1E98B5
	for <lists+linux-rockchip@lfdr.de>; Sun, 31 May 2020 18:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TIFk+cCmCtWJj6nox/IRk4q2h9hJPSr092Mu/xA8DUY=; b=AOBG8cynGoQ2DV
	uO01bbWWqHkOssxxAI9frj9c0/9ICcBSepCSLNa21dsbnNmUJ2OBfTEMzKsLlx21jVAstBTSloXaL
	WzseB385YEC57lDNff7/JzXEHIdE6un/JyPue7DcHC2lGSclv9xaVi/baXPAXfuaNPk11A6cHGR8s
	0Kl5wd5KJ2Watw7pG1lYpPt0+UX0ppcx9e2TS/I8ZbS4iocVasdoYByWNMPkh6UqsoAWsqiJGJorm
	270yuephQyNmyurBRDN48Tu7dTqD+XnLaBySyW+k11mv8AkHJ8KE+bUcxA3UCy0+NR/qoVALYHkAo
	Iyx8ELX57N5eMrKqMmeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQPg-0007jI-Sp; Sun, 31 May 2020 16:02:16 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQPX-0007cK-Ni
 for linux-rockchip@lists.infradead.org; Sun, 31 May 2020 16:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1590940890;
 bh=U/4qnAWdMBv+lykGYpsyEVA8nVAvs1nZtwgBFhStL5E=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=n5mqnGewaLC67ueg0MdUm1zRwk+VHJNxDiGrgOC8CmQEynOezmJ5gMU2rAzE8f/dq
 8N4GIJG/IkUbs7BRGCEl48Il2yo4XzyGGUER/24jr2L0o1O9HmWAjHa92uNquyEKsO
 VQ1rLGLYsHzcuj7fa5f1h0NyEhJDAkDgKnM9+p+g=
X-QQ-FEAT: 4niNLWlTU4BrRgTfzPI+nxEMAeLPHBuMQhJg7cyLKCVleLEKDVyRqPLeCecey
 s6XXogmj03Z5DwmO2sDoQ4eJbPeoTx/zs2jjIvxbAVVOXgXCWo+QW98hCDxY0UmB6GscPaq
 cymK3pf6ZYKu2ftdmf5FocypkhXT6qF5mkUVxnwAu124/mcmdvahOM1HYFg3wInCnDl8rwU
 bxbkkWicZ36eHkT+zbqWsLa+gwsjEdbqu7BxkPqmBPkNXtGivgqqrlxYbuYwaiJ8YZUxI5L
 +sTqseYRPek/jmVzjdJhxz3q2H35VJh2FnKA==
X-QQ-SSF: 00000000000000F000000000000000Z
X-QQ-XMAILINFO: OevwvwCU5F0LF0DviDZ590Ie+WifSEC0+IigA/1ryJykMBCHdy3wcMP2ynZktD
 ACfUz96BRmYIFOlaLNnoIXXxsq+3bwNw5RtwkAB4gNKDFHCklosZwf5QxpUy123leyG8z9nf51bMc
 LLlCN+DTYEUrRbjIMgd2UFwkjfm97VpXVh1GqNgH6Wa9nCfUEZTm3o1QafEc6CMW+kw0UKSCmuv0d
 MpXnU7iT/aV979vOhu0uCB3Tvr6wg1YqRjIZkHPl8G7HlrOBljUNoPz3jk96mvkvfHSNnwzcN/v30
 63JjgEFmgi2nJEEsD0fAnfJ8vhneCSPjMH73cIpVDt/R+hZTq1nGkFHIw69AJimbDw3azK5M2W3OW
 NQ7KLLcXMQXjOMDs2cYvreSQrehxtm1NuCnpTmSQFKpCxmS4veWeA3U19PXtRJ3HHHFkwRI3dMk+E
 YcCPopjBnXpulMtclFw2K7QyxBmLVtow1ekC2WuSTY4NUiV1lTa8fNm6bMatA/+3dKZWqBrjoFmWl
 x9ewD9CRbvlU3a+TGdx3wUstRN4/AS4rsCZZfysaqZyktNQj06iWQ9EzePnPZIuhELX448eFzdDxR
 fnzyghi4k0j9hgRGzvyMoyZ/juRnshzVE+1cvrcfQke6aph5nwqCCHkFCxezJmYKRDWGd4z0gdYZb
 H9rX4bb4H6bVutIcyuwSIQu43Vzly7MAbm2VVfdSS03equ16RC9L66BlpWxRpCYpHjuFyM
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 255.3.54.152
X-QQ-STYLE: 
X-QQ-mid: webmail321t1590940888t3261301
From: "=?utf-8?B?Yi5sLmh1YW5n?=" <banglang.huang@foxmail.com>
To: "=?utf-8?B?dS1ib290?=" <u-boot@lists.denx.de>
Subject: [PATCHv5][1/2] rockchip: rk3328: add rock-pi-e dts file
Mime-Version: 1.0
Date: Mon, 1 Jun 2020 00:01:28 +0800
X-Priority: 3
Message-ID: <tencent_11E1448585BB288D0AB6C505D8BBD1FF070A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Mon, 01 Jun 2020 00:01:30 +0800 (CST)
Feedback-ID: webmail:foxmail.com:bgforeign:bgforeign12
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_090208_280227_A5E8084F 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.207.22.56 listed in list.dnswl.org]
 1.3 RCVD_ILLEGAL_IP        Received: contains illegal IP address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.207.22.56 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [banglang.huang[at]foxmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: =?utf-8?B?cGhpbGlwcC50b21zaWNo?= <philipp.tomsich@theobroma-systems.com>,
 =?utf-8?B?dHJpbmk=?= <trini@konsulko.com>,
 =?utf-8?B?Q2hlbi1ZdSZuYnNwO1RzYWk=?= <wens@kernel.org>,
 =?utf-8?B?a2V2ZXIueWFuZw==?= <kever.yang@rock-chips.com>,
 =?utf-8?B?bGludXgtcm9ja2NoaXA=?= <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The ROCK-PI-E is a credit card size SBC based on Rockchip RK3328
Quad-Core ARM Cortex A53.

    Net - Dual ethernet port, 1 X Gbe, 1 X 100M
    USB - USB 3.0
    DC  - USB-Type C, 5V 2A
    Storage - TF card, eMMC

Just build idbloader.img and u-boot.itb for Rockpi E board and
follow the blow steps to replace the relevant partition.

    dd if=idbloader.img of=/dev/sdcard seek=64 conv=notrunc
    dd if=u-boot.itb of=/dev/sdcard seek=16384 conv=notrunc

Signed-off-by: Banglang Huang <banglang.huang@foxmail.com>
---

Changes for v5
    - Update the board information to
      doc/board/rockchip/rockchip.rst

Changes for v4

    - separate dts file to another commit
    - fix bootup on tpl / spl mode

Changes for v3

    - rename to rock-pi-e

Changes for v2

    - add introduction for rockpie in doc/README.rockchip
    - enable CONFIG_MISC_INIT_R, CONFIG_SMBIOS_MANUFACTURER,
      and CONFIG_SMBIOS_PRODUCT_NAME
---
 arch/arm/dts/Makefile                     |   3 +-
 arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi |  33 +++
 arch/arm/dts/rk3328-rock-pi-e.dts         | 267 ++++++++++++++++++++++
 3 files changed, 302 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3328-rock-pi-e.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 12ec6c71dc..67d1adea2d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -107,7 +107,8 @@ dtb-$(CONFIG_ROCKCHIP_RK3308) += \
 dtb-$(CONFIG_ROCKCHIP_RK3328) += \
 	rk3328-evb.dtb \
 	rk3328-roc-cc.dtb \
-	rk3328-rock64.dtb
+	rk3328-rock64.dtb \
+	rk3328-rock-pi-e.dtb
 
 dtb-$(CONFIG_ROCKCHIP_RK3368) += \
 	rk3368-lion.dtb \
diff --git a/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi b/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
new file mode 100644
index 0000000000..bf5b1f3adc
--- /dev/null
+++ b/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2020 Radxa
+ */
+
+#include "rk3328-u-boot.dtsi"
+#include "rk3328-sdram-ddr3-666.dtsi"
+
+&gpio0 {
+	u-boot,dm-spl;
+};
+
+&pinctrl {
+	u-boot,dm-spl;
+};
+
+&sdmmc0m1_gpio {
+	u-boot,dm-spl;
+};
+
+&pcfg_pull_up_4ma {
+	u-boot,dm-spl;
+};
+
+&usb_host0_xhci {
+	vbus-supply = <&vcc5v0_host_xhci>;
+	status = "okay";
+};
+
+/* Need this and all the pinctrl/gpio stuff above to set pinmux */
+&vcc_sd {
+	u-boot,dm-spl;
+};
diff --git a/arch/arm/dts/rk3328-rock-pi-e.dts b/arch/arm/dts/rk3328-rock-pi-e.dts
new file mode 100644
index 0000000000..21656b64a2
--- /dev/null
+++ b/arch/arm/dts/rk3328-rock-pi-e.dts
@@ -0,0 +1,267 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2020 Radxa
+ */
+
+/dts-v1/;
+#include "rk3328.dtsi"
+
+/ {
+	model = "Radxa Rockpi E";
+	compatible = "radxa,rock-pi-e", "rockchip,rk3328";
+
+	chosen {
+	stdout-path = "serial2:1500000n8";
+	};
+
+	gmac_clkin: external-gmac-clock {
+	compatible = "fixed-clock";
+	clock-frequency = <125000000>;
+	clock-output-names = "gmac_clkin";
+	#clock-cells = <0>;
+	};
+
+	vcc_sd: sdmmc-regulator {
+	compatible = "regulator-fixed";
+	gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0m1_gpio>;
+	regulator-name = "vcc_sd";
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	vin-supply = <&vcc_io>;
+	};
+
+	vcc5v0_host_xhci: vcc5v0-host-xhci-drv {
+	compatible = "regulator-fixed";
+	enable-active-high;
+	regulator-name = "vcc5v0_host_xhci";
+	gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+	regulator-min-microvolt = <5000000>;
+	regulator-max-microvolt = <5000000>;
+	};
+
+	vcc_sys: vcc-sys {
+	compatible = "regulator-fixed";
+	regulator-name = "vcc_sys";
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-min-microvolt = <5000000>;
+	regulator-max-microvolt = <5000000>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	supports-emmc;
+	disable-wp;
+	non-removable;
+	num-slots = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc18_emmc>;
+	status = "okay";
+};
+
+&gmac2io {
+	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
+	clock_in_out = "input";
+	phy-supply = <&vcc_io>;
+	phy-mode = "rgmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins>;
+	snps,force_thresh_dma_mode;
+	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
+	tx_delay = <0x26>;
+	rx_delay = <0x11>;
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	rk805: rk805@18 {
+	compatible = "rockchip,rk805";
+	status = "okay";
+	reg = <0x18>;
+	interrupt-parent = <&gpio2>;
+	interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
+	#clock-cells = <1>;
+	clock-output-names = "xin32k", "rk805-clkout2";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmic_int_l>;
+	rockchip,system-power-controller;
+	wakeup-source;
+
+	vcc1-supply = <&vcc_sys>;
+	vcc2-supply = <&vcc_sys>;
+	vcc3-supply = <&vcc_sys>;
+	vcc4-supply = <&vcc_sys>;
+	vcc5-supply = <&vcc_io>;
+	vcc6-supply = <&vcc_sys>;
+
+	regulators {
+	vdd_logic: DCDC_REG1 {
+	regulator-name = "vdd_logic";
+	regulator-min-microvolt = <712500>;
+	regulator-max-microvolt = <1450000>;
+	regulator-ramp-delay = <12500>;
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	regulator-suspend-microvolt = <1000000>;
+	};
+	};
+
+	vdd_arm: DCDC_REG2 {
+	regulator-name = "vdd_arm";
+	regulator-min-microvolt = <712500>;
+	regulator-max-microvolt = <1450000>;
+	regulator-ramp-delay = <12500>;
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	regulator-suspend-microvolt = <950000>;
+	};
+	};
+
+	vcc_ddr: DCDC_REG3 {
+	regulator-name = "vcc_ddr";
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	};
+	};
+
+	vcc_io: DCDC_REG4 {
+	regulator-name = "vcc_io";
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	regulator-suspend-microvolt = <3300000>;
+	};
+	};
+
+	vcc_18: LDO_REG1 {
+	regulator-name = "vcc_18";
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	regulator-suspend-microvolt = <1800000>;
+	};
+	};
+
+	vcc18_emmc: LDO_REG2 {
+	regulator-name = "vcc18_emmc";
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	regulator-suspend-microvolt = <1800000>;
+	};
+	};
+
+	vdd_10: LDO_REG3 {
+	regulator-name = "vdd_10";
+	regulator-min-microvolt = <1000000>;
+	regulator-max-microvolt = <1000000>;
+	regulator-always-on;
+	regulator-boot-on;
+	regulator-state-mem {
+	regulator-on-in-suspend;
+	regulator-suspend-microvolt = <1000000>;
+	};
+	};
+	};
+	};
+};
+
+&io_domains {
+	status = "okay";
+
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc18_emmc>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vcc_io>;
+	vccio5-supply = <&vcc_io>;
+	vccio6-supply = <&vcc_io>;
+	pmuio-supply = <&vcc_io>;
+};
+
+&pinctrl {
+	pmic {
+	pmic_int_l: pmic-int-l {
+	rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+	};
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	disable-wp;
+	max-frequency = <150000000>;
+	num-slots = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_dectn &sdmmc0_bus4>;
+	supports-sd;
+	vmmc-supply = <&vcc_sd>;
+	status = "okay";
+};
+
+&saradc {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb20_otg {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
-- 
2.17.1
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
