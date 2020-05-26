Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB601E1A03
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 05:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tApQu8c1Pv9LoMyJA8jyayrtRdmf4RMBJ68KiVOR2po=; b=SHdLEq52egqhFW97RwLzZQ83ia
	qC/hQoDtkypKagr9QNLoQeXrDVuVh+5Ld7bkp23NrU2kcxwtqnv0Pu3wUDLMgHtR3mtjCAZxlZ3rr
	3LbPSZSIRp1CKYePuDQHPaUl9kHPSLeC5SZ5+Je8s10kPPTBX9tZQJyCzmuph7h8UgzmoWLicisBj
	yK9aLg60S4b803s9StICadJ9prlDu9XbDTflK9+93TxJ7c4fg8tjT6KKgGbGyvJvoC1y5FKRfr83Y
	dKQBmKYbvrCcG3iqOtPN6Qm8FZKMKQWWDrp3eqoZJ2BHJtriPHquKxakMzOryd6NKAn/nlvh6awdO
	U0cC3QeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQMi-0004YH-Dq; Tue, 26 May 2020 03:34:56 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQMe-0004T1-Ep
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 03:34:54 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id BEAFBB1378;
 Tue, 26 May 2020 11:34:40 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10491T139788594689792S1590464077143166_; 
 Tue, 26 May 2020 11:34:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <98ba3b6fc941ca0f94b3df081685e846>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Frank Wang <frank.wang@rock-chips.com>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Subject: [PATCH v6 12/16] usb: dwc3: add make compatible for rockchip platform
Date: Tue, 26 May 2020 11:34:31 +0800
Message-Id: <20200526033435.20235-3-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526033435.20235-1-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_203452_940297_7442039F 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: jianing.ren@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>,
 marek.belisko@gmail.com, wmc@rock-chips.com, u-boot@lists.denx.de,
 william.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, chenjh@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3399 Type-C PHY is required that must hold whole USB3.0 OTG controller
in resetting to hold pipe power state in P2 before initializing the PHY.
This commit fixed it and added device compatible for rockchip platform.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 drivers/usb/dwc3/dwc3-generic.c | 33 +++++++++++++++++++++++++++------
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-generic.c b/drivers/usb/dwc3/dwc3-generic.c
index eabd53a36d..421e0be135 100644
--- a/drivers/usb/dwc3/dwc3-generic.c
+++ b/drivers/usb/dwc3/dwc3-generic.c
@@ -24,6 +24,12 @@
 #include <clk.h>
 #include <usb/xhci.h>
 
+struct dwc3_glue_data {
+	struct clk_bulk		clks;
+	struct reset_ctl_bulk	resets;
+	fdt_addr_t regs;
+};
+
 struct dwc3_generic_plat {
 	fdt_addr_t base;
 	u32 maximum_speed;
@@ -47,6 +53,7 @@ static int dwc3_generic_probe(struct udevice *dev,
 	int rc;
 	struct dwc3_generic_plat *plat = dev_get_platdata(dev);
 	struct dwc3 *dwc3 = &priv->dwc3;
+	struct dwc3_glue_data *glue = dev_get_platdata(dev->parent);
 
 	dwc3->dev = dev;
 	dwc3->maximum_speed = plat->maximum_speed;
@@ -55,10 +62,22 @@ static int dwc3_generic_probe(struct udevice *dev,
 	dwc3_of_parse(dwc3);
 #endif
 
+	/*
+	 * It must hold whole USB3.0 OTG controller in resetting to hold pipe
+	 * power state in P2 before initializing TypeC PHY on RK3399 platform.
+	 */
+	if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3")) {
+		reset_assert_bulk(&glue->resets);
+		udelay(1);
+	}
+
 	rc = dwc3_setup_phy(dev, &priv->phys);
 	if (rc)
 		return rc;
 
+	if (device_is_compatible(dev->parent, "rockchip,rk3399-dwc3"))
+		reset_deassert_bulk(&glue->resets);
+
 	priv->base = map_physmem(plat->base, DWC3_OTG_REGS_END, MAP_NOCACHE);
 	dwc3->regs = priv->base + DWC3_GLOBALS_REGS_START;
 
@@ -186,12 +205,6 @@ U_BOOT_DRIVER(dwc3_generic_host) = {
 };
 #endif
 
-struct dwc3_glue_data {
-	struct clk_bulk		clks;
-	struct reset_ctl_bulk	resets;
-	fdt_addr_t regs;
-};
-
 struct dwc3_glue_ops {
 	void (*select_dr_mode)(struct udevice *dev, int index,
 			       enum usb_dr_mode mode);
@@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
+	if (glue->resets.count == 0) {
+		ret = dwc3_glue_reset_init(child, glue);
+		if (ret)
+			return ret;
+	}
+
 	while (child) {
 		enum usb_dr_mode dr_mode;
 
@@ -424,6 +443,8 @@ static const struct udevice_id dwc3_glue_ids[] = {
 	{ .compatible = "ti,dwc3", .data = (ulong)&ti_ops },
 	{ .compatible = "ti,am437x-dwc3", .data = (ulong)&ti_ops },
 	{ .compatible = "ti,am654-dwc3" },
+	{ .compatible = "rockchip,rk3328-dwc3" },
+	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ }
 };
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
