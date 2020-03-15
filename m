Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF64185BAB
	for <lists+linux-rockchip@lfdr.de>; Sun, 15 Mar 2020 10:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Vkb1oBiuH0p1QEY3N9xKEIlG9DkmL2f9PgCYz8vj6M=; b=GD+Gzd+xZa6JPc
	Ns/LIHmFR7sV4QiwCr5ApWtQwyn6p5sYuqFlFTdW3aucBowzAuF4TtkD4yac/IAky7pNUJzxiJXjq
	FS0t3Aa6CWOE4ZeuB7nmuCEaNc0bscHpW3vvagEnVKeDsActSCYLff2P9N2+1kJtz4sULrcs0R5ld
	fzGSGEY960T1mys56YDr/NVYJLRstEwB4WP+oKpeM4Io0h98XMM+tcT+AyMCioYVRW8jD9Dc8UiJh
	hlBD40R35zlpxG2hLFvQs3/L9mXTlyZUqXpbOzOkcqI2li7toSb583zfl1omnGWey6QUJwoO8jU2a
	MIfzGtscHDcMl2IG2y7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPva-0004FZ-Lp; Sun, 15 Mar 2020 09:51:26 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPvW-0004F4-PH; Sun, 15 Mar 2020 09:51:24 +0000
Received: from fsav302.sakura.ne.jp (fsav302.sakura.ne.jp [153.120.85.133])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02F9pKNh006446;
 Sun, 15 Mar 2020 18:51:20 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav302.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav302.sakura.ne.jp);
 Sun, 15 Mar 2020 18:51:19 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav302.sakura.ne.jp)
Received: from localhost.localdomain (121.252.232.153.ap.dti.ne.jp
 [153.232.252.121]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02F9pHI8006433
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sun, 15 Mar 2020 18:51:19 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs for RK3288
Date: Sun, 15 Mar 2020 18:51:15 +0900
Message-Id: <20200315095115.10106-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_025123_051862_9DF21F93 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch enables to use DMAC for all UARTs that are connected to
dmac_peri core for Rochchip RK3288.

Only uart2 is connected different DMAC (dmac_bus_s) so keep current
settings on this patch.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 8bcb4a51682e..e9f8a44f5f2a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -420,6 +420,8 @@ uart0: serial@ff180000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 1>, <&dmac_peri 2>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart0_xfer>;
 		status = "disabled";
@@ -433,6 +435,8 @@ uart1: serial@ff190000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 3>, <&dmac_peri 4>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart1_xfer>;
 		status = "disabled";
@@ -459,6 +463,8 @@ uart3: serial@ff1b0000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 7>, <&dmac_peri 8>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart3_xfer>;
 		status = "disabled";
@@ -472,6 +478,8 @@ uart4: serial@ff1c0000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 9>, <&dmac_peri 10>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart4_xfer>;
 		status = "disabled";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
