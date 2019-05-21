Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27491258F2
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 22:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vHJj0CtpKEORGNMJR+Hw9Nbl/tMHJawZ/T0jZ5W8myU=; b=TO1VNgy8w+SA2T
	gtv9cCBYwyfxe9YFRInruIJnEeVQ1IBz2dewsP91qPJsQMlG+tFUyL51CxwVFm0FVTV1qzBzaUhN2
	e8R8D1HWrN0qb8qXbyNMH1f5MqTY2fbMc+GU2U8VjGAlWHOKpeVGgY7sxRO6gNG57bSNm72enqDkw
	1WbYXBowDuc09NHeKQukObbTIeyuSYr6kaXA9Xqi78RkIpwYzwlZDlH2dwgeSHaVP1KGGeDFKEswr
	t4YJhdeYBAxBBooCA8qFeVbBMB+6iVmTitnwFxtOihXSumGgtrzUXf5Z0xyRemIXumX3y7odnXgYs
	h24kRr+TuDRWaX2mbiMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBRW-0004zP-6K; Tue, 21 May 2019 20:33:02 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBRB-0004YL-81
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 20:32:44 +0000
Received: by mail-it1-x144.google.com with SMTP id g23so3671598iti.1
 for <linux-rockchip@lists.infradead.org>; Tue, 21 May 2019 13:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TL0Rco+HJb/XdiRCUNcHvK2NcbT9epjRSGpGsvVbQoI=;
 b=QBq9fahcLU2tgJhshCN0dwVdL0HE77OlAbTaVT8QDvwmSf17Ll5gBABBcZbQPKSgI8
 wPLldHhQueXNBElEdaeVQGucuCyfo4uJDJwgYvxXvlJB+Ro8K+sPZp03zZ6h3jcX+Zwn
 8KN7ULMXhj+3tDAZroKu43AHQM5IoJZShiDBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TL0Rco+HJb/XdiRCUNcHvK2NcbT9epjRSGpGsvVbQoI=;
 b=YoV7Qiz4GTHVQ88SYxIU5RsVyHmTQ80ozrgiERgET0UYVsS4Lwfec3cyqQiKNUy+7K
 Pv3VY91fJ1e40nZBc1VmMTLO//OEIva3Kt7deesv4UFkKS3a6NMnDJEIVvoBJbsCszC4
 kBswg2P/K6MWVCwXf1B1rKpt6sD4A3iGKD9Ct1XRBq8F2hGJHofzcRpEDnC0FMxh2xEn
 eAic62ScABzgeZj640eXuHUUJYZHzcJqON4qkUfWiKlmijPYjMZhpzE6KJuUNy4DKB5I
 11r0AYeWI59efdbuJmlnfeXg6V8y7rht8G+9yWzTva17Lp6cBDM/ZVy0J5Lw0M8kYCKI
 ZNnQ==
X-Gm-Message-State: APjAAAUFdsYcBH9eW7iYmb6GPxKvB2g0gL24mCdMbo5PKGMWC89LZE91
 r9//UPx/ynzneoGsWAAPfEYoIQ==
X-Google-Smtp-Source: APXvYqzMgS+2Y+L54Bugxjb3Y7W5RtvSETPi7Pcr1ybp84tqKgN8/mOHXp8N4/4GVoMpgsDaegyHyg==
X-Received: by 2002:a24:278c:: with SMTP id g134mr4385454ita.49.1558470759345; 
 Tue, 21 May 2019 13:32:39 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id e22sm7205710ioe.45.2019.05.21.13.32.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 13:32:38 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] ARM: dts: rockchip: Add pin names for rk3288-veyron-minnie
Date: Tue, 21 May 2019 13:32:14 -0700
Message-Id: <20190521203215.234898-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_133241_284250_8E0C4561 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

We can now use the "gpio-line-names" property to provide the names for
all the pins on a board.  Let's use this to provide the names for all
the pins on rk3288-veyron-minnie.

In general the names here come straight from the schematic.  That
means even if the schematic name is weird / doesn't have consistent
naming conventions / has typos I still haven't made any changes.

The exception here is for two pins: the recovery switch and the write
protect detection pin.  These two pins need to have standardized names
since crossystem (a Chrome OS tool) uses these names to query the
pins.  In downstream kernels crossystem used an out-of-tree driver to
do this but it has now been moved to the gpiod API and needs the
standardized names.

It's expected that other rk3288-veyron boards will get similar patches
shortly.

NOTE: I have sorted the "gpio" section to be next to the "pinctrl"
section since it seems to logically make the most sense there.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 212 +++++++++++++++++++++
 1 file changed, 212 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index ce57881625ec..a65099b4aef1 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -184,6 +184,218 @@
 	pinctrl-0 = <&vcc50_hdmi_en>;
 };
 
