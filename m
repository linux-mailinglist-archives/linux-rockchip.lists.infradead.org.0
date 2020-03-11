Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665C7181DB9
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 17:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S/oxP7uYdTN0RhYza41keM4RyM5YfRDwlcd74qEqbqc=; b=QL0
	gGVlWtFieFBtBuQjvePssH/IILPBq4QNuFdzb48CK1sLORc+u7OBnAMpc73z0hQqYtmimuDABearX
	vhRpsqv6HKU0CqYsJ+OeqpSihlPJJ1Zk5AVBo1BmJGGuPRrMpAo2bu/tjoFDlY3j3GvejMpR4SBII
	TFj8RdQIpPn/VEd9sFUFdD/9hW44Rhhl22gfrOPtbpo6r+xwvjoQ6X3X4wZAUyjxaOYUBCEi0iTm3
	lSZcTmkvOFXcIHctJsjZa1lHy9lbpQKqz8fez6CpoXRN1EQSMt4NT6W4RHW7A2Ct8k4Frl9J1/Bdu
	CRLIj+m2+AvaLtQn13BwZRvEWMyQecA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4B2-0006mP-6P; Wed, 11 Mar 2020 16:25:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4Ao-0006Zt-R0; Wed, 11 Mar 2020 16:25:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id 6so2774057wmi.5;
 Wed, 11 Mar 2020 09:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=g92svwYBuSyg8jgfB1ySNd3KartWFgju0AKQL5BNu30=;
 b=b0RzEB3LUIItSreCToIbiC/rkCpE2jb4oD+C0GmG6jhAcdgWNuq9QCPBt+JayskKHM
 T4elVkDCsK5DKgWsOPXM6Qyg5UK2B/nifMpbkipfYZtCkXuddjLBeVSQsQ0Vv8mKPxvE
 YliMbOO4ppc+hhi/YbhokRy94j+SfZ6/zUH53n4nUVfTAkIW5m53XIUc414LPbmwU086
 XYla6tjKjsyTUzfWNSnRQvVa11/t2qfsIS/4Y1IUATdsyavWHUfXGSJS/TmJKCHggIQl
 wbbheNOmOLiMVZjNKA9sgGFekKMvD3eNBMAgVU5yJBcZwxrvhG+IXDAYRUBR88s/9yTf
 T09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=g92svwYBuSyg8jgfB1ySNd3KartWFgju0AKQL5BNu30=;
 b=oo6Ei2xTf9cPvPJR3hZeWZHIDftX4GwO7FXrGHsFXCb1WckWaL9TosZcTen9hX5h+t
 50DSv/PtMjHD7udNzMfYgyhpon7Iky7PSKo+8TWZy5BPEVg6SjCLy1pOkGn5+M/VJwRa
 trfixxvOma9A1xRGnAqptexNWu6Gr5Jpfvi5V0qyqq9a1hI1rc2slXrqy7kjBHTRKCvN
 3//IgA8ri2ZSaxus1gcyZKRPub8R/MeeQBcqOpfufrk41XGuJOnvlQ2TCzQOcShzwfDv
 h38tQljjdnPxg9zXA2AmGZeLCE766GF1Hy1EhVH92zJ4f8AC0XDifvNxagsJZXCtzvaH
 HJow==
X-Gm-Message-State: ANhLgQ0Qn0B7Ueqq6INXS5voyL1pquN+kYJ8/TY4tbq1v4y41AdaxEZ8
 H66HAMMvfXHh1NrAJ849l2I=
X-Google-Smtp-Source: ADFU+vvs61AYxW8DEMnQEw8rODfkI0Hq6B1WdiR+aSW/ymhbIQSqukGtGfpeakTg74muhZKWjCshIw==
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr4587872wmc.171.1583943932278; 
 Wed, 11 Mar 2020 09:25:32 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i1sm53624688wrs.18.2020.03.11.09.25.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 09:25:30 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: rockchip: swap clocks and clock-names values
 for i2s nodes
Date: Wed, 11 Mar 2020 17:25:23 +0100
Message-Id: <20200311162524.19748-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092534_902953_E6A5799A 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Current dts files with 'i2s' nodes are manually verified.
In order to automate this process rockchip-i2s.txt
has to be converted to yaml. In the new setup dtbs_check with
rockchip-i2s.yaml expect clocks and clock-names values
in the same order. Fix this for some older Rockchip models.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-i2s.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 12 ++++++------
 arch/arm/boot/dts/rk3188.dtsi  |  4 ++--
 arch/arm/boot/dts/rk3288.dtsi  |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 3d1b02f45..f3fc92e57 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -160,10 +160,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 4>, <&dmac1_s 5>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
 		rockchip,playback-channels = <8>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
@@ -178,10 +178,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s1_bus>;
+		clocks = <&cru SCLK_I2S1>, <&cru HCLK_I2S1>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 6>, <&dmac1_s 7>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S1>, <&cru SCLK_I2S1>;
 		rockchip,playback-channels = <2>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
@@ -196,10 +196,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2_bus>;
+		clocks = <&cru SCLK_I2S2>, <&cru HCLK_I2S2>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 9>, <&dmac1_s 10>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S2>, <&cru SCLK_I2S2>;
 		rockchip,playback-channels = <2>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 10ede65d9..651ea4e15 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -170,10 +170,10 @@
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac1_s 6>, <&dmac1_s 7>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
 		rockchip,playback-channels = <2>;
 		rockchip,capture-channels = <2>;
 		#sound-dai-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 8bcb4a516..f68dcde6c 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -964,10 +964,10 @@
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0>;
+		clock-names = "i2s_clk", "i2s_hclk";
 		dmas = <&dmac_bus_s 0>, <&dmac_bus_s 1>;
 		dma-names = "tx", "rx";
-		clock-names = "i2s_hclk", "i2s_clk";
-		clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s0_bus>;
 		rockchip,playback-channels = <8>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
