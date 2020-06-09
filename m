Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B541F357E
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 09:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2MOqQXPRJNXOQgtYfGp4o3yAZXQ0R2SF2+3P6XAUg8w=; b=F/KBJA+MJZon2lGaH7BQT3/yUd
	wIZDtr94cXWWQh2SOKyONw4uSLEGqPTNeEFP3VwyFvr+K+aDg0+JnzlzMHTmmKFUbugetMmHRLX9u
	X/OmsJU3OsMD8gqJP/zEBlaPqgLjrUPOacJWgfyR63LXHmWvOzGY2fc3BAbNeKmeEOHLw6aJGvFIm
	HC8dGg5Dd50sJGQkgxMdClFtaanhHI60umx8JetQZMYWF2w2NIsWy/rvVui24ep0YdrwxPSJBarbB
	1i0Z39Dlr27vzCcPm9TpuCAvYc4GM43/Mr3Y57dPDmsSo9Eu2WNlrG51tefwxOTE0veIetgBgY5C4
	GyIHta5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ1A-00039r-NS; Tue, 09 Jun 2020 07:49:56 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ0W-0002bJ-Bx; Tue, 09 Jun 2020 07:49:17 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3215AAD889;
 Tue,  9 Jun 2020 15:49:14 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3328T139696428545792S1591688948875935_; 
 Tue, 09 Jun 2020 15:49:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ae5678275613d67f9ad6143c31e08344>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org
Subject: [PATCH v6 5/8] arm64: dts: rockchip: Add nfc dts for PX30 SOC
Date: Tue,  9 Jun 2020 15:49:04 +0800
Message-Id: <20200609074907.24075-1-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004916_637099_054AA6A5 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.131 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add nfc(nand flash controller) node for PX30 Soc.

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm64/boot/dts/rockchip/px30.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f809dd6d5dc3..261f2f34f42c 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -969,6 +969,21 @@
 		status = "disabled";
 	};
 
+	nfc: nand-controller@ff3b0000 {
+		compatible = "rockchip,px30-nfc";
+		reg = <0x0 0xff3b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "ahb", "nfc";
+		assigned-clocks = <&cru SCLK_NANDC>;
+		assigned-clock-rates = <150000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_cs0
+			     &flash_rdn &flash_rdy &flash_wrn &flash_dqs>;
+		power-domains = <&power PX30_PD_MMC_NAND>;
+		status = "disabled";
+	};
+
 	gpu: gpu@ff400000 {
 		compatible = "rockchip,px30-mali", "arm,mali-bifrost";
 		reg = <0x0 0xff400000 0x0 0x4000>;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
