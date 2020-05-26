Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C03E1E19FA
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 05:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lrkiGHtcBQ/xO7/QMaPBFejuSbkbA2MKO1rOYQ9Kk98=; b=j3Ke+V1CvQiXyubQpiKYSPTmA5
	TqGhnZeF8h/k2GkbvsL0AcJMNZOhz0T51mQMn1GT6ZX3ZyOwqpC4jaAE/U3hAj5/VHYbF/LRTxhTq
	303IVFUU6poLfoTHozah0W7csYhChgMBDuZaHOfEalTEpaoYrm19D1NIyy8GDPlVDPuKcX/3UcKbH
	Z7fEuUUp2g0FVPLVekBsXtmGXdhWeiyzRZo2YcjNMRy7Y+iCNlQrWIJHTksUWiDNJBjljlCGV6QY3
	f23bHQ2Wjg5boi3TIS9/uOUIzdHlU634Jlfsbloy9pkkGQXMZIqu2nYuWI9dygdWlgNZOmVsj9BB7
	iQLZD9bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQLx-0004Bf-Ph; Tue, 26 May 2020 03:34:09 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQLs-00046n-LG
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 03:34:06 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 06621B72B6;
 Tue, 26 May 2020 11:34:02 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21206T140696195421952S1590464037437993_; 
 Tue, 26 May 2020 11:34:01 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5fd96fdf29328713779c9bbcfffb4aaf>
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
Subject: [PATCH v6 08/16] usb: dwc3: add dis_u2_freeclk_exists_quirk
Date: Tue, 26 May 2020 11:33:47 +0800
Message-Id: <20200526033355.20147-4-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526033355.20147-1-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033355.20147-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_203405_043748_680FDB44 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.133 listed in wl.mailspike.net]
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

Add a quirk to clear the GUSB2PHYCFG.U2_FREECLK_EXISTS bit,
which specifies whether the USB2.0 PHY provides a free-running
PHY clock, which is active when the clock control input is active.

Refer to commit 27f83eeb6b42("usb: dwc3: add dis_u2_freeclk_exists_quirk")
in Linux Rockchip Kernel.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/dwc3/core.c | 6 ++++++
 drivers/usb/dwc3/core.h | 2 ++
 include/dwc3-uboot.h    | 1 +
 3 files changed, 9 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 20be617fd4..3cb66515a2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -401,6 +401,9 @@ static void dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_enblslpm_quirk)
 		reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
 
+	if (dwc->dis_u2_freeclk_exists_quirk)
+		reg &= ~DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS;
+
 	dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 
 	mdelay(100);
@@ -723,6 +726,7 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->dis_u2_susphy_quirk = dwc3_dev->dis_u2_susphy_quirk;
 	dwc->dis_del_phy_power_chg_quirk = dwc3_dev->dis_del_phy_power_chg_quirk;
 	dwc->dis_enblslpm_quirk = dwc3_dev->dis_enblslpm_quirk;
+	dwc->dis_u2_freeclk_exists_quirk = dwc3_dev->dis_u2_freeclk_exists_quirk;
 
 	dwc->tx_de_emphasis_quirk = dwc3_dev->tx_de_emphasis_quirk;
 	if (dwc3_dev->tx_de_emphasis)
@@ -932,6 +936,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 				"snps,dis-del-phy-power-chg-quirk");
 	dwc->dis_enblslpm_quirk = dev_read_bool(dev,
 				"snps,dis_enblslpm_quirk");
+	dwc->dis_u2_freeclk_exists_quirk = dev_read_bool(dev,
+				"snps,dis-u2-freeclk-exists-quirk");
 	dwc->tx_de_emphasis_quirk = dev_read_bool(dev,
 				"snps,tx_de_emphasis_quirk");
 	tmp = dev_read_u8_array_ptr(dev, "snps,tx_de_emphasis", 1);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index e76e357f1e..c5e656885a 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -161,6 +161,7 @@
 
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
+#define DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS	(1 << 30)
 #define DWC3_GUSB2PHYCFG_SUSPHY		(1 << 6)
 #define DWC3_GUSB2PHYCFG_ENBLSLPM	(1 << 8)
 #define DWC3_GUSB2PHYCFG_PHYIF(n)	((n) << 3)
@@ -824,6 +825,7 @@ struct dwc3 {
 	unsigned		dis_u2_susphy_quirk:1;
 	unsigned		dis_del_phy_power_chg_quirk:1;
 	unsigned		dis_enblslpm_quirk:1;
+	unsigned		dis_u2_freeclk_exists_quirk:1;
 
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 98d51e05e1..193d225d31 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -35,6 +35,7 @@ struct dwc3_device {
 	unsigned dis_u2_susphy_quirk;
 	unsigned dis_del_phy_power_chg_quirk;
 	unsigned dis_enblslpm_quirk;
+	unsigned dis_u2_freeclk_exists_quirk;
 	unsigned tx_de_emphasis_quirk;
 	unsigned tx_de_emphasis;
 	int index;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
