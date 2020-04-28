Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8D91BBA7E
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l76DkWuh85D7bty+hfp/gHaNSRgptzF3wpyvDNYXiZc=; b=Tfy1LNyUoOdsxZQKELKvgrZmNT
	DYEmmvqQA+jciDPFWaQXWwvuEjJXEcVDDNW4wHIa8YyYpn73uDhyfDPDf1UqJ0E4VJd1OUUCCpFCw
	dF1PpHHUUpRKahaE6xBQj/R+oT38+uvz2A989c24zEfYRLDLoE2Qz5EZLMXLdS9vCvCdo4+YuFfeM
	Gg/mpo/oT9uR5QFcHY/qg5Nyd9C6t69utX2F1OB6rPDp1N1JRrwPKV3YoaODUWCViN6gYJqZD9vLj
	ODdd5UAO0NS4J0JyoITw0nDGumuyIPMtoR46S7zoA0xrbvjyZ6/htEHAL/qLUEh/hwPZH4rlFKfLI
	FpMxIvBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN2b-0006Bj-Ot; Tue, 28 Apr 2020 10:00:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN2Z-0006AA-21
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:00:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id n24so8155625plp.13
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u3OmJrFRH5SZ5vhK1B3zVrM5qwfRMs/mWoaA11CxKAA=;
 b=haVDTJ6BwCRpLbsnHHOhp90NoE2VTRUJC1ya337o3EvdEH86uhHx2RQNxq/h/Qe5K4
 Z0d4GWOMRFg7LXX+RHlz/V9Tg+Frq8FmYTJhwltfgFOryUROaVHv13PgYQUK+GZdDQ4h
 uwdUvzCy2IMCJbz1Pbvsw5fYwdNiy+hJo/9GA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=u3OmJrFRH5SZ5vhK1B3zVrM5qwfRMs/mWoaA11CxKAA=;
 b=t7c+5bemSckkEq7QBMegiS40EOlqQdprlXEZwLnBVLc5DL2+/CbOALHQcRU3GmguaV
 kL8o0hvqsv3Sjc+QrK/kEdK7Lw3F6Ffu5kfxy1e4P7sGNXeqF1bAK0/aVLPDUrveIJ2C
 wzgvJ03Qd5Dq9LMsUsuimFIuGIb1iRrurxBBJ/fJZiD7cZifIXi/rRbJ+pOpn2Ph6v7u
 4d3TyNQ8dO7cqfjVMgDjg/x2AOXJaGUxzxv0oL0uFyex5FUkoNSJwm4YNg9FA6q5ug3N
 awvqVW1c6V62WRbhFKGmzl+EQ+vPHmrwaIMqQTl+tE99rfHfEmLaXGptwjnCSi9FC6HK
 y7Fw==
X-Gm-Message-State: AGi0Pua4cJDWWuLk+66HlMfNRHaZi/KLsMNSyRYXE9YwyZ2goMYRta5G
 IfBPpljS2Uz2HelfiNzLiu/LfQ==
X-Google-Smtp-Source: APiQypJZpuDtUiehPPsUUUNy/1pMNKqdn6J10fj6g2XDSgsy5D55cMe4pBjuvMfFcEaswKtZn1l/0Q==
X-Received: by 2002:a17:90a:eac5:: with SMTP id
 ev5mr4035455pjb.173.1588068034445; 
 Tue, 28 Apr 2020 03:00:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id j32sm12676379pgb.55.2020.04.28.03.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:00:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 1/6] arm64: dts: rk3399-puma: Move u-boot properties into
 -u-boot.dtsi
Date: Tue, 28 Apr 2020 15:30:14 +0530
Message-Id: <20200428100019.19155-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428100019.19155-1-jagan@amarulasolutions.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030035_104874_A3977040 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Changes for v2:
- none

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
