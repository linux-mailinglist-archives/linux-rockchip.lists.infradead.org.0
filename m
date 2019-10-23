Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39387E2690
	for <lists+linux-rockchip@lfdr.de>; Thu, 24 Oct 2019 00:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X1kzGb1eI4eR4N4710pCZ+fv17SqvE9gUn+Avad8Ars=; b=VQ01otYJA0p/Tz
	qdflcw222XUagq7C965jEDRgVsLkpB7j82jpo7cNTwPuPHTTLfs4A9pq++QcrchISbqjUJCa2llVw
	Z8bwslbNTDZrLj3qcnVMpxoxNFFVltIxq3XsfZDYCK5QJuigJglU9G8fsrt3DfGm+7nrOVJzw7Kkb
	F1y3j9v/M7SGrddtmmVQ08Ivk6AEz+ROarqf4OV3iJ1zg7PUg3BpbpgNLWflv/npjKRv0xLSSRy7/
	VvsOsjjVchiEBD9hC64OGFAVGhbY9Ac0moikGziDDOZXpCUQ/QjNLlTsMyTYMMZTfmoQe9N/s8ZOw
	HYkXovzvNuc3EEdWQDWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPMc-0001BI-CV; Wed, 23 Oct 2019 22:44:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPMY-00018C-Mc; Wed, 23 Oct 2019 22:44:20 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iNPMX-0004JL-5g; Thu, 24 Oct 2019 00:44:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: remove px30 default optee node
Date: Thu, 24 Oct 2019 00:44:09 +0200
Message-Id: <20191023224409.3550-1-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_154418_889059_347B6EFB 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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

Having a default optee node in a soc devicetree is not really good.
For one there is no guarantee that any tee got loaded and there's even
the possibility that a completely different TEE got loaded.

OP-Tee however will insert relevant nodes to the devicetree (firmware
+reserved memory sections) during its own startup, so there really is
no need to provide a default node.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 767f3ce6e9f7..5ab281bb40a4 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -161,13 +161,6 @@
 		status = "disabled";
 	};
 
-	firmware {
-		optee {
-			compatible = "linaro,optee-tz";
-			method = "smc";
-		};
-	};
-
 	gmac_clkin: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <50000000>;
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
