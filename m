Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319FA365CB
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Jun 2019 22:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WwnRPvkCi4ceepVClHUgWNE6oTYeJ9lj8Z5tn02VlAg=; b=imroYLY415NOa0
	wl5D75zPfwcQTJ6ekDNG1vWDJa7qwG/c/gbiZyXOoQA0OmNzSHVH7fHTIekWuQipNEhsrf1gFIaLY
	tu/9gMWDGFHwDY6r3/qV9KaTclrYtkqCn1greU+BS4BtZuhvSW5Rbij4qbU3O92aj5gOuswkDn3hx
	pB9/WrhihF4VmUY3u+Z9mOw2v+0KDNg1g+gwId7WYOr28cebR/5W/9MzmOn/FhmFLqfd0MHzHZtGE
	+EnLkXaSjo2PqKA4nVRRA904o+p8EAFNnzSHxde9hq00+0DtlGJH9hR54oSx0dP5SnY2VZ9V2IvFk
	jCIQLQuorAz9HZUsIiHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcl2-000205-Eo; Wed, 05 Jun 2019 20:43:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcks-0001qb-Tj
 for linux-rockchip@lists.infradead.org; Wed, 05 Jun 2019 20:43:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so48838pfq.0
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2019 13:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kH2tvIwU2ls26BfCFJz74j+s6XjNGAPd9Rh4Z1dVjH4=;
 b=H9iXWx2ocx/JtgZ2RjHGQbIVmSNEa7cxsw6UErWXT0TOBExrTfBF6U72DuqHf09MY9
 n5/x6/Dc8g24zwg+oHwI2shjlytkslSvy1HtXb5Q12OLaUA4zCD7+uD5KnQjEf2q+yVA
 i8w/jYS9u8jc8S0ju/tFv9Dq4Pil8x2v98YNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kH2tvIwU2ls26BfCFJz74j+s6XjNGAPd9Rh4Z1dVjH4=;
 b=OISy0sYr02iloVwzvsLTEatm6aGx0KeG52/BerW5jP8+qigVopc4zmxdcZzhsdybN7
 nBpSw7BGazGtLGwf7nDMxtz33SYpgwJwrY4qEtDPCe/wPU7VzNDrUIZs2I0C1E4GUA9M
 d4TuA5heM5Qdxfde3XdHwJ+dpzZQC7o6ox3nw94fo+3kD1LsgDMh5tTCXfPZ2zhVBmJx
 bByMMYe719TMlNJjbxCKgsHKSObPUDdcCKGorrlz8hvMgpP/d1ROsDlfIl1YQ3IeybFg
 CAO/r1Zk3ZvHksW3H9iIyqL5P7xBEFx98jhtkbnqPoz+I5VnhO+YuSHk4a4k/cXGlUbP
 dx5A==
X-Gm-Message-State: APjAAAXB3VFZJT3IjuLEIo80rb4kzKYSv6lQsPEJDoANLDiW9Aalb9t8
 ovKcI8rmRBFfNvWl3+hPMNqbZQ==
X-Google-Smtp-Source: APXvYqw0RtPjrjAddCvG5oorCNxx7MTwisOIJy/yGXAtys5TX4LlNbhepwgGAhKlQk4LV0+c+hIIRg==
X-Received: by 2002:aa7:8491:: with SMTP id u17mr36195165pfn.93.1559767409871; 
 Wed, 05 Jun 2019 13:43:29 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id j20sm22313321pfi.138.2019.06.05.13.43.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 13:43:29 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: Split GPIO keys for veyron into
 multiple devices
Date: Wed,  5 Jun 2019 13:43:19 -0700
Message-Id: <20190605204320.22343-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_134330_985888_415C712B 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

With a single device DT overrides can become messy, especially when
keys are added or removed. Multiple devices also allow to
enable/disable wakeup per key/group.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 26 +++++++------
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 38 ++++++++++---------
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     |  2 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi          |  4 +-
 4 files changed, 37 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index fbef34578100..c5f71af84a40 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -70,6 +70,20 @@
 		pinctrl-0 = <&ac_present_ap>;
 	};
 
+	lid_switch: lid-switch {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&ap_lid_int_l>;
+		lid {
+			label = "Lid";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <0>; /* SW_LID */
+			linux,input-type = <5>; /* EV_SW */
+			debounce-interval = <1>;
+		};
+	};
+
 	panel: panel {
 		compatible ="innolux,n116bge", "simple-panel";
 		status = "okay";
@@ -149,18 +163,6 @@
 	status = "okay";
 };
 
-&gpio_keys {
-	pinctrl-0 = <&pwr_key_l &ap_lid_int_l>;
-	lid {
-		label = "Lid";
-		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
-		wakeup-source;
-		linux,code = <0>; /* SW_LID */
-		linux,input-type = <5>; /* EV_SW */
-		debounce-interval = <1>;
-	};
-};
-
 &pwm0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index a65099b4aef1..b2cc70a08554 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -48,6 +48,26 @@
 		regulator-boot-on;
 		vin-supply = <&vcc18_wl>;
 	};
+
+	volume_buttons: volume-buttons {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&volum_down_l &volum_up_l>;
+
+		volum_down {
+			label = "Volum_down";
+			gpios = <&gpio5 RK_PB3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEDOWN>;
+			debounce-interval = <100>;
+		};
+
+		volum_up {
+			label = "Volum_up";
+			gpios = <&gpio5 RK_PB2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+			debounce-interval = <100>;
+		};
+	};
 };
 
 &backlight {
@@ -90,24 +110,6 @@
 	pwm-off-delay-ms = <200>;
 };
 
-&gpio_keys {
-	pinctrl-0 = <&pwr_key_l &ap_lid_int_l &volum_down_l &volum_up_l>;
-
-	volum_down {
-		label = "Volum_down";
-		gpios = <&gpio5 RK_PB3 GPIO_ACTIVE_LOW>;
-		linux,code = <KEY_VOLUMEDOWN>;
-		debounce-interval = <100>;
-	};
-
-	volum_up {
-		label = "Volum_up";
-		gpios = <&gpio5 RK_PB2 GPIO_ACTIVE_LOW>;
-		linux,code = <KEY_VOLUMEUP>;
-		debounce-interval = <100>;
-	};
-};
-
 &i2c_tunnel {
 	battery: bq27500@55 {
 		compatible = "ti,bq27500";
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
index 9645be7b3d8c..9b6f4d9b03b6 100644
--- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -35,7 +35,7 @@
 	force-hpd;
 };
 
-&gpio_keys {
+&lid_switch {
 	pinctrl-0 = <&pwr_key_h &ap_lid_int_l>;
 
 	power {
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 90c8312d01ff..cc4c3595f145 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -23,11 +23,11 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
-	gpio_keys: gpio-keys {
+	power_button: power-button {
 		compatible = "gpio-keys";
-
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key_l>;
+
 		power {
 			label = "Power";
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
