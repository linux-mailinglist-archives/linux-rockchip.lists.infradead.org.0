Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61001855D7
	for <lists+linux-rockchip@lfdr.de>; Sat, 14 Mar 2020 15:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Itbyj3wzx0imjQ8M5vhAXZNk2Z0ckUHaFePv75ykT84=; b=U0cewaCKRjJZEn
	IPurNvCasLvktJvi3fdwRKdI62P2FYgXvxHuJS/mlD1NEz4ty760LvGCfB2PoRhVINpt8R0smjrJv
	SD1tfBXlwzTWKNt/w9ube76YE+zlqV/PAH9RB6rW5LblQkPyBqw0+25eFHk1x1KptoaQpbQLtIG1y
	/QqB17tBBpPtdc/nFMK70UilNl2yRmu45faW5FqeHCOIh1jLJnJVvy4KhipppaOZWHbZlwSFRyb5g
	TM8rYKQ9vX5AwqE7sspt0vLzEQZTLRW7BXDAcQ3SO4IcrWdBMwZRN7V6DbeBdVGchsdnHNBfmEJjI
	2M09aq5OZhyH4acBylEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD7ha-0007rv-Oi; Sat, 14 Mar 2020 14:23:46 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD7hX-0007rC-S3; Sat, 14 Mar 2020 14:23:45 +0000
Received: from fsav405.sakura.ne.jp (fsav405.sakura.ne.jp [133.242.250.104])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02EENc8g044943;
 Sat, 14 Mar 2020 23:23:38 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav405.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav405.sakura.ne.jp);
 Sat, 14 Mar 2020 23:23:38 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav405.sakura.ne.jp)
Received: from localhost.localdomain (121.252.232.153.ap.dti.ne.jp
 [153.232.252.121]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02EENYJY044932
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sat, 14 Mar 2020 23:23:37 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs of TinkerBoard
Date: Sat, 14 Mar 2020 23:23:27 +0900
Message-Id: <20200314142327.25568-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_072344_134016_75804783 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch enables to use DMAC for all UARTs that are connected to
dmac_peri core for TinkerBoard.

Only uart2 is connected different DMAC (dmac_bus_s) so keep current
settings on this patch.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 312582c1bd37..6efabeaf3c6d 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -491,10 +491,14 @@ &tsadc {
 };
 
 &uart0 {
+	dmas = <&dmac_peri 1>, <&dmac_peri 2>;
+	dma-names = "tx", "rx";
 	status = "okay";
 };
 
 &uart1 {
+	dmas = <&dmac_peri 3>, <&dmac_peri 4>;
+	dma-names = "tx", "rx";
 	status = "okay";
 };
 
@@ -503,10 +507,14 @@ &uart2 {
 };
 
 &uart3 {
+	dmas = <&dmac_peri 7>, <&dmac_peri 8>;
+	dma-names = "tx", "rx";
 	status = "okay";
 };
 
 &uart4 {
+	dmas = <&dmac_peri 9>, <&dmac_peri 10>;
+	dma-names = "tx", "rx";
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
