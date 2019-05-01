Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981E6107D4
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 May 2019 14:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMFaPvS/y6xwmIkHsPd6DJ/uQCg6STSgrYJOXVpCPBE=; b=LwXVSMg80/4MGM
	Nnx5pMM0EZ2IIVLobJlGqfAug3NwVnu0L1hgI/RTi2G4BAYeU1R059mwNefBk3MBtWs5zl+0h4H+X
	AQ7Q6r0CknJVwHh6ASBBzR97zr/X9RYaZreRQklzv5z/zdjWjrFpMN5i2Ho7tGC5b5DfI3DCttzza
	KzEFgTAbXV8Lp0QaCpFA4m1SWyTUCxCGs4DnDCo+peT0oZG1xXPL8+I+YxbBWYmL3AyDmMZ+1gkrs
	kav4pOPM7wWnFb2EiP8eDdC8pzVtl8QjQP5NgownX1+fMoVLlymIuvCa2ObykWUjEithVxNshMEaT
	lIbeby+CQCH9Bg/IGy5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLo97-0000xS-98; Wed, 01 May 2019 12:15:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLo91-0000q8-39
 for linux-rockchip@lists.infradead.org; Wed, 01 May 2019 12:15:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id o5so8115780pls.12
 for <linux-rockchip@lists.infradead.org>; Wed, 01 May 2019 05:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=94vB13sHTlZr5Bs7pA31wHDlzJuKT2BJO6sMbFgdL1A=;
 b=n1IZMCvRycqCIql9nXCuOiCKPXBoaW5HtMSbkanKhb1YHQbkhjLllkBXfWUQhKRArg
 wWerKM9pjdhTRqZRgspXhfRRXhSJjUp87KDpNvrcCSWIV4DJ24ETVfMZTjic97Xj91R8
 lsIuVji++GNk3kABHwhGDn/bzrBw9gGnhRtkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=94vB13sHTlZr5Bs7pA31wHDlzJuKT2BJO6sMbFgdL1A=;
 b=mdBYj7X8drAEdTvwmujAOzm6VWahYyYruyqCi5qeR6B214JlBQwEYinyCTTfdm9+e5
 aCRlIwAlavw5kfYa1WAbVANuzx89EGEavyF+GgriIVuDuDQxvDAZLx8HAedtfGGiZ7q5
 fooal8bdV1Z3LEHY53tur5vX0Jw8JKkaOQF+9RTdE5UpvpqjWcMxxc5VWeo6Wbc3LHLV
 JJwsgmJ187l1YE8YAGkBBQhYY47+b+yAsmkRk8GeLAejceN5NCjBAvwgWzIbNPu0aIa2
 1dXiY5TIz8BtAwYwaB8YAoptrp59ePUKBpLUdWbJQ3X7YZyFOKwti2aVTcIwf/lbtZdN
 A1zw==
X-Gm-Message-State: APjAAAXTIiPEPwQHky3qXC8zHRt0EK/Jy9mn73b9/9zTdgB9iuBjex2E
 YlWoZ8WbZnaI83/HNBzfZOHU0Q==
X-Google-Smtp-Source: APXvYqz3eAltqeg6DJWrjpVbkmDoaq7Xx7Iu8cbap99+zZVfqJaGqNjcq7kfpvRuzkqnvfE8TkcmQg==
X-Received: by 2002:a17:902:a582:: with SMTP id
 az2mr77934840plb.315.1556712926355; 
 Wed, 01 May 2019 05:15:26 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.33])
 by smtp.gmail.com with ESMTPSA id e193sm71082978pgc.53.2019.05.01.05.15.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 05:15:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [DO NOT MERGE] [PATCH 2/2] arm64: rockchip: rk3399: nanopc-t4: Enable
 FriendlyELEC HD702E eDP panel
Date: Wed,  1 May 2019 17:44:48 +0530
Message-Id: <20190501121448.3812-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190501121448.3812-1-jagan@amarulasolutions.com>
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_051527_739210_2834DB89 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

