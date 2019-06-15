Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B345E470E3
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 17:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fs+5fV8dP/T54zjZDpO6R/DwwwNi5wjuIFE65zr/gZA=; b=f2jcsK+OkbDe6Y
	sBiihxxbQ8uw4t9OGKRDvF/UzjOPj/Mf1qY/enSE1Vxioap7ZSdq6zvd1V9N2PAzDlWPJuC0UvWSc
	PVYfTvPs+a8hW+Wqd0+grUFtETJ9v6tdK2fsSypYem9gE3zEtJ9vOP1ATuyrHwgSr+19MH9kEHWes
	ghglJHYPtrdEbTl/LOviZjnMFUfvHhDPAgYiTh5JuZ8SnZD/ckzNR6Z95x35tikvYk5LrnxVVZpfG
	WxE02W8oQ0bOL7tZgF29GGznyAaiuq5HfG3z54qPsPlAGUAptzCI5yoMGgQOpQayjTqlPHpeQMMm/
	9IYdB5fNrAvWx6V3qh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAe8-0007NA-S5; Sat, 15 Jun 2019 15:31:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAda-00077d-6l; Sat, 15 Jun 2019 15:30:41 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcAdY-0002kc-38; Sat, 15 Jun 2019 17:30:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: enable rk3328 watchdog clock
Date: Sat, 15 Jun 2019 17:30:32 +0200
Message-Id: <20190615153032.27772-3-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190615153032.27772-1-heiko@sntech.de>
References: <20190615153032.27772-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_083038_435205_7E36F2E9 
X-CRM114-Status: GOOD (  11.01  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Leonidas P. Papadakos <papadakospan@gmail.com>

Add the missing clock property for the watchdog on rk3328.

Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
[set wdt node to always enabled, as it is not board-specific]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 994468671b19..e9fefd8a7e02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -407,6 +407,7 @@
 		compatible = "snps,dw-wdt";
 		reg = <0x0 0xff1a0000 0x0 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_WDT>;
 	};
 
 	pwm0: pwm@ff1b0000 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
