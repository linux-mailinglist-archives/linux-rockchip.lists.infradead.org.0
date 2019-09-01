Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A90A4C45
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 23:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E4T85y29MUUgEGsAKYEX/0KqWkNXlO6O/gY/0QjGFRQ=; b=N9iPMLocQ2Btut
	3gcSwRy74+f1xps4g24Sz00bW2pZIYZ3bX5DZiDZz/xAeeakurOcgvkab1ciHa+MIYj+QtZFIC2Mx
	MAbdX+xZRzku+pZOjVmwy9KD3IPOjMmIWa2SaFZboMbm6YZBDc8LdwD0K212nmk+WLOp3XjeC9FPo
	uOEk70iqWVfMN+E4LMIwz33GXhH50eny+2VBAMifQ83fK2eFXTz69tEsKFeZ2qa6kJtj8hvKDRrE9
	4tVzgLLkJv8eYauEtatkT3HckOC0zV+jrB4Y6X4yXPd1d5gEL4gN3QAO/pcfZ8VQ/kfojWPbN7RaX
	raYZvPxzSyk6QWuXDt+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4XKf-0001MW-I1; Sun, 01 Sep 2019 21:24:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4XKb-0001MB-41
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 21:24:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id g207so8509190wmg.5
 for <linux-rockchip@lists.infradead.org>; Sun, 01 Sep 2019 14:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:user-agent;
 bh=N3KJKJtp5xwRFluPXIZhnktPSoUzv6QebQOPvdFyKj0=;
 b=d6/t26TXCWrVShwnPbhWNXiDUdnhwVgY6mNxdoabpcqgR1npaGkt1vVc8cPgTXj8zn
 hdyVbk4o6Rx+l9IDMyPwrKA95I0lNVwt174ySiyPoZzQ6anN5ffxBtzNUbWcEV7KJi9S
 wHmhq5gHVEsGmtKzCBhgGk497uslEiiM8zk1uYI5rh9L/RJkUQZpfnoJ3BrKR4yJpie4
 ObIfzDYWiG8FMZBWcPZF0di0ER6q1A4jbUN7osLpVWDWVlNjrI9KYY1t+/j8GMCyxSSG
 q6c/EWPUWLDd53O7Ni8mSKX2Fr4wzxw/VC0ICOEANqL2lZIkam68j4YMK94onln82QS1
 dPbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:user-agent;
 bh=N3KJKJtp5xwRFluPXIZhnktPSoUzv6QebQOPvdFyKj0=;
 b=qkaOdTS8GAtH0hl4TXYnH8jkIKYWnrMmCgzENDxFP2YJkHNrwdUI7qAtosKlU03yR3
 RKOLXHH/f6d2TAmjJsAK0+xxU6IdPWd1SOZjDhwvQdj06UzbcI/JY0eo734HvpGG8yb1
 plPs6p2pt4g1drZHyQG9DhVb/RXHlm3UJRYOHtC1JpKdwdFAk3/T6KNVti0mB5dsPn/W
 w1ER9geYdPHuDj0MtUEo9oMFoS3vkzsYDpfJcjsXRWDChU/wil0H2y7djHTSA3NuFng+
 HPc853NRd3dDIQaRzN7f03sf9H87JMtq7ZK0RJZYxUXljU00VzsKQCi8lMQY1tKCvV9z
 fBiA==
X-Gm-Message-State: APjAAAULQDsgbBW9XCPyBINPGbxDeZGfO4uWPsbAKl4aHonlDi0ttkGe
 GolVxGLHIxSOOZNrhSz1UWeN78kwb3Y=
X-Google-Smtp-Source: APXvYqxM+cRORskoTIwsfqIn6e1pcjlyjUIVXk53I4iGIhV/5xM5t3ugS+olCdZXoWmVNqu3Jxd4fQ==
X-Received: by 2002:a1c:494:: with SMTP id 142mr30957830wme.12.1567373054785; 
 Sun, 01 Sep 2019 14:24:14 -0700 (PDT)
Received: from localhost.localdomain (137.19.122.78.rev.sfr.net.
 [78.122.19.137])
 by smtp.gmail.com with ESMTPSA id d1sm13199217wrs.71.2019.09.01.14.24.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 14:24:14 -0700 (PDT)
Date: Sun, 01 Sep 2019 23:24:13 +0200
From: Alexandre Janon <alex14fr@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] Fix I/O aborts on Firefly RK3288
Message-ID: <20190901212413.t561j%alex14fr@gmail.com>
User-Agent: mail v14.9.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_142417_167928_59A23FDC 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alex14fr[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello everyone,

On my Firefly RK3288 with the binary Rockchip "mini loader" (v2.54), I/Os from
and to some physical addresses (above ff430000) causes kernel panics (Imprecise
external aborts), I don't know precisely why (maybe the 'Trusted' execution
environment ?)

I thus disabled access to these addresses, caused by:
- a quirk in rockchip timer init, targetting timer6-7 @ff810000, which didn't
  seemed to be needed in my case,
- rockchip platsmp boot_secondary CPU, targetting an smp-sram device @ff700000,
- various DT devices advertised as okay statuses, but whose I/O regs cause data
  aborts.

