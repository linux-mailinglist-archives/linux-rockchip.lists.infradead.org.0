Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149E61B77A1
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 15:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zrgx12s5D0kE0TP856WGHgQJx/DUETL7+AmKy07MhQo=; b=k6+45A2uJ8z3aW
	4MCTOz5Ql9sF/GXsaEdUQLNs+I8IFgRwuXyommpK2nQon4Gr5rtBgvJmVHcSRXOtyJ2rEUqq9ZGgs
	SNkL2UUsphFbG7FsYNu1HFK/52OorkCB1mNRFnXMNp6Zb7rX9oBjLTKZ8S52LxeCuss+ghl3Ge6+v
	Tu6RpX9RI7/XUlSDGiXe8jQM2bq0R/9DnovAzeMBHgZKcEwYC0ghbMOlEUHpu/afe8Jhhxbksqk1K
	IhViNcx/KdDJYz5YHfm+dRo1S0Hf5V64ndyLzdwIy5qnWiUb9oVqI2Nrf/Rc3s9cWnPhm4vhn6ymb
	wD75qj85wFDCYek0wDBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyor-0006FQ-F8; Fri, 24 Apr 2020 13:56:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyod-00062e-9v; Fri, 24 Apr 2020 13:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B29931B;
 Fri, 24 Apr 2020 06:56:24 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9EA5D3F68F;
 Fri, 24 Apr 2020 06:56:23 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Fix Pinebook Pro FUSB302 interrupt
Date: Fri, 24 Apr 2020 14:56:19 +0100
Message-Id: <f731122c5ccde4e3d6d149a9d7bf01708b4279f7.1587736459.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065627_408586_90799EDA 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, t.schramm@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Although the FUSB302 driver has apparently supported the "fcs,int_n"
property since the beginning, the DT binding has never documented it,
and in fact defines a standard "interrupts" property as required. It's
also questionable whether the GPIO specifier with GPIO_ACTIVE_HIGH is
even correct, since the FUSB302 datasheet says INT_N is an "Active-LOW
open-drain interrupt output", and the Pinebook Pro schematic shows it
wired directly to the GPIO pin.

Just use the standard property like all the other RK3399 boards sharing
the same design.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..1417c3b2d163 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -690,7 +690,8 @@
 	fusb0: fusb30x@22 {
 		compatible = "fcs,fusb302";
 		reg = <0x22>;
-		fcs,int_n = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&fusb0_int_gpio>;
 		vbus-supply = <&vbus_typec>;
-- 
2.23.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
