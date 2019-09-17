Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17A0B495E
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQyUEsB8zMtA8ovmt6a84AhAfoD89pNet7EfPSlykEU=; b=lkQcbG9/hTnHHb
	Sixm9gpknLcefHHDmshEizx9DUMYGjIC+GpnnxGnZoPsSQR4EWdStiyy6PgtwdFicwLNBWyND+MoM
	lW+bYO/UQ8dTveLFukOpL86ZmODEZ1N9PZTxXp0O+HTe6po6eRKhp9Hiz5HNAte124t6mRW0MZHfd
	SUpQ7+LS4R4mxIAUQw//1Hx0qz0iQMe84AOfCggH+fna0OJdCV0t2i2npgPXt2GcJ9vUrfu7Cxo4a
	+CFAfGTKcvfiA8sdsE+CASWsRILTZmfpLPu0LhqlJ73RBAnhK4XCheXVE3zRCHJUEfzLH4RrSty2x
	QkP83W//TbrKKLlBqIew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8qN-00038T-MR; Tue, 17 Sep 2019 08:28:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8pK-0002GR-U9; Tue, 17 Sep 2019 08:27:12 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pH-0005ZY-NC; Tue, 17 Sep 2019 10:27:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/13] arm64: dts: rockchip: remove px30 emmc_pwren pinctrl
Date: Tue, 17 Sep 2019 10:26:49 +0200
Message-Id: <20190917082659.25549-3-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012711_115696_1C1D19E6 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

That gpio1-b0 can only be flash_cs apart from a regular gpio,
so there is no power-related pinmux for the emmc for this pin.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 06328f1b05e8..a178d6e2c279 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1648,11 +1648,6 @@
 					<1 RK_PB2 2 &pcfg_pull_up_8ma>;
 			};
 
-			emmc_pwren: emmc-pwren {
-				rockchip,pins =
-					<1 RK_PB0 2 &pcfg_pull_none>;
-			};
-
 			emmc_rstnout: emmc-rstnout {
 				rockchip,pins =
 					<1 RK_PB3 2 &pcfg_pull_none>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
