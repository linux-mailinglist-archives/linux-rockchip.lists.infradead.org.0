Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B7B19DA6F
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 17:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f8TN/BFebtLFApNaEA3VFcONAC+EX/BT2H1PWzflu7c=; b=rFsH8FtM5AyRhMcEX/fdJwDQGl
	BbLHu2oqbRrtCdmcvikXMfXfX25qUT2krlTC3LGBTlk7pM4yu5m41D+a0MD7p4X4SKd7u48/OBdsA
	f3br89AvXaI06XToDfw6nyiKUa9jC3DHYQI3krbNESxwgCoybZsflyJYGRIh07dGw2chTrm8+PGjW
	vPYPYYu2xYZr8ytiMXQaN8CuV/vRdVBic4ke9rQeMKFiB5AUpNNB4xYICX+SzAnOcPu2QbkVuWjSp
	C3SWl0Rl92rbOZqDNtp1W5VOW/w0uYuiCUirLd5t7SIxI0pwl7/wwDWUbZEEqq/3P+BR1PYiV0j7j
	Sz+Immxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOUL-0008JB-Rm; Fri, 03 Apr 2020 15:44:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOTr-0007jM-8j; Fri, 03 Apr 2020 15:43:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id t8so7604064wmi.2;
 Fri, 03 Apr 2020 08:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8EdgXbs5SzoJ+SdfVQVAnWtgLhjo5feNI5qPAURWOdI=;
 b=Wml2g6j7pNDtWoVQC9omTmBXuBRWv/HiHlW4vRZhhgmo8jrIpmBBbVCd9w1W9y27M0
 fRtsAKjTO5kvtO2BgQ3xvfts/vXJDX7BCJw+xDPSHteleOct20B2tmZGf7smnb7l74KA
 Zkm52rOvpUat//aL20YRhEIjYPyl1rg+8dL5uqoNCcEpcj4AtzGPnbEN5qz/2BRbuv71
 K4KKKGmkn+glRYMTFM5HpDu73Tv9qc7l44q68NXpNCUVL2VFv3keCXPVzbnU7Bt6uTDD
 WnTmBnm6mbwYFyNPTJtUj/BYorUJZPXDoS1roIsMhfYNuuT2TeNo09VM8JGsG4Ylm57v
 b/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8EdgXbs5SzoJ+SdfVQVAnWtgLhjo5feNI5qPAURWOdI=;
 b=IrTY/VE6Pn+6/bgnUY0pFe8Pi14m+I6W7uDe/KWAF+cvH/Ogy0MMXZWoWqK8c1/fJM
 p+DVbXXCfuaEDUy4Bo9Pq1LtEgiR7s0Q/jlbDC0VshSdNn7v1a5UK6VlHxGIX3OBKfzR
 O0mODz9JtqBjilDdmPinfgus5JFxYU0z02MAxTNALebAGmvEXYu/YE2jd3Egtzz1pISe
 63+RwQ6JpqjX9ZwlcTzOIEHTRpn98/TUaqKTtctYFlxlaBB5vXDicCW25HyWxQnn/Siy
 O7IRYnP9+pQhEVUNW5MQ+O8RywjJds5icj/fvKGRc2KpOrGwS3LI+12+ARqzrwNcvDIg
 YmxA==
X-Gm-Message-State: AGi0PuaRRIFTz9hQy6uQVuyNrBPqGoipIh0oaKPTtLnbtMUuukRPTkiC
 3wXBfeIjPTZmnxVczWSBz5I=
X-Google-Smtp-Source: APiQypIdfVM8Ohqo+FmD/zM+YA+XRK3MMfe4WRTwIojwI3dOLqqi2vSZ1GEHTaVF/ckE8eV4TVJ/tg==
X-Received: by 2002:a1c:cc0a:: with SMTP id h10mr8883490wmb.127.1585928617818; 
 Fri, 03 Apr 2020 08:43:37 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h2sm11701580wmb.16.2020.04.03.08.43.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 08:43:37 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/3] ARM: dts: rockchip: remove include for irq.h
Date: Fri,  3 Apr 2020 17:43:28 +0200
Message-Id: <20200403154329.11256-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403154329.11256-1-jbx6244@gmail.com>
References: <20200403154329.11256-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_084339_302355_CE52DCB9 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The 'irq.h' file is already included through 'arm-gic.h',
so remove them from all Rockchip dtsi files.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 3 +--
 arch/arm/boot/dts/rk322x.dtsi | 3 +--
 arch/arm/boot/dts/rk3288.dtsi | 5 ++---
 arch/arm/boot/dts/rk3xxx.dtsi | 1 -
 arch/arm/boot/dts/rv1108.dtsi | 4 ++--
 5 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 781ac7583..55f3838b2 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index c14891fe8..d5a1aad17 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index f102fec69..a56b4a58f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1,13 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/power/rk3288-power.h>
-#include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	#address-cells = <2>;
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index f9fcb7e96..c79d98edd 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -4,7 +4,6 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index b453f8d0f..06c46bed9 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/thermal/thermal.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
