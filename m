Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF0E1643C
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 15:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Vb9p+JcE0ipKLuQoYCLHE5cKVRhUsHZ6OSNPj7jdNM=; b=pT0iLT7tev+xhx
	WHYsggaEWEdu1yUt0YhLRkedEyU6k+1JJQONDiGhMPVmJrU6Ju3dFKFTxSHhop07j2AVjCJoONMJd
	ipCu2kHJvGTQfS3pUMS3hs6aDPxX7uUGLa3SFCtBdJ0oDMuxOsfF6e8W3pMdFLkteX3jF+MUXsYvJ
	6fPtefGyXSPp/+cxjvrR/lFjflbZgv2FA6aGSJOX9BNoE8cqGzpsxRgJfZALc2Z/D8EDSlgXpyrI1
	z3cFihIFimSPViUxEpWNWDB79UsNTFLVe/YCD75HFmhEPcmhKprFl/urBreKxzM6YnbFifYZr91p0
	6Qg1vukJKNEhEd4x4JeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzp6-00010L-0c; Tue, 07 May 2019 13:07:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzoq-0000fw-F1
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 13:07:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id d31so8290298pgl.7
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 06:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rmbbR+nEPRU8PAUrqs/Xp1Cybc4IWp6SjLWLlkBHpm0=;
 b=MQeNgF/ztfyfJPkOLp8v44evWaHK6oQNiqkbYk6h5b2kjyPiu6a9LJ5OzAeVCfV1bv
 eXov666QPajT8xgYjzaUgoDgyOvsb27oueOSiVnHWAqcG9Q6V47EeBKCQryKWP53/JtH
 G8SChDw3Fr+NIFF9Q/ph7KdV8veIMSpgTWz04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rmbbR+nEPRU8PAUrqs/Xp1Cybc4IWp6SjLWLlkBHpm0=;
 b=EuKqUN1b2KFdJPm4n2CHiRx7SuRDJQq9Gl3fQXdYHrf+++w+2toEaRO3C7Efxf1IKV
 CzdhV4XhS6Q64ACGt9YzzFsMAbl74fd9KnlXGKUK81DybOB4lbt/OaME0Mk0pwBBNbYI
 GL2gErn1fgRaePgkqFOZHbRD7VIH6XKaaK7lOJytvHUtqjKyN3h7ImBpmTHpn+SRVXj5
 25QM/elLMG6bsCSNW9pf5TDTqupCj6SSYg8u9uUNna1WU1W/Lj/BrZRruqx3vDmFGijv
 DbcnwAnWv38TgVbQQnQBjozNrVfJ27foRk6Ji/IHeQaEfR+fx7IT5dHJxMo8UH542fFP
 6MzQ==
X-Gm-Message-State: APjAAAU19i48+XU5YpTEryZmpSBio98tNyvpfPggg9GsZ/fucD64Hb6t
 DAEtIZQhVGYqPJFQv0gSB8Ep+w==
X-Google-Smtp-Source: APXvYqxLeInLf88kjLthLdkTwo1/yWUp+xFEYrpTiTrZa+Gcgm+ciJnRApUuxQzvX/3b2mjsA5Dy5Q==
X-Received: by 2002:aa7:92c4:: with SMTP id k4mr42376765pfa.183.1557234459930; 
 Tue, 07 May 2019 06:07:39 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:3682:cdb6:452:ecda:bdfa:452e])
 by smtp.gmail.com with ESMTPSA id w190sm21889823pfb.101.2019.05.07.06.07.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:07:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [DO NOT MERGE] [PATCH v2 3/3] arm64: rockchip: rk3399: nanopc-t4:
 Enable FriendlyELEC HD702E eDP panel
Date: Tue,  7 May 2019 18:37:08 +0530
Message-Id: <20190507130708.11255-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507130708.11255-1-jagan@amarulasolutions.com>
References: <20190507130708.11255-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_060740_941012_17A67D2C 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- use force-hpd and delete-property for edp
- use generic backlight brightness
- add simple-panel fallback compatible

 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 931c3dbf1b7d..4cacd09658dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -46,6 +46,14 @@
 		};
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		enable-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;	/* GPIO4_D5_LCD_BL_EN */
+		pwms = <&pwm0 0 25000 0>;
+		power-supply = <&vcc12v0_sys>;
+		status = "okay";
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
@@ -64,6 +72,18 @@
 		fan-supply = <&vcc12v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 	};
+
+	panel {
+		compatible ="friendlyarm,hd702e", "simple-panel";
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
@@ -94,6 +114,25 @@
 	};
 };
 
+&edp {
+	status = "okay";
+	force-hpd;
+	/delete-property/ pinctrl-0;
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
@@ -130,6 +169,17 @@
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