+&gpio0 {
+	gpio-line-names = "PMIC_SLEEP_AP",
+			  "DDRIO_PWROFF",
+			  "DDRIO_RETEN",
+			  "TS3A227E_INT_L",
+			  "PMIC_INT_L",
+			  "PWR_KEY_L",
+			  "AP_LID_INT_L",
+			  "EC_IN_RW",
+
+			  "AC_PRESENT_AP",
+			  /*
+			   * RECOVERY_SW_L is Chrome OS ABI.  Schematics call
+			   * it REC_MODE_L.
+			   */
+			  "RECOVERY_SW_L",
+			  "OTP_OUT",
+			  "HOST1_PWR_EN",
+			  "USBOTG_PWREN_H",
+			  "AP_WARM_RESET_H",
+			  "nFALUT2",
+			  "I2C0_SDA_PMIC",
+
+			  "I2C0_SCL_PMIC",
+			  "SUSPEND_L",
+			  "USB_INT";
+};
+
+&gpio2 {
+	gpio-line-names = "CONFIG0",
+			  "CONFIG1",
+			  "CONFIG2",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "CONFIG3",
+
+			  "PROCHOT#",
+			  "EMMC_RST_L",
+			  "",
+			  "",
+			  "BL_PWR_EN",
+			  "AVDD_1V8_DISP_EN",
+			  "TOUCH_INT",
+			  "TOUCH_RST",
+
+			  "I2C3_SCL_TP",
+			  "I2C3_SDA_TP";
+};
+
+&gpio3 {
+	gpio-line-names = "FLASH0_D0",
+			  "FLASH0_D1",
+			  "FLASH0_D2",
+			  "FLASH0_D3",
+			  "FLASH0_D4",
+			  "FLASH0_D5",
+			  "FLASH0_D6",
+			  "FLASH0_D7",
+
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "FLASH0_CS2/EMMC_CMD",
+			  "",
+			  "FLASH0_DQS/EMMC_CLKO";
+};
+
+&gpio4 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "UART0_RXD",
+			  "UART0_TXD",
+			  "UART0_CTS",
+			  "UART0_RTS",
+			  "SDIO0_D0",
+			  "SDIO0_D1",
+			  "SDIO0_D2",
+			  "SDIO0_D3",
+
+			  "SDIO0_CMD",
+			  "SDIO0_CLK",
+			  "dev_wake",
+			  "",
+			  "WIFI_ENABLE_H",
+			  "BT_ENABLE_L",
+			  "WIFI_HOST_WAKE",
+			  "BT_HOST_WAKE";
+};
+
+&gpio5 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "",
+			  "",
+			  "Volum_Up#",
+			  "Volum_Down#",
+			  "SPI0_CLK",
+			  "SPI0_CS0",
+			  "SPI0_TXD",
+			  "SPI0_RXD",
+
+			  "",
+			  "",
+			  "",
+			  "VCC50_HDMI_EN";
+};
+
+&gpio6 {
+	gpio-line-names = "I2S0_SCLK",
+			  "I2S0_LRCK_RX",
+			  "I2S0_LRCK_TX",
+			  "I2S0_SDI",
+			  "I2S0_SDO0",
+			  "HP_DET_H",
+			  "",
+			  "INT_CODEC",
+
+			  "I2S0_CLK",
+			  "I2C2_SDA",
+			  "I2C2_SCL",
+			  "MICDET",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "SDMMC_D0",
+			  "SDMMC_D1",
+			  "SDMMC_D2",
+			  "SDMMC_D3",
+			  "SDMMC_CLK",
+			  "SDMMC_CMD";
+};
+
+&gpio7 {
+	gpio-line-names = "LCDC_BL",
+			  "PWM_LOG",
+			  "BL_EN",
+			  "TRACKPAD_INT",
+			  "TPM_INT_H",
+			  "SDMMC_DET_L",
+			  /*
+			   * AP_FLASH_WP_L is Chrome OS ABI.  Schematics call
+			   * it FW_WP_AP.
+			   */
+			  "AP_FLASH_WP_L",
+			  "EC_INT",
+
+			  "CPU_NMI",
+			  "DVS_OK",
+			  "SDMMC_WP",
+			  "EDP_HPD",
+			  "DVS1",
+			  "nFALUT1",
+			  "LCD_EN",
+			  "DVS2",
+
+			  "VCC5V_GOOD_H",
+			  "I2C4_SDA_TP",
+			  "I2C4_SCL_TP",
+			  "I2C5_SDA_HDMI",
+			  "I2C5_SCL_HDMI",
+			  "5V_DRV",
+			  "UART2_RXD",
+			  "UART2_TXD";
+};
+
+&gpio8 {
+	gpio-line-names = "RAM_ID0",
+			  "RAM_ID1",
+			  "RAM_ID2",
+			  "RAM_ID3",
+			  "I2C1_SDA_TPM",
+			  "I2C1_SCL_TPM",
+			  "SPI2_CLK",
+			  "SPI2_CS0",
+
+			  "SPI2_RXD",
+			  "SPI2_TXD";
+};
+
 &pinctrl {
 	backlight {
 		bl_pwr_en: bl_pwr_en {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