As replacement:
- timer quirk is commented out,
- for platsmp code for secondary CPUs initialization, we use the PSCI method as
  in the Rockchip's 4.4 BSP,
- timer6-7 (@ff810000) are not used, timer1-5 (@ff6b0000) instead,
- dma-controller@ffb20000 is disabled, the one @ff250000 is used instead,
- the efuse@ffb40000 is disabled

By using this patch I can boot mainline kernel entirely from eMMC using
rockchip-linux/u-boot, branch next-dev, to the latest Arch Linux ARM multiv7
rootfs. USB host, HDMI, Ethernet and eMMC work in this kernel, the rest is
untested.

Regards,
Alexandre



diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 5e0a19004e46..138bea00c600 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -12,6 +12,10 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
+	cpus {
+		enable-method = "rockchip,psci-smp";
+	};
+
 	adc-keys {
 		compatible = "adc-keys";
 		io-channels = <&saradc 1>;
@@ -160,6 +164,8 @@
 		regulator-always-on;
 		vin-supply = <&vcc_io>;
 	};
+
+
 };
 
 &cpu0 {
@@ -478,6 +484,12 @@
 			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+   psci {
+		 compatible = "arm,psci-1.0";
+		 method = "smc";
+   };
+
 };
 
 &saradc {
@@ -572,3 +584,5 @@
 &wdt {
 	status = "okay";
 };
+
+
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index cc893e154fe5..584064880bf8 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -181,7 +181,7 @@
 			arm,pl330-broken-no-flushp;
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
-			status = "disabled";
+			status = "okay";
 		};
 
 		dmac_bus_s: dma-controller@ffb20000 {
@@ -193,6 +193,7 @@
 			arm,pl330-broken-no-flushp;
 			clocks = <&cru ACLK_DMAC1>;
 			clock-names = "apb_pclk";
+			status = "disabled";
 		};
 	};
 
@@ -234,14 +235,24 @@
 		arm,no-tick-in-suspend;
 	};
 
-	timer: timer@ff810000 {
+	timer: timer@ff6b0000 {
+		compatible = "rockchip,rk3288-timer";
+		reg = <0x0 0xff6b0000 0x0 0x20>;
+		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&xin24m>, <&cru PCLK_TIMER>;
+		clock-names = "timer", "pclk";
+	};
+
+	timer@ff810000 {
 		compatible = "rockchip,rk3288-timer";
 		reg = <0x0 0xff810000 0x0 0x20>;
 		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&xin24m>, <&cru PCLK_TIMER>;
 		clock-names = "timer", "pclk";
+		status = "disabled";
 	};
 
+
 	display-subsystem {
 		compatible = "rockchip,display-subsystem";
 		ports = <&vopl_out>, <&vopb_out>;
@@ -724,9 +735,11 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x0 0xff700000 0x18000>;
+		status = "disabled";
 		smp-sram@0 {
 			compatible = "rockchip,rk3066-smp-sram";
 			reg = <0x00 0x10>;
+			status = "disabled";
 		};
 	};
 
@@ -1390,10 +1403,12 @@
 		#size-cells = <1>;
 		clocks = <&cru PCLK_EFUSE256>;
 		clock-names = "pclk_efuse";
+		status = "disabled";
 
 		cpu_leakage: cpu_leakage@17 {
 			reg = <0x17 0x1>;
 		};
+
 	};
 
 	gic: interrupt-controller@ffc01000 {
diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchip/platsmp.c
index 649e0a54784c..d9fdcbe30aea 100644
--- a/arch/arm/mach-rockchip/platsmp.c
+++ b/arch/arm/mach-rockchip/platsmp.c
@@ -372,3 +372,7 @@ static const struct smp_operations rockchip_smp_ops __initconst = {
 
 CPU_METHOD_OF_DECLARE(rk3036_smp, "rockchip,rk3036-smp", &rk3036_smp_ops);
 CPU_METHOD_OF_DECLARE(rk3066_smp, "rockchip,rk3066-smp", &rockchip_smp_ops);
+
+extern const struct smp_operations psci_smp_ops;
+CPU_METHOD_OF_DECLARE(rk3036_smp2, "rockchip,psci-smp", &psci_smp_ops);
+
diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index f9797a2b5d0d..4a172d220f72 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -26,14 +26,14 @@
 static void __init rockchip_timer_init(void)
 {
 	if (of_machine_is_compatible("rockchip,rk3288")) {
-		void __iomem *reg_base;
+		//void __iomem *reg_base;
 
 		/*
 		 * Most/all uboot versions for rk3288 don't enable timer7
 		 * which is needed for the architected timer to work.
 		 * So make sure it is running during early boot.
 		 */
-		reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
+	/*	reg_base = ioremap(RK3288_TIMER6_7_PHYS, SZ_16K);
 		if (reg_base) {
 			writel(0, reg_base + 0x30);
 			writel(0xffffffff, reg_base + 0x20);
@@ -43,7 +43,7 @@ static void __init rockchip_timer_init(void)
 			iounmap(reg_base);
 		} else {
 			pr_err("rockchip: could not map timer7 registers\n");
-		}
+		} */
 	}
 
 	of_clk_init(NULL);




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
