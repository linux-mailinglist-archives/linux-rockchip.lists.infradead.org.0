Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756C4115478
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 16:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZLefBwksYW8b++1hkxhN1ZwX/7xza01sd5BgACPGSg=; b=njszhjd/y9m+Qt
	joHrmRqLZQChZ/WJzVl8gcb9pDNvDdL/YOKvivj+d2bTVfHRereEUaMfrgwRmP5HY0junxP4eYbI9
	ib6GOqJO1DPy1bAiLa5//dyMJ0Pn5FyB7hCkLBdif4BrcPdxECgAD4S+wTnVdldBh1vda2tjU3mUQ
	GJdlCchLk4OmH2npb2lMtps4VNpCLxSscBhgwb4Hize9uIBQqmbhJFsoClixac3MpBESApPr7CxVC
	vA/iYMkgee/P0cJtR2rWcztdzpYFgMNGq9W6yj09wvOoO9EcTzXp7WIirdsY4M0m9bs2ilKjkUKzz
	Z+uhtCMoB1iums0YQPwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idFl4-000635-EQ; Fri, 06 Dec 2019 15:43:06 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idFl0-00062Y-NQ
 for linux-rockchip@lists.infradead.org; Fri, 06 Dec 2019 15:43:05 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 20E62240003;
 Fri,  6 Dec 2019 15:42:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Date: Fri,  6 Dec 2019 16:42:47 +0100
Message-Id: <20191206154247.28057-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_074302_897302_3F5A1CAA 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

PMIC interrupt can be active high or active low depending on BIT(1) of
the GPIO_INT_CFG pin. The default is 0x1, which means active
high. Change the polarity in the device tree to reflect the default
state.

Without this and with the current code base, the interrupt never stops
triggering while the MFD driver does not see anything to
check/clear/mask so after 100000 spurious IRQs, the kernel simply
desactivates the interrupt:

        irq 36: nobody cared (try booting with the "irqpoll" option)
        [...]
        handlers:
        [<(____ptrval____)>] irq_default_primary_handler threaded
	[<(____ptrval____)>] regmap_irq_thread
        Disabling IRQ #36

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 869f90cbf0da..a922ea75639d 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -138,7 +138,7 @@
 		compatible = "rockchip,rk809";
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
 		rockchip,system-power-controller;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
