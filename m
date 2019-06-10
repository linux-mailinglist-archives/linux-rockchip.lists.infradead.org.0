Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A53C02B
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 01:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TBw8FJbh3wSFNssXDlDlQFhry/ZgV1NgsqkGVcSXodI=; b=S/xNnY7jHigMoK
	f1Kvef2IMLkVnlbBmZHYL+QXnSzWc+Bt+lbDPhvAKKaUT3L0vSf3PzDzNvKiB75VK/+q5L92NPTF7
	eIM7xIMR8xG31a0mH6TZb1l0b7uno8WTDFIVqxeeK0n2xLU/v5Dyep9wFuLav0QzTWjtPzuP4Xg0b
	rL0FjHwoV6erKTG4+u8Db7VMUnCWPx3olqQHnRIHx864SZ8CGS5fq3ewJT+u2SmCPkCYAYLiMz5cV
	Nl6ahOVNPUSpsncNvQz3Oyqg47/R45Tvjh4x2+ziX8f0jlP/v4a61yiLGny1TmRvSDc6kqV8oCRRi
	IpM/l9hfwoIokvYovHzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haU4v-0002pl-PT; Mon, 10 Jun 2019 23:51:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haU4s-0002oz-EY
 for linux-rockchip@lists.infradead.org; Mon, 10 Jun 2019 23:51:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id r7so317510pfl.3
 for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2019 16:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vqMs2GH/xtfTYsmih0pOOnY0fKcqNqNR+gJpdBUA/eM=;
 b=oTu/idBfwM1cB4tIJjf+zl14e9kVwF5wKkGI8f0gWvPvtxvoBBHvRGa73qrU+yzSHq
 KPNSfe+fwoY0dUPsoQQ3MDKwGQ+3l/w99DFGQKnWvDxraTmV8fFUjFINoYjoaLZ46Owp
 S53g33290impJ+/PSJ8HoyI5Qe/jQyR9QAr+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vqMs2GH/xtfTYsmih0pOOnY0fKcqNqNR+gJpdBUA/eM=;
 b=N1fSt6bCDQZv7CGy0/6aCWZZyzcsAM4ym3MrAhyhJ9Gl7IhxWJ0bjGY3AoO3D9LEef
 ybMKTWI2YbiUSrzTQOgnZ9Da46Hz4FMXg8YL62Efyf0zr1AJV3iYKRmxx5lhNmy/bXDO
 bI4saOJalx0htCyoh01qPSHWW0eKU7RFbTMcKS8NGtqqcNMKDVUuybv3aZCJcyPx+WcG
 Gnf1iadEZ+h2NShc8wfdKAbFl4O4F/VrobCaAveHP2lA7un8MF8jdb/IQRcDLYbF0l3w
 WWKVMeUcpGR54FiSSp5IF+4yKg74uuXmjEIIzCFeDkF/9j/o7wxzbJuu013tNBMtRnlv
 456A==
X-Gm-Message-State: APjAAAU3QEsizUEi+IyVpshasojSD6koCOG2zBsdQ4UCXV1wQ9oaGHbM
 xV0ZaTCpqCwdcd+ZxaZDlGRHaQ==
X-Google-Smtp-Source: APXvYqzD2cF4pnRnha2FFCgMkbGrdDrfEXK5tQFC7u4b2ZqJZuPKjGHTPolqdv2vdZK1NcfWeh5WLA==
X-Received: by 2002:a17:90a:d983:: with SMTP id
 d3mr23473225pjv.88.1560210709380; 
 Mon, 10 Jun 2019 16:51:49 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id y5sm11427325pgv.12.2019.06.10.16.51.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 16:51:48 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
Date: Mon, 10 Jun 2019 16:51:44 -0700
Message-Id: <20190610235144.34261-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_165150_501603_90D0DB45 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Doug Anderson <dianders@chromium.org>

This enables wake up on Bluetooth activity when the device is
suspended. The BT_HOST_WAKE signal is only connected on devices
with BT module that are connected through UART.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- attributed authorship to Doug
- use constant instead of literal for pin number
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 3257ca90f0e8..e2635ad574e7 100644
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
@@ -549,6 +574,10 @@
 			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		bt_host_wake: bt-host-wake {
+			rockchip,pins = <4 RK_PD7 RK_FUNC_GPIO &pcfg_pull_down>;
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
