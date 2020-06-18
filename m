Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693611FF8E5
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhhNqnPtWGtUFIsBWVuD2ya17rFyjUOiQseGgcb8YeE=; b=hYEYqzjZLMJVTP
	b9rrU/0HxtfPU4dLy7TK7UA5Z1bV+cpExBOZ39dXZb3hYdIjXpkRYWtECdtvx4bik7Dzh83zky3e1
	ZAx8URelgejDSnd0I+VfeoWybxFzlSl0aY9dA/I248ZPq6kr02DRRIYSz5G082lrki9aowTs3PySo
	UMG978B53+y3ZX6c7jQX6B8WHlyVJbUhTVGVPNGDPWH56OAtP2BUJK5dd/Ed0rBe95x4Km5Agg4nk
	QmOBLgQeu3YS7AxODgBW30sB3WbHCVsihvm27SK62wqd5n/b/g4NaVIkbzJn1OGyuTEzHcuhRaIgw
	V8zE7Cw0Xl6KZjaW5WCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx9c-0003pQ-T5; Thu, 18 Jun 2020 16:12:40 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx9Z-0003k2-DU
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:12:38 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ne5so2737280pjb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PNG3/d+L5ehzcRi6U6PvyYnWQpo3tX3ppB1BNPNmZJs=;
 b=qH57Z17x58lLyCZZmNwfrHjY204cfl4/IcXbFxeQQA9UsNDU3IdGZP6l7t8tq+DpRw
 zdOhmQ+oBSYcSqQiO4N22Xuqnq1A4pJ1fqpxANSCX92ieSkI03i/tqDtJCQjM/bUO08n
 Viv/bIrxJM5s66KlHQKOHBbM22/kARYSjOLtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PNG3/d+L5ehzcRi6U6PvyYnWQpo3tX3ppB1BNPNmZJs=;
 b=oGbRjSFfBGNrDBbOrxlOWqNOJ3iMDJdo46HksLtdNqzWYRazLrZ4iPlE/e2AsEQzVv
 tQrAYj+JuH6ME0V6cyRCbC+YVit+8i3e1V3eLvreKpvkGAd/1b78q6i2wt7Zal34jRNP
 gVRXsBQ4N8mthOO3yFfVQIMXXtvGE2PdC5UmnQQqQKfPgq2HXgbnSEoN3XmRwwm8O3aF
 80xfLSTqv1/7ojWoEiggX2Y1dZRsEHFZoh9KkIiNmas5Kd3IlA5X8gRGpGCPAtvWBxwy
 8msFbZrCAzq+klGhVKRF6eDVbfOx77gIqURS2OLMFnAUikfAbcRI/ix+xCsZwasJgQBs
 Jxjg==
X-Gm-Message-State: AOAM531eac+rxHf/VWH8wuffJjpsIyoht60gSwdTCYE40tuDFeliriD9
 ofw70S4jDFdD8oq7mAjsfxyLxg==
X-Google-Smtp-Source: ABdhPJwmXOJLjANBpaMQCfRBu8QK4nkG4vTNK6nH+OKYT9LAQkFv6rI41ChhvDMS4IxZSwoDxTvNLg==
X-Received: by 2002:a17:90a:d485:: with SMTP id
 s5mr4712324pju.61.1592496756769; 
 Thu, 18 Jun 2020 09:12:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id b3sm3247252pft.127.2020.06.18.09.12.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:12:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 1/3] ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
Date: Thu, 18 Jun 2020 21:42:18 +0530
Message-Id: <20200618161220.219452-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618161220.219452-1-jagan@amarulasolutions.com>
References: <20200618161220.219452-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091237_463463_AA3FC997 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Radxa dalang carrier boards are used to mount vmarc SoM's
of rk3399pro and rk3288 to make complete SBC.

Among these combinations, card detection gpio, max-frequency
properties are used with rk3399pro SoM but not required for
rk3288 SoM based on the hardware schematics.

So, let's move these sdmmc specific properties on associate
vmarc dtsi to make common use of dalang carrier device tree file.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399pro-vmarc-som.dtsi           | 5 +++++
 arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi | 2 --
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
index 0a516334f1..6fd17e8a81 100644
--- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
@@ -317,6 +317,11 @@
 	status = "okay";
 };
 
+&sdmmc {
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	max-frequency = <150000000>;
+};
+
 &tsadc {
 	status = "okay";
 	rockchip,hw-tshut-mode = <1>;
diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
index df3712aedf..3e54f38f0a 100644
--- a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -52,10 +52,8 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	vqmmc-supply = <&vccio_sd>;
-	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
