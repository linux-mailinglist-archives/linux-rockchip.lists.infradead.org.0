Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE061C09A1
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UUd216Yy4+BBt1hZpztOygMh1M8K/iqz93Xt25bxLmk=; b=WE3vxsrU6EevoVd8WwBU8SmQ12
	/bRmfKinf5kdV3LyD7lCFV7ZFj18Ih/nhOFRsuoNkZ4no++RWIDod9+0iLfdW0GEMNn4xAnPYbEFf
	+vxwt/Q/6AAgDCuttbW228apqXo0+C06QOhqWuyqgayc/sTu8PW2rDcebGijU5s9ss7R5L9uVxtaR
	m/ixDMjfxqCGRjFidJDHrHE1Z8DpxqMtNluQca4g52QufxX0IE9Y/Xu0ZCXrmrprRani85nnX4uwt
	/ZqptOl5sZ8UbYPxAYqy55wvZ8OhldDsqw9KOXS/wwaLazqLkWznrp2M0pzdrAE0EZghzvrNFVVR4
	NP7k9pxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0V-00075H-1x; Thu, 30 Apr 2020 21:46:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0R-00073i-KT
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:46:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id f8so2848153plt.2
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6+Nlz4K5CVynOeUhqGSCw2yzk9Vj1GohEKvgEtpoNmY=;
 b=N+e0TZAAmnoKRWcks/q4GkQcYiQn/zz4cQXR9qKa1yUSU8td47eDw5MhOC0P5WkF9+
 YpB4H6c/AOHzdL8WI6x6ro8FVn00712TSl9jqJ5wdh5V+wtZwRAVBbTCfIzenQPm9ulF
 oH1aIUV/u5XfC13VzbeWKQM7pgnbtLI40KCOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6+Nlz4K5CVynOeUhqGSCw2yzk9Vj1GohEKvgEtpoNmY=;
 b=LnZPwCtJaK2Rywh8dyVWR/X3M0asSAaT4N7cMsRz2zAdfgCnjUd54Abfr3Wkx7tZP7
 rdDg3MQLqHeyn9g5BTZeUDENFwRGUCTWh0eoY3HcvdyfRy/3GBbg+2ej5o5DPtJ7xNXw
 4QeASmBMA49t6o6zvJbmPls/OqisM95F+WonG1/5bEQoq4AYBcCZShwavDCBqAIGmuqh
 SXWCe9DY+8azeXYFDVs17JNQi1Sv3TyQqglXU6alQ79I2qAOAtYeDzgoIyyWRQ+USEjw
 l13sIjWLTojyfciWzsYIbqe9g18oklszefSp0Ns0cnyOmWLypFAcJQ5UpgIpc2+P+Ep7
 MWHg==
X-Gm-Message-State: AGi0PuZNEZw5/f8k6tCr+nvINEmCT4YY+QmdY3x23uAgnZ2GNX/yloZW
 pyjdMAifwz4Qy0zWxlaueMw4mA==
X-Google-Smtp-Source: APiQypIw+kLZYZR29St6sa96ZnWn/xIfs5rajLJcjnJIiSIhdDMeGQny0E3DjDsWmmpbrmKvU37PSQ==
X-Received: by 2002:a17:90a:d0c3:: with SMTP id y3mr953589pjw.25.1588283167057; 
 Thu, 30 Apr 2020 14:46:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.46.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:46:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 4/7] arm64: dts: rk3399: Move u2phy into root port
Date: Fri,  1 May 2020 03:15:26 +0530
Message-Id: <20200430214529.18887-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214529.18887-1-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144607_672106_EA7C2061 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Yes, This is changing the actual device tree u2phy
structure but the problem with the current Generic
PHY subsystem is unable to find PHY if the PHY node
is not part of the root structure.

This will be reverted once we support the PHY subsystem
to get the PHY even though it is not part of the root
node or any other relevant solution.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399.dtsi | 108 +++++++++++++++++++--------------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index 74f2c3d490..6c77f25f23 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -1387,60 +1387,6 @@
 			status = "disabled";
 		};
 
-		u2phy0: usb2-phy@e450 {
-			compatible = "rockchip,rk3399-usb2phy";
-			reg = <0xe450 0x10>;
-			clocks = <&cru SCLK_USB2PHY0_REF>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-			clock-output-names = "clk_usbphy0_480m";
-			status = "disabled";
-
-			u2phy0_host: host-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "linestate";
-				status = "disabled";
-			};
-
-			u2phy0_otg: otg-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "otg-bvalid", "otg-id",
-						  "linestate";
-				status = "disabled";
-			};
-		};
-
-		u2phy1: usb2-phy@e460 {
-			compatible = "rockchip,rk3399-usb2phy";
-			reg = <0xe460 0x10>;
-			clocks = <&cru SCLK_USB2PHY1_REF>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-			clock-output-names = "clk_usbphy1_480m";
-			status = "disabled";
-
-			u2phy1_host: host-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "linestate";
-				status = "disabled";
-			};
-
-			u2phy1_otg: otg-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "otg-bvalid", "otg-id",
-						  "linestate";
-				status = "disabled";
-			};
-		};
-
 		emmc_phy: phy@f780 {
 			compatible = "rockchip,rk3399-emmc-phy";
 			reg = <0xf780 0x24>;
@@ -1462,6 +1408,60 @@
 		};
 	};
 
+	u2phy0: usb2-phy@e450 {
+		compatible = "rockchip,rk3399-usb2phy";
+		reg = <0x0 0xe450 0x0 0x10>;
+		clocks = <&cru SCLK_USB2PHY0_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "clk_usbphy0_480m";
+		status = "disabled";
+
+		u2phy0_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "linestate";
+			status = "disabled";
+		};
+
+		u2phy0_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "otg-bvalid", "otg-id",
+					  "linestate";
+			status = "disabled";
+		};
+	};
+
+	u2phy1: usb2-phy@e460 {
+		compatible = "rockchip,rk3399-usb2phy";
+		reg = <0x0 0xe460 0x0 0x10>;
+		clocks = <&cru SCLK_USB2PHY1_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "clk_usbphy1_480m";
+		status = "disabled";
+
+		u2phy1_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "linestate";
+			status = "disabled";
+		};
+
+		u2phy1_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "otg-bvalid", "otg-id",
+					  "linestate";
+			status = "disabled";
+		};
+	};
+
 	tcphy0: phy@ff7c0000 {
 		compatible = "rockchip,rk3399-typec-phy";
 		reg = <0x0 0xff7c0000 0x0 0x40000>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
