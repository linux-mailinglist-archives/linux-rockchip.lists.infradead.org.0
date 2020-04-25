Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1071B85D0
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 12:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+Hzgp8ylk9GBQTrKZOvGMPAIm8tH3VXKC8gjP5FB9rY=; b=tCTWqviRBswM9rZBwzvnSxOEpw
	hOCLxN1XIae0OWS1Xz5JwqP/N/eBtnYotSPEDF+qSzoeKpF0pUti+ylMtfAQqhzmJ+rs/aJuxdAkV
	sACGE42n2U9yF+tvTQS/vqv/Exw5BoK+qeS4T55sGR0Ewppr3Z3HayMhTbCRNCqlHPbllcdUtbI87
	TIyUKs9Z8VPCvzrwa6i49hZwyaFWzVt8ETlzT099wcdDP1cYLj3ERl7f3SS1SQRX8HxB762p5sro1
	9vOYNcOKylkgcoIklvje2L0xotKr+wPXxgwuQW9RuyFWZFa0eBK0su3sUXy+W8OMWpScVeZEiCKLQ
	pFh/f/eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIRJ-0007so-Hp; Sat, 25 Apr 2020 10:53:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIRE-0007qf-DP
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 10:53:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id c21so3932834plz.4
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 03:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9VLbkJmNTisU0jYBCvc49DqVXvKuARSDF8pUuqHfCB0=;
 b=hDrqm4sPjUEZ2wUf+jm6ntllNwUKuh3EManbXisUg1GoS8ZA+zK1ILvrKUMB1zyTLv
 YPTV465Vu1otBbMeL2zU9oXXQZS0mr2ddjBMkBtKb8n2s6zzIQR5bGFQFalu6BLqAKoT
 zQ61JGw0SXOZVYp2UmaULVtnpdOXYxNQT4JLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9VLbkJmNTisU0jYBCvc49DqVXvKuARSDF8pUuqHfCB0=;
 b=BBFsFhp+PV65oKbzugqdqH55cmpGg6PUZqiS7uZjyUv963AMa3KDzFqyF6zAWMSydJ
 iQiAS9DdU6NhtCqoI1Wjztl56BXGn6r7h+4XAEpDaRFVgf+GXTRj27ya794Z4tTzazNa
 eUp5C6C0SV0jWtDNAdFJ9aHovPY4moYELDlzF5jyGu64HFp3CvvAKYlkCizJPYCfuXPt
 4uzT4jwpqeB/43R9NTRPUyBrPUlZ8svx/Cdpf7hMhXsa92INyKfkv0jPo222c0FCVV2X
 FDlP9qBTa3Q9kuB75mDKuwIyIRqw5xx/rMn3wLEIC6wP17cUUNX26mjc+zduOLHFBWH7
 55/A==
X-Gm-Message-State: AGi0PubkwW1YeWJHyE0uTVuudG6XGYtGKJbLcCcmLB88CXI76F7yoXnh
 9cfRaogaseCLttfWGXFeV+NzNA==
X-Google-Smtp-Source: APiQypLxPb5gUIAJaRGHFaiwUArICdu/nkVjLnkt0WdIEefTCnwF26vQzBgTPBKJvSnrXnNGQt/1gQ==
X-Received: by 2002:a17:90a:12c3:: with SMTP id
 b3mr12590545pjg.57.1587812015894; 
 Sat, 25 Apr 2020 03:53:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 u188sm7996303pfu.33.2020.04.25.03.53.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 03:53:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/6] arm64: dts: rk3399-puma: Move u-boot properties into
 -u-boot.dtsi
Date: Sat, 25 Apr 2020 16:23:14 +0530
Message-Id: <20200425105319.12009-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425105319.12009-1-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_035336_452796_693390F3 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Peter Robinson <pbrobinson@gmail.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Move U-Boot specific properties into rk3399-puma u-boot
specific dtsi file.

This would help to sync the devicetrees from Linux whenever
required instead of adding specific nodes.

Cc: Peter Robinson <pbrobinson@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-puma-u-boot.dtsi | 16 ++++++++++++++++
 arch/arm/dts/rk3399-puma.dtsi        | 11 -----------
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/rk3399-puma-u-boot.dtsi b/arch/arm/dts/rk3399-puma-u-boot.dtsi
index 52f62b5d39..e664779227 100644
--- a/arch/arm/dts/rk3399-puma-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-puma-u-boot.dtsi
@@ -22,3 +22,19 @@
        };
 
 };
+
+&bios_enable {
+	u-boot,dm-pre-reloc;
+};
+
+&gpio1 {
+	u-boot,dm-pre-reloc;
+};
+
+&gpio3 {
+	u-boot,dm-pre-reloc;
+};
+
+&spiflash {
+	u-boot,dm-pre-reloc;
+};
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 558b6337df..246a892cb7 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -91,7 +91,6 @@
 	 */
 	bios_enable: bios_enable {
 		compatible = "regulator-fixed";
-		u-boot,dm-pre-reloc;
 		regulator-name = "bios_enable";
 		enable-active-high;
 		gpio = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
@@ -520,14 +519,6 @@
 	status = "okay";
 };
 
-&gpio1 {
-	u-boot,dm-pre-reloc;
-};
-
-&gpio3 {
-	u-boot,dm-pre-reloc;
-};
-
 &pinctrl {
 	/* Pins that are not explicitely used by any devices */
 	pinctrl-names = "default";
@@ -633,8 +624,6 @@
 	#size-cells = <0>;
 
 	spiflash: w25q32dw@0 {
-		u-boot,dm-pre-reloc;
-
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <49500000>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
