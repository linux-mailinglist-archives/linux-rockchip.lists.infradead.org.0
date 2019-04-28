Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ECFB5C2
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTxnrft0iOVAqcBC6BUQ6NGFdgv52EpdUeCp90Zbick=; b=n7v0ZZsqIkLjt7
	LXMJUdbI601YTr2uz59mLx6szGmPrs9sglMHnQjMpcFAMB+vmKa/IS2mPTGYculiweQl0ffzPKP/c
	2SqvSozK/HxsKlKfsgVg4onqC1gCrrEID3Ye+mXkj9T1/ZDSCC5hXhbTfa6SX3rmrxRY9LJGhPN4z
	BnARwzvAFOMWFhWhOyvZz7heG7Q5a52dyyKHS6xQRfej+YItLOQNJRTEZO8za9v0vx2+r3OcmoSQQ
	mvnDOwHfGyzHbX68DW9+tmPkIPY+T2jPiwOAXrKn2SXYNs1G0bMG4+31jXbDwNLhAwrJzq3KAREoh
	VeZfqJBlhncT39KvPd4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfp2-0001pi-8k; Sun, 28 Apr 2019 09:10:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfoy-0001Fg-EC
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:10:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id 188so3837014pfd.8
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jbmGXxkwOz7cAfu5fBsEmJSPwRK5yjC7zph2SDNhFiY=;
 b=mQP1jm2kW5E7f/TJqjF21UgNDuOU38qsMcAe4kg55+gsvBwgXRQBwEUSw1ftfxKANk
 wadVvUFqILAMS9foLngwaLNB1Bl1bhBqSuW6i0tBrn0BtTpIsAKLxKb5ogQqF437MmeD
 pdKMK5XPvuEQ4/D0PDik8QXpoYM1xknXdcwJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jbmGXxkwOz7cAfu5fBsEmJSPwRK5yjC7zph2SDNhFiY=;
 b=I/S/lJEJ6XagqPePVmiNwUiBGYoQV0LhPjKyGx6bjYI5Bcj8Mr8cFxIl+9WasViEZL
 rPulGiMfnE0Nhnd0DBUy+9Ab6KDcQkWkxqz8QzRILxRX1bXovCQnca8LG9Gw8YAcH7ig
 GQGxwh9AlTxPEaa5p7lQR9djCCJZxRBkhNa6uZhmcCM6U+cUuGCv8hufV3T3B1wKZQFH
 ZWQ/l/o10cZZo+VuOR8POP6N2qu6omMg214tMrzTZh3axUNfj5w3Z68VhLoe+NanMKDQ
 dAqAgScfcHlbXsQZRRtFxiPlijTfCTIXElWjyumJDFPH6FvGdo5l/DzB+LQCQj/8b2q5
 vxtw==
X-Gm-Message-State: APjAAAU+EC0fnO9w9H6komsH5YWRvhn8nbAOmqO6BRxTQzhHzCT6978y
 oGWItVu3SerpRI3065smZcjoEw==
X-Google-Smtp-Source: APXvYqzngpU6WrUEKHPTrgr7tssKeZMGXTq0kQeXmsfs6Sb6uRHMWJn5ugq4lGv+3e+KewqHx3CVHQ==
X-Received: by 2002:a65:518d:: with SMTP id h13mr53637108pgq.259.1556442603558; 
 Sun, 28 Apr 2019 02:10:03 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:10:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 8/9] dts: Makefile: Build rockchip dtbs based on SoC types
Date: Sun, 28 Apr 2019 14:39:12 +0530
Message-Id: <20190428090913.10568-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_021004_500723_8347E37C 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sometimes u-boot specific dts nodes or properties can use
from config macros from respective rockchip family include/configs
files, example CONFIG_SPL_PAD_TO.

So, it's better to compile the dtbs based on the respective
rockchip family types rather than rockchip itself to avoid
compilation issues.

This patch organize the existing dtb's based on the rockchip
family types.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/Makefile | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a2911fa2fd..0f9d6b7d0d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -60,11 +60,19 @@ dtb-$(CONFIG_KIRKWOOD) += \
 dtb-$(CONFIG_ARCH_OWL) += \
 	bubblegum_96.dtb
 
-dtb-$(CONFIG_ARCH_ROCKCHIP) += \
-	rk3036-sdk.dtb \
-	rk3128-evb.dtb \
-	rk3188-radxarock.dtb \
-	rk3229-evb.dtb \
+dtb-$(CONFIG_ROCKCHIP_RK3036) += \
+	rk3036-sdk.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3128) += \
+	rk3128-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3188) += \
+	rk3188-radxarock.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK322X) += \
+	rk3229-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3288) += \
 	rk3288-evb.dtb \
 	rk3288-fennec.dtb \
 	rk3288-firefly.dtb \
@@ -77,14 +85,20 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-mickey.dtb \
 	rk3288-veyron-minnie.dtb \
 	rk3288-veyron-speedy.dtb \
-	rk3288-vyasa.dtb \
-	rk3328-evb.dtb \
-	rk3399-ficus.dtb \
+	rk3288-vyasa.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3328) += \
+	rk3328-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3368) += \
 	rk3368-lion.dtb \
 	rk3368-sheep.dtb \
 	rk3368-geekbox.dtb \
 	rk3368-px5-evb.dtb \
+
+dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-evb.dtb \
+	rk3399-ficus.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
 	rk3399-nanopc-t4.dtb \
@@ -96,9 +110,12 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3399-puma-ddr1866.dtb \
 	rk3399-rock-pi-4.dtb \
 	rk3399-rock960.dtb \
-	rk3399-rockpro64.dtb \
+	rk3399-rockpro64.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RV1108) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb
+
 dtb-$(CONFIG_ARCH_MESON) += \
 	meson-gxbb-nanopi-k2.dtb \
 	meson-gxbb-odroidc2.dtb \
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
