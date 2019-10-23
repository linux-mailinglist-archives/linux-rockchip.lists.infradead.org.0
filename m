Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23BFE2686
	for <lists+linux-rockchip@lfdr.de>; Thu, 24 Oct 2019 00:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5o9FiDhyL19nWifr2yvE9ftn1z1QKgSi4HdwvkX7GRk=; b=aZ/Ap0pMiRJ66i
	/PIy9dZBl5F/W5MaiFQb+WUVheU3YgD0NrhgyhjkTFsBw+IbqtEV7JXf8/YhZDrUkF7QglHBEQkZX
	/ZBIJc3jZOPYdcC1cXuJmx+zCzKCbZJtvaiEuiNGDtpDouGZ84OVh9yn9dgNfyDQqtHyViuQ0G8r9
	/O6yV3vvIxDa2ZXAPUKSht1c0Gha68e1kMj4p0k8rBzo7D0Fshhv3EKqbIeUqQ1URu6I0sZ65Heor
	pmHwOFLHUzIBGcJ7/5v7SrHWD6tvzogqZvJfbyjaKlOQv2uagXmDE4vXsCEChk93dD8IO3LIJgQpk
	D5CAWlfgQu6pOaSGV15g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPJl-0000Zt-89; Wed, 23 Oct 2019 22:41:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPJi-0000Yr-7p; Wed, 23 Oct 2019 22:41:23 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iNPJg-0004Ia-RW; Thu, 24 Oct 2019 00:41:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: add px30 otp controller
Date: Thu, 24 Oct 2019 00:41:13 +0200
Message-Id: <20191023224113.3268-1-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_154122_426853_AF049599 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The px30 soc contains a controller for one-time-programmable memory,
so add the necessary node for it and the fields defined in it by default.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index dd58b1bc5981..767f3ce6e9f7 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -664,6 +664,30 @@
 		status = "disabled";
 	};
 
+	otp: nvmem@ff290000 {
+		compatible = "rockchip,px30-otp";
+		reg = <0x0 0xff290000 0x0 0x4000>;
+		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+			 <&cru PCLK_OTP_PHY>;
+		clock-names = "otp", "apb_pclk", "phy";
+		resets = <&cru SRST_OTP_PHY>;
+		reset-names = "phy";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		/* Data cells */
+		cpu_id: id@7 {
+			reg = <0x07 0x10>;
+		};
+		cpu_leakage: cpu-leakage@17 {
+			reg = <0x17 0x1>;
+		};
+		performance: performance@1e {
+			reg = <0x1e 0x1>;
+			bits = <4 3>;
+		};
+	};
+
 	cru: clock-controller@ff2b0000 {
 		compatible = "rockchip,px30-cru";
 		reg = <0x0 0xff2b0000 0x0 0x1000>;
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
