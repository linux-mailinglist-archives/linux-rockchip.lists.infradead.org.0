Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20557E525
	for <lists+linux-rockchip@lfdr.de>; Fri,  2 Aug 2019 00:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xfNwn6TYmChXJwIHA5W2HeCWRnvgjHTXAj+OLUVJ+qA=; b=C09UUjmFJdp+3k
	4Nfk+9Hmh3CNVjiNyFB4fAjqwTOXGBSFh14yCRTI6mN69O9ii/Q41WzVf0SRuBKs93bXrHOKV6Wrf
	UJdjd+0mrhIra5sYfZZMLFyXtTatPY9z0IcIc54GBvEKzU/pDnuJBtps8hSEZilagBG9Gq/rSpWkM
	5EwLNu+BOdIPMAP0I5YBmicPAVkImhAogXsdkPMt7iNiC9A8Wh/LaAVa3ZNcdivHtt6vS3hKak7Yn
	JBU4jMygFv1QVVvVYcIrJ2sVOzgsPvL99GSe2kipMd4FzIOG0qwA5UpTeS+y3Okgb0NzaDUOjrcly
	Ijz9mvEdCL6Ovq7rN8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htJB5-0000RV-Om; Thu, 01 Aug 2019 22:04:03 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htJB2-0000Qn-Lv
 for linux-rockchip@lists.infradead.org; Thu, 01 Aug 2019 22:04:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so32810419plt.3
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Aug 2019 15:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O7hLnC+GOiCgk4z8TAevBK2YUS9V2gISweOdp52qemw=;
 b=PS86srXDaP4fTTf+RUB3qrKPYKv5VVImbD5sr2kp3apOfNZ0eWIzFc0Mv0njZFxFih
 kIDPoa29TcWLjeGb1zylTG9tEJhsGTACwRaj6SaDNKYuk/UKYaAaiJJjHkiQvrgHK+lH
 RHGzZEyajD813os98uy8cLCgzhZFoWeYOIKZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=O7hLnC+GOiCgk4z8TAevBK2YUS9V2gISweOdp52qemw=;
 b=SjpdJFyuLs+wIEu5ygJBfIiKaOJFjHNmYEVSTqJwdCyOrS8d7rWYcMt6lFfQ8fS3Mq
 LllO3brLnVb2TnfqyVsjowvYGBSdemy9Nh+Q+SDT0GH4uMFuXUSnUqUZiXAleUkEq9r6
 exhX/4WcedV/Md4CLvZee4LqsAzt8EmNqatSEcFp0tDZrchMk9HqUdsS81wyaN9gev+V
 +Ioa9ndv4Pmw5CxQtOSNk7LNl54i4vnBBgUQF8Po3L42YTqIOI47rXBLetgVUxdr0JUF
 svc42AtwXVFsmerMRvwoeQqNyfX6fIIB+1ltzTTGrPbHEy3j5NyDirj4AOG9V2RQ6+Wg
 r3Dg==
X-Gm-Message-State: APjAAAUhziSxMtt5MXO1ipn2gF6r4dt4hI4czFs84iRDbVbgA9TWrLAM
 oG8R1WZiqfj13Qf83xZkgmMGPg==
X-Google-Smtp-Source: APXvYqxQ7cTZ2SN8igestlUX5ILuYgeNHRyShGDtkVrlsOwVJu4l7U3wDMFfsEDwuJT3bLOSz/Aj3Q==
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr44455167pll.133.1564697039800; 
 Thu, 01 Aug 2019 15:03:59 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id g2sm89824740pfb.95.2019.08.01.15.03.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 15:03:59 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Add pin names for rk3288-veyron fievel
Date: Thu,  1 Aug 2019 15:03:54 -0700
Message-Id: <20190801220354.142933-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_150400_743073_458747BC 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is like commit 0ca87bd5baa6 ("ARM: dts: rockchip: Add pin names
for rk3288-veyron-jerry") and other similar commits, but for the
veyron fievel board (and tiger, which includes the fievel .dtsi).

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-fievel.dts | 214 +++++++++++++++++++++
 1 file changed, 214 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
index 696566f72d30..5c14a8fa6574 100644
--- a/arch/arm/boot/dts/rk3288-veyron-fievel.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
@@ -198,6 +198,220 @@
 	pinctrl-0 = <&drv_5v>;
 };
 
+&gpio0 {
+	gpio-line-names = "PMIC_SLEEP_AP",
+			  "DDRIO_PWROFF",
+			  "DDRIO_RETEN",
+			  "TS3A227E_INT_L",
+			  "PMIC_INT_L",
+			  "PWR_KEY_L",
+			  "HUB_USB1_nFALUT",
+			  "PHY_PMEB",
+
+			  "PHY_INT",
+			  "REC_MODE_L",
+			  "OTP_OUT",
+			  "",
+			  "USB_OTG_POWER_EN",
+			  "AP_WARM_RESET_H",
+			  "USB_OTG_nFALUT",
+			  "I2C0_SDA_PMIC",
+
+			  "I2C0_SCL_PMIC",
+			  "DEVMODE_L",
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
+			  "",
+			  "EMMC_RST_L",
+			  "",
+			  "",
+			  "BL_PWR_EN",
+			  "",
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
+			  "VCC5V_GOOD_H",
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
+			  "FLASH0_DQS/EMMC_CLKO",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "PHY_TXD2",
+			  "PHY_TXD3",
+			  "MAC_RXD2",
+			  "MAC_RXD3",
+			  "PHY_TXD0",
+			  "PHY_TXD1",
+			  "MAC_RXD0",
+			  "MAC_RXD1";
+};
+
+&gpio4 {
+	gpio-line-names = "MAC_MDC",
+			  "MAC_RXDV",
+			  "MAC_RXER",
+			  "MAC_CLK",
+			  "PHY_TXEN",
+			  "MAC_MDIO",
+			  "MAC_RXCLK",
+			  "",
+
+			  "PHY_RST",
+			  "PHY_TXCLK",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "UART0_RXD",
+			  "UART0_TXD",
+			  "UART0_CTS_L",
+			  "UART0_RTS_L",
+			  "SDIO0_D0",
+			  "SDIO0_D1",
+			  "SDIO0_D2",
+			  "SDIO0_D3",
+
+			  "SDIO0_CMD",
+			  "SDIO0_CLK",
+			  "BT_DEV_WAKE",
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
+			  "",
+			  "",
+			  "USB_OTG_CTL1",
+			  "HUB_USB2_CTL1",
+			  "HUB_USB2_PWR_EN",
+			  "HUB_USB_ILIM_SEL",
+
+			  "USB_OTG_STATUS_L",
+			  "HUB_USB1_CTL1",
+			  "HUB_USB1_PWR_EN",
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
+			  "HUB_USB2_nFALUT",
+			  "USB_OTG_ILIM_SEL";
+};
+
+&gpio7 {
+	gpio-line-names = "LCD_BL_PWM",
+			  "PWM_LOG",
+			  "BL_EN",
+			  "PWR_LED1",
+			  "TPM_INT_H",
+			  "SPK_ON",
+			  "FW_WP_AP",
+			  "",
+
+			  "CPU_NMI",
+			  "DVSOK",
+			  "",
+			  "EDP_HPD",
+			  "DVS1",
+			  "",
+			  "LCD_EN",
+			  "DVS2",
+
+			  "HDMI_CEC",
+			  "I2C4_SDA",
+			  "I2C4_SCL",
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
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
