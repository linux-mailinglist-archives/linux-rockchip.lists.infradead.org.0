Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B6E13CC9B
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Jan 2020 19:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ydO09UKoFbvueURt6UDMa2KlFv+7NOu72+/5QjD36MI=; b=QfR
	sOQl4eeQtcxs12O40jzWvylIGqXYbzvZYEmel6gx0qpEQA3cujw+5x/jZgoDo2OBNnpp/cK1UgGtL
	rWVT8QhpPMuQNW246XNhTgztFkjph/deuGvkzy18Eavl2gcHbF0tqhrNmN8vwCbIkL477eLaSoBsL
	4+ykidwG8qbePQZUa85F0TeDzFK8vvWzHP4jW4aR37vMEnxxblz34fLUPokRIyEePVuXyUzL3gFNc
	ruaA6y6IK1lsnAET5giXzCgTd5/jxsul3GQZLeG5rAMBHTvpCfgxyuDSf6FEhNGe0cUWYsfvfhQ+t
	4h3MPjfksnc49B4p2WbhYoeUXwPluuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnmx-0000wT-L8; Wed, 15 Jan 2020 18:53:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnmg-0000az-1D; Wed, 15 Jan 2020 18:52:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so16800652wrn.7;
 Wed, 15 Jan 2020 10:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZKbkfQFGcDjwsClT1OKqzInSbgiQQ9mGLFaz9bGeYd4=;
 b=AOf0Dy5Fon60mpk9fYvpXhjPf7hixSrjiVwgONswX+BJ8gWUDq/uHcM2K5eRbkAiwv
 8THTdT1rXx9bK44xOZ1ZBl4M9ciSmt4yKo49OsGp0mK9NF1wQ8a2K6oqiKeWq4ggf0qi
 lI1kmOB1Pnexkje26KK6JkCAxWXhaw4ymLKQK142EVGl9t0ptvNE1Rgjvb26KSUQcQrR
 881ghRw/MXSApVG4ou2o4yu2+oW4sxxBW919SCLhEcNGbrL4H/i65xdwIythdo7KRl5n
 mKaJx/zFPu1qsXXy17Hi9kAEYySnT/1+qNIr+aUoxib3+VZ6eYq/uCzHVV3Z1UytG5Wg
 eBiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZKbkfQFGcDjwsClT1OKqzInSbgiQQ9mGLFaz9bGeYd4=;
 b=U94WpytWHRjVXC/w3vrbap8EyZz5jY9poT0otQlhxwk+RVPXJm9msdIF7HGobmMkPX
 PUOPoDWO7YMyYGXb9xD3T2JX87AixrXA/i9H8p5xXCRp0Ni0DxjIgp3HLmlxwDppYCNr
 ZttFwKbQTB0yzqiJkxdRijBgkeOWlov3RLgyo+MUHpHsvuRCQYJiUU6Uh2f0/f5ZI/rn
 ZbLHIVxaBsMY2P9hh6bN6YoB4u8LE8pUgc3FQc/HrVwkXsEcLbhTK8DmSYFkaUcUANOT
 amnJO3alugrgXhSGoB2ZS5zDSqIFvBvIttcHr65FXAmv9NlKL3POzbjy9ytk9emisI0g
 /ugQ==
X-Gm-Message-State: APjAAAXCG58yqaoUyslSVVhIHacmbfG5sfcUFI0CRIejkKXv5lRK9+r6
 SvThpgTxm7hjPRNo0Fh+zjA=
X-Google-Smtp-Source: APXvYqxV12+42V6D8tiScZA75LHa8aUfF3oUkAivjr11wUSnWolsYdOchApqGdsdwKamXM031jFVvQ==
X-Received: by 2002:adf:f18b:: with SMTP id h11mr31825959wro.56.1579114372394; 
 Wed, 15 Jan 2020 10:52:52 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i5sm26296759wrv.34.2020.01.15.10.52.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jan 2020 10:52:51 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: rockchip: rename dwmmc node names to mmc
