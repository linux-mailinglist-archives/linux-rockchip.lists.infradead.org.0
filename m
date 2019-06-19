Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F294C0EA
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 20:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D/+Q/9EZN5GpcIPb3J7TtQA74sFSmy3HG7WZBI7OyUM=; b=KLEbzBclgoxNgT
	E32fAnlrEP4z2y3t5FoJUUlwz+QeB29jzsn9bpzFOZhLbANc/9iFqAYnUL04r8LqCdFV9tWFGGuBf
	XM2FOSOtKvH4Ox6yoHCR9sA0T0J8Y99c9qj2rKciNX6Anr5QxMH8bJkDQ4BQiQ8S3ioLPmcCaKE8p
	80tvJlJ9O+GpHW9nR/Aa0bbHhNbIcIS1OKT1p4YwUHL2qpsmXG67AybGhAiddeNeIM1FnX5J6Sklo
	puaAB5HVBlKfRcJALBIig9OY5L7Q3/vQF0ftDH4YjSmyRMx01n40I6iOw3w6URB+BXwYHhrswAlJk
	i0XV88MOG5bn+DmglP2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfSy-00061p-I6; Wed, 19 Jun 2019 18:37:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfSt-00060p-IR
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 18:37:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so162150plb.10
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 11:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2UHrTE7B5XpI1WvMqZiW3y+ZVgQqpXieqgBOuUL3YDY=;
 b=nXaidQykLu0h3v+pNAwd13wc4DhE5worNOflID9Mf2valzfpNLEoz/00pn7rrU7Dmn
 FxeUrAO5yA7lCOSKq1jd1jzQ4O1aY0TxEMX08ip6aEoG4HxpImTpVC6VSk+69Kpzm6Ys
 gmqahyhRmADeRLd6d+ldLEDrNFb2uHKhQjwM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2UHrTE7B5XpI1WvMqZiW3y+ZVgQqpXieqgBOuUL3YDY=;
 b=tp0VDgY5bL2OB0RTHqLpB5cH3fB4H2cwG2ASaMBsYk7GPVxEfAGS2kzmp/JgBei3t8
 T6X8kYsFZ+M4bxc6SdoHHLCk5Px3OccQBNLuO2b66/R9k/QsaI2DmJ0Da5qIBW3+MYD6
 eIHjYESJioYiSpZYmxRXHv5i7gWertHvYn6CTOHPgN8l21LQWMs7Khm4h414A2d7pa/T
 c59a+y00UD1xi09mhqHSL4JVpqn/s+0neUb4ClgArUyQCGzNHncBv7d63N7zgwnQ7NfR
 eC+yezCf+us5VTNclzUA2nQYFWbjWywafesHdmvQkn+EJL7rLXHJpbgQRQfHiaCi0n+f
 ZXMg==
X-Gm-Message-State: APjAAAVvIiAtzDdM1WBJS/l6HjRruYpv0Yuy+li2eHzYOfdg2TMP+76f
 U7r2YhgJcRgbbmgFpWFPN+GGAg==
X-Google-Smtp-Source: APXvYqw3w3u7xuqL2IUmlLYdr5iRpyNBWMi+c4rhFrkhqFLsCOFAK3UzXw/uPna24Mybo1ZWf+lnpA==
X-Received: by 2002:a17:902:7e0e:: with SMTP id
 b14mr96610234plm.257.1560969466479; 
 Wed, 19 Jun 2019 11:37:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j16sm2681463pjz.31.2019.06.19.11.37.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 11:37:46 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: Configure BT_DEV_WAKE in on rk3288-veyron
Date: Wed, 19 Jun 2019 11:34:25 -0700
Message-Id: <20190619183425.149470-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_113747_636445_C2BD5266 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is the other half of the hacky solution from commit f497ab6b4bb8
("ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
veyron").  Specifically the LPM driver that the Broadcom Bluetooth
expects to have (but is missing in mainline) has two halves of the
equation: BT_HOST_WAKE and BT_DEV_WAKE.  The BT_HOST_WAKE (which was
handled in the previous commit) is the one that lets the Bluetooth
wake the system up.  The BT_DEV_WAKE (this patch) tells the Bluetooth
that it's OK to go into a low power mode.  That means we were burning
a bit of extra power in S3 without this patch.  Measurements are a bit
noisy, but it appears to be a few mA worth of difference.

NOTE: Though these pins don't do much on systems with Marvell
Bluetooth, downstream kernels set it on all veyron boards so we'll do
the same.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../boot/dts/rk3288-veyron-chromebook.dtsi    |  2 ++
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 20 +++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index 5727017f34b2..1cadb522fd0d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -237,6 +237,7 @@
 
 		/* Wake only */
 		&suspend_l_wake
+		&bt_dev_wake_awake
 	>;
 	pinctrl-1 = <
 		/* Common for sleep and wake, but no owners */
@@ -246,6 +247,7 @@
 
 		/* Sleep only */
 		&suspend_l_sleep
+		&bt_dev_wake_sleep
 	>;
 
 	backlight {
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e2635ad574e7..53d2f2452868 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -485,12 +485,18 @@
 		&ddr0_retention
 		&ddrio_pwroff
 		&global_pwroff
+
+		/* Wake only */
+		&bt_dev_wake_awake
 	>;
 	pinctrl-1 = <
 		/* Common for sleep and wake, but no owners */
 		&ddr0_retention
 		&ddrio_pwroff
 		&global_pwroff
+
+		/* Sleep only */
+		&bt_dev_wake_sleep
 	>;
 
 	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
@@ -596,6 +602,20 @@
 		sdio0_clk: sdio0-clk {
 			rockchip,pins = <4 RK_PD1 1 &pcfg_pull_none_drv_8ma>;
 		};
+
+		/*
+		 * These pins are only present on very new veyron boards; on
+		 * older boards bt_dev_wake is simply always high.  Note that
+		 * gpio4_D2 is a NC on old veyron boards, so it doesn't hurt
+		 * to map this pin everywhere
+		 */
+		bt_dev_wake_sleep: bt-dev-wake-sleep {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		bt_dev_wake_awake: bt-dev-wake-awake {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_output_high>;
+		};
 	};
 
 	tpm {
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