FriendlyELEC HD702E is one of optional LCD panel for
NanoPC T4 eDP interface.

It features 800x1280 resolutions, with built in GT9271 captive
touchscreen and adjustable backlight via PWM.

eDP panel connections are:
- VCC3V3_SYS: 3.3V panel power supply
- GPIO4_C2: PWM0_BL pin
- GPIO4_D5_LCD_BL_EN: Backlight enable pin
- VCC12V0_SYS: 12V backlight power supply
- Touchscreen connected via I2C4
- GPIO1_C4_TP_INT: touchscreen interrupt pin
- GPIO1_B5_TP_RST: touchscreen reset pin

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note: we need to disable hdmi-cec pinctrl to work with
edp-hpd since both share same pin, otherwise we can
encounter below error during bootup
[    1.047726] rockchip-pinctrl pinctrl: pin gpio4-23 already requested by ff940000.hdmi; cannot claim for ff970000.edp
[    1.048655] rockchip-pinctrl pinctrl: pin-151 (ff970000.edp) status -22
[    1.049235] rockchip-pinctrl pinctrl: could not request pin 151 (gpio4-23) from group edp-hpd  on device rockchip-pinctrl
[    1.050191] rockchip-dp ff970000.edp: Error applying setting, reverse things back
[    1.050867] rockchip-dp: probe of ff970000.edp failed with error -22

 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 931c3dbf1b7d..b652d960946f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -46,6 +46,48 @@
 		};
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <
+			  0   1   2   3   4   5   6   7
+			  8   9  10  11  12  13  14  15
+			 16  17  18  19  20  21  22  23
+			 24  25  26  27  28  29  30  31
+			 32  33  34  35  36  37  38  39
+			 40  41  42  43  44  45  46  47
+			 48  49  50  51  52  53  54  55
+			 56  57  58  59  60  61  62  63
+			 64  65  66  67  68  69  70  71
+			 72  73  74  75  76  77  78  79
+			 80  81  82  83  84  85  86  87
+			 88  89  90  91  92  93  94  95
+			 96  97  98  99 100 101 102 103
+			104 105 106 107 108 109 110 111
+			112 113 114 115 116 117 118 119
+			120 121 122 123 124 125 126 127
+			128 129 130 131 132 133 134 135
+			136 137 138 139 140 141 142 143
+			144 145 146 147 148 149 150 151
+			152 153 154 155 156 157 158 159
+			160 161 162 163 164 165 166 167
+			168 169 170 171 172 173 174 175
+			176 177 178 179 180 181 182 183
+			184 185 186 187 188 189 190 191
+			192 193 194 195 196 197 198 199
+			200 201 202 203 204 205 206 207
+			208 209 210 211 212 213 214 215
+			216 217 218 219 220 221 222 223
+			224 225 226 227 228 229 230 231
+			232 233 234 235 236 237 238 239
+			240 241 242 243 244 245 246 247
+			248 249 250 251 252 253 254 255>;
+		default-brightness-level = <200>;
+		enable-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;	/* GPIO4_D5_LCD_BL_EN */
+		pwms = <&pwm0 0 25000 0>;
+		power-supply = <&vcc12v0_sys>;
+		status = "okay";
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
@@ -64,6 +106,18 @@
 		fan-supply = <&vcc12v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 	};
+
+	panel {
+		compatible ="friendlyarm,hd702e";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
 };
 
 &cpu_thermal {
@@ -94,6 +148,23 @@
 	};
 };
 
+&edp {
+	status = "okay";
+
+	ports {
+		edp_out: port@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			edp_out_panel: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&panel_in_edp>;
+			};
+		};
+	};
+};
+
 &gpu_thermal {
 	trips {
 		gpu_warm: gpu_warm {
@@ -130,6 +201,17 @@
 	};
 };
 
+&i2c4 {
+	touchscreen@5d {
+		compatible = "goodix,gt911";
+		reg = <0x5d>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC4 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;	/* GPIO1_C4_TP_INT */
+		reset-gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;	/* GPIO1_B5_TP_RST */
+	};
+};
+
 &sdhci {
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
