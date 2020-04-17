Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EB21ADCEC
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Apr 2020 14:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OwZ7WLw+kG6NI9MuyVi19HZ0gYo4r9utWqNJiv87ah8=; b=IqqiIL6jJOR7M7
	J5gOv8kMSTodSBuTlUmWp4PrwKMBBHziNSbxN0HB84YRQDk0iiUhAQu2QcTYTvujD2ZRV8rpM7wNr
	Z5jWyYOaYhkUl+LHSjFq7rh7wAKdhLjTwO5/n5OPpLWt1O0oo6vduO1ulBQMSaSx+IbkOjeoEkEGh
	IMDg/uZwRH225rej2iS7isDofkCNs992VZWSy+cc949j3+ukPZlFlHC49hv0S0Ndw2OY2d8q9yiZo
	lTCoR1jsQyhZG3F9aLsLgAIMQTNAFnia1tNP5390GvKDOZy4KysOlFbWR3sNgwc6q1ZtXXeM3zhAw
	pVhoSIN7EFp60HrwoTZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPnk-000894-68; Fri, 17 Apr 2020 12:08:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPnW-0007zI-5Y; Fri, 17 Apr 2020 12:08:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E89CD30E;
 Fri, 17 Apr 2020 05:08:40 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 45C903F6C4;
 Fri, 17 Apr 2020 05:08:40 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Correct PMU compatibles
Date: Fri, 17 Apr 2020 13:08:34 +0100
Message-Id: <6dfed94a99780c2314b38ff2b55a7efa0be4edbc.1587125314.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_050842_254452_76BFFF65 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A proper binding for the Cortex-A35 PMU actually predates these DTs
being upstreamed, so use it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..adc9b8bf5eaa 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -143,7 +143,7 @@
 	};
 
 	arm-pmu {
-		compatible = "arm,cortex-a53-pmu";
+		compatible = "arm,cortex-a35-pmu";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac43bc3f7031..ac7f694079d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -127,7 +127,7 @@
 	};
 
 	arm-pmu {
-		compatible = "arm,cortex-a53-pmu";
+		compatible = "arm,cortex-a35-pmu";
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.23.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
