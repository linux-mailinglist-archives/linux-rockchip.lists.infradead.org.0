Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461CD19D8FD
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 16:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klZMgIYciI3w4RZszKLeK3aOSP4ac5H67Hhs/OGfnn8=; b=tibIoyy+PpFTrT
	kYUsy3SkATK/FPEIZB7HuXIP9eN7RxsCH3XmryEMEPhYPrq/tCQ356N4lEa0GshR7ExJcwccCoKYf
	d06mpenoleAWJNf6KjUnH6Iz0u8D5fB0AL0qRBUXG7qfj6e5Jy4ZXeCVmoWpXM2RTB6cRWKiTWFHJ
	6NJjRDKXzd1i3Jalr2xImDqvXDlPgXucs+mK6Z8SCQK1W58f7mhgBD0aRwFCLRQeMBre5/129Zyih
	pZj0MEBj8jHVkTkhaB24RiWRdIL5npWM3ixlwnMWQ/aUHKkzUO1H6jxN2Ghlfc/jdV73a70Zm6FKv
	oa9X9FRBbovb+xNZhqBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKNDr-00025K-4w; Fri, 03 Apr 2020 14:23:03 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKNCn-0000y2-Em; Fri, 03 Apr 2020 14:21:59 +0000
X-Originating-IP: 77.205.41.241
Received: from localhost.localdomain (241.41.205.77.rev.sfr.net
 [77.205.41.241])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 0A3931BF220;
 Fri,  3 Apr 2020 14:21:52 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add the camera interface
 description of the PX30
Date: Fri,  3 Apr 2020 16:21:22 +0200
Message-Id: <20200403142122.297283-4-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_072157_629941_E5F7A457 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The PX30 has a camera interface, supporting CSI2, BT656 and Parallel
modes. Add a DT description for this interface.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 3e1f51a66daf..38ed35bc9b7a 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1058,6 +1058,18 @@ dsi_in_vopl: endpoint@1 {
 		};
 	};
 
+	cif: cif@ff490000 {
+		compatible = "rockchip,px30-cif";
+		reg = <0x0 0xff490000 0x0 0x200>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
+		clock-names = "aclk_cif", "hclk_cif", "pclk_cif", "cif_out";
+		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+		reset-names = "rst_cif_a", "rst_cif_h", "rst_cif_pclkin";
+		power-domains = <&power PX30_PD_VI>;
+		status = "disabled";
+	};
+
 	vopb: vop@ff460000 {
 		compatible = "rockchip,px30-vop-big";
 		reg = <0x0 0xff460000 0x0 0xefc>;
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
