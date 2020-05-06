Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3CC1C6A69
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iqWuR6lDP5bBh2n2OI1HGeKt1AKEvgEdcEbN2Mfo8wE=; b=IcvI6Clywdo0QGssHZJMH1cl4X
	U2fLv3llxjU3CbkfAmMuhXhIvE2jwHHecf65RsipQAaEOn6eK1U2yo0GJ5lG/AETckVHvr7+EU5Pn
	wM8OaPbAQOhtHGf8vEcL+UCx3BN4prAZWrbxmj6v1FdXd0vP8u4vSsyBI+tYZ+ONOZaDnGbTywsHq
	HaStGJnxkb0LbP9nmzmNgSpoC0Ms5Kw7IUbAIwAu6jp25jrBHCYzl1e2dFoPkVRGvYks2TLcbw7PI
	oFLaVCgbtT4f+1MyCggEZKCYydvfN99yEpbzbx3TfNcyWRmXSFVpHRvYzkVgpHkKRbG4AweD/IVM3
	R/2xR9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEph-0006qT-FV; Wed, 06 May 2020 07:51:09 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpd-0006oJ-TF
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:51:07 +0000
Received: by mail-pj1-x1043.google.com with SMTP id h12so2188475pjz.1
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VPg039izGsBvlHYInKALMlOUd753kCr+XH9uCUo1MNQ=;
 b=VhKBHW7DPtf6a7GWFu3z6sMvCTTXuqLAPlt9ocwctADiDZWo+zYwQ6wpZrQyZ40JBY
 bRs8un9df6d9bSezd84F4wpVU+RKOEO8BVcVBqD5seA/vFik5cxNAerqr9SQe59sFH7y
 SRRWQZulfNnMZ2HdfSZLSAJ/u3n0ovop1FjPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VPg039izGsBvlHYInKALMlOUd753kCr+XH9uCUo1MNQ=;
 b=WctsEkLctJA6YzaxfzxHh+gh4iVcfS+EEH63ArpVdlDZLzApc9ddoq/UMb/LWnbwkg
 5oM8h5A8+y5fRPH+APzsqE35yx2MR+hAxqvIt6ZhqnlMWOW8DLpo0NG9pjrHPy+s0DoC
 /MG4nlwvyrvjYx6cOiujNShmljAjq6599CedvieR4mxn9Ywv5zACnwsufbU2+4RKkrFN
 alM+8CN2RNrYh9Bp2+cYdruR2TQuPdQox5bcKaNq9Z0cjDsrxv5NWuI6KLsAgYNzqH23
 fcmYP+8BZoyss0WHta0pvcsxTNf0T4LU15MhQyorp1eXBS2BOXFoGLyaBYPc8PJ0w4aT
 9Rqg==
X-Gm-Message-State: AGi0PubKiaVjE2Z/xcNy9S3C00H6EHWGBEp6z5lZF3yLDZnIsPQYcLlI
 nApeHsGDAx2wSJf2HC7KvrNJ5A==
X-Google-Smtp-Source: APiQypK4EOZ5z+BQGkkDlpK2f4vR04o+56LHeYiezivfOmeqL9eUXpOQ+nAu+SnqLm3kZe/6fMxIQg==
X-Received: by 2002:a17:90a:d808:: with SMTP id a8mr7677278pjv.6.1588751465387; 
 Wed, 06 May 2020 00:51:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:51:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 5/7] arm64: dts: rk3399: Move u2phy into root port
Date: Wed,  6 May 2020 13:20:23 +0530
Message-Id: <20200506075025.1677-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506075025.1677-1-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005105_942716_2C0E7D39 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 Belisko Marek <marek.belisko@gmail.com>, linux-amarula@amarulasolutions.com,
 linux-rockchip@lists.infradead.org
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
Changes for v2:
- none

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