Date: Wed, 15 Jan 2020 19:52:43 +0100
Message-Id: <20200115185244.18149-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_105254_100004_E04B15AC 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Current dts files with 'dwmmc' nodes are manually verified.
In order to automate this process rockchip-dw-mshc.txt
has to be converted to yaml. In the new setup
rockchip-dw-mshc.yaml will inherit properties from
mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
'dwmmc' will no longer be a valid name for a node,
so change them all to 'mmc'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 6 +++---
 arch/arm/boot/dts/rk322x.dtsi | 6 +++---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
 arch/arm/boot/dts/rk3xxx.dtsi | 6 +++---
 arch/arm/boot/dts/rv1108.dtsi | 6 +++---
 5 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index c70182c5a..cf36e2519 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -224,7 +224,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@10214000 {
+	sdmmc: mmc@10214000 {
 		compatible = "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10214000 0x4000>;
 		clock-frequency = <37500000>;
@@ -238,7 +238,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@10218000 {
+	sdio: mmc@10218000 {
 		compatible = "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10218000 0x4000>;
 		max-frequency = <37500000>;
@@ -252,7 +252,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@1021c000 {
+	emmc: mmc@1021c000 {
 		compatible = "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x1021c000 0x4000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb..4e90efdc9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -662,7 +662,7 @@
 		};
 	};
 
-	sdmmc: dwmmc@30000000 {
+	sdmmc: mmc@30000000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30000000 0x4000>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -675,7 +675,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@30010000 {
+	sdio: mmc@30010000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30010000 0x4000>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
@@ -688,7 +688,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@30020000 {
+	emmc: mmc@30020000 {
 		compatible = "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30020000 0x4000>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 415c75f57..9beb66216 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -247,7 +247,7 @@
 		ports = <&vopl_out>, <&vopb_out>;
 	};
 
-	sdmmc: dwmmc@ff0c0000 {
+	sdmmc: mmc@ff0c0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
@@ -261,7 +261,7 @@
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@ff0d0000 {
+	sdio0: mmc@ff0d0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_SDIO0>, <&cru SCLK_SDIO0>,
@@ -275,7 +275,7 @@
 		status = "disabled";
 	};
 
-	sdio1: dwmmc@ff0e0000 {
+	sdio1: mmc@ff0e0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_SDIO1>, <&cru SCLK_SDIO1>,
@@ -289,7 +289,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff0f0000 {
+	emmc: mmc@ff0f0000 {
 		compatible = "rockchip,rk3288-dw-mshc";
 		max-frequency = <150000000>;
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 97307a405..241f43e29 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -231,7 +231,7 @@
 		status = "disabled";
 	};
 
-	mmc0: dwmmc@10214000 {
+	mmc0: mmc@10214000 {
 		compatible = "rockchip,rk2928-dw-mshc";
 		reg = <0x10214000 0x1000>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
@@ -245,7 +245,7 @@
 		status = "disabled";
 	};
 
-	mmc1: dwmmc@10218000 {
+	mmc1: mmc@10218000 {
 		compatible = "rockchip,rk2928-dw-mshc";
 		reg = <0x10218000 0x1000>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
@@ -259,7 +259,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@1021c000 {
+	emmc: mmc@1021c000 {
 		compatible = "rockchip,rk2928-dw-mshc";
 		reg = <0x1021c000 0x1000>;
 		interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 5876690ee..1fd06e7cb 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -456,7 +456,7 @@
 		#reset-cells = <1>;
 	};
 
-	emmc: dwmmc@30110000 {
+	emmc: mmc@30110000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30110000 0x4000>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
@@ -468,7 +468,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@30120000 {
+	sdio: mmc@30120000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30120000 0x4000>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -480,7 +480,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@30130000 {
+	sdmmc: mmc@30130000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30130000 0x4000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
