Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA5B365CC
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Jun 2019 22:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkOqn+xRyIOudcr/sUkGib/ddmdI8HibpLYThciDP6A=; b=FurgG0sV7hFzmZ
	jM77B7zdxRdz7TcjFqeoOir21mla2QnzQafQSCeuFliJ/so1QuvV5M9vVDb0byAJqJm7QJ8xanyhB
	P8QcWu4RpyUME+X9PRXWpTxbFbGqYRbx+dg8xVQFjL+BrJ1IGiAfiPp+coGlrnVF31ilMYKPHXoIE
	lKtIkp+roYmbpC9ct9HHuspJxucncd+fhd6faO6guBrsESGeRbgvN1hUNE5fUsWhn9oNmM8l5DnIU
	pSpSm00+mZF+Tx7GIDZmjfs/4iPkLi4sQ1KrFhQvwIejRmU7AGUppWr5zOfIZmlnWc2C+p8vjpH7d
	P8aS7ec/3MnnLVWUNGPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcl4-00021k-Aa; Wed, 05 Jun 2019 20:43:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYckt-0001r5-Q8
 for linux-rockchip@lists.infradead.org; Wed, 05 Jun 2019 20:43:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so13042884pgm.7
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2019 13:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FPhO1CL2QNYrFXmyPQgCjLUUu5vqgdBLRQDp0Dy3EaY=;
 b=HZx3rwDyN9lohAC8Lsx842/QIB9gDl7Ro/yIKCYQijq1qgWib8gDItv6Wj+OGyLA0m
 9QhbFR5pub9Ua7SBMWhc3ZUx/brP5Cbd2oJPlaYSYUKBIPpmH4DKVR+hDZytDQBZ6WID
 GrVRhIkAm+cLW6T6WoTWQpI4RHpWS1SQR9efE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FPhO1CL2QNYrFXmyPQgCjLUUu5vqgdBLRQDp0Dy3EaY=;
 b=eLhGHvNhJNOdFUHrAuesErWTgXlpWM4HevRGIIX9M+zxxARObGv9oZ2cBoBHTDx00E
 B1ZSpF/aUzeKYfSK0ub01y+AQPfDIMCk016838gyHJGvhtWQ2c7jIzLmw6kGW45sKi+I
 ttJ2vMI6BfdybG813cXLMUPVcJTHRdyUUluXi0ZtYtM32NPlPyX5b8mLmVlVjL2DYuHX
 SWGYidm2hNywNpaOqjiTh9dsK9pDEe7QQSNI8+1T9BvCSr4G39AcU6TsdUgGQUCB9uvt
 HXkax2vVqqNeos/4k4YYn8wlVuysYW3XTBmoK3YTr4vQuqZPptLoiw5FXj4RFaXq/Zpf
 xUUQ==
X-Gm-Message-State: APjAAAUtAoWgfbtXNTtl5Fs5gK0l3ja+DtqUZ4UGC+3c4JW2e3dpquMc
 YxGYmiG6DLostGW9rMaVzDyrOQ==
X-Google-Smtp-Source: APXvYqw8OaJ5XCmYYrFY2R93/vr1AH/RUNaTy1eqaGrtdWbTg0hiNdeTvlLiBUKg5HpkZp5KSXYsVg==
X-Received: by 2002:a17:90a:650c:: with SMTP id
 i12mr47670119pjj.44.1559767411253; 
 Wed, 05 Jun 2019 13:43:31 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id i5sm16360733pfk.49.2019.06.05.13.43.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 13:43:30 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Wed,  5 Jun 2019 13:43:20 -0700
Message-Id: <20190605204320.22343-2-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190605204320.22343-1-mka@chromium.org>
References: <20190605204320.22343-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_134331_845259_6014C9CE 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

This enables wake up on Bluetooth activity when the device is
suspended. The BT_HOST_WAKE signal is only connected on devices
with BT module that are connected through UART.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index cc4c3595f145..145cac7c0847 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -23,6 +23,31 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
+	bt_activity: bt-activity {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake>;
+
+		/*
+		 * HACK: until we have an LPM driver, we'll use an
+		 * ugly GPIO key to allow Bluetooth to wake from S3.
+		 * This is expected to only be used by BT modules that
+		 * use UART for comms.  For BT modules that talk over
+		 * SDIO we should use a wakeup mechanism related to SDIO.
+		 *
+		 * Use KEY_RESERVED here since that will work as a wakeup but
+		 * doesn't get reported to higher levels (so doesn't confuse
+		 * Chrome).
+		 */
+		bt-wake {
+			label = "BT Wakeup";
+			gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESERVED>;
+			wakeup-source;
+		};
+
+	};
+
 	power_button: power-button {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -555,6 +580,10 @@
 			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		bt_host_wake: bt-host-wake {
+			rockchip,pins = <4 31 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		/*
 		 * We run sdio0 at max speed; bump up drive strength.
 		 * We also have external pulls, so disable the internal ones.
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
