Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225601E19F9
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 05:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MbqIFlbD/KOGvEwU6ErBAEidhZbMfeWIgGnbcbZM//I=; b=Rs8zfTLjVA8lpx627zSUULJAbs
	kExcJaP1MNO35LtfgZ1mcKd73t78V4vjb3RyqxkRbdYdpvsBe5FGWRRXHRJMjJjX6PVW1PNV46oSu
	oeka1Vqe3ltnoFNBtKHnVO3S3yK4QzQE8UiwEQ0XaoyGam9p4wYIuHXGfQa/84iLPUdgsqrPSqUbK
	/siCvGdBWqgiRMQUIOaQRFruXM3vhOAtp0g4wlWDjdqF5g2beOBkxO6506jn2YElr7L24Pltxmtfx
	6ZjOlpQzoSdDKx514meZ7xDTUM0UvghwPAGTPiyDnqKMriJBM0TsNr+AlymOG/ebyV3Qh4a26MD0M
	+LF8XQeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQLw-0004Ac-8S; Tue, 26 May 2020 03:34:08 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQLs-00046m-Gl
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 03:34:06 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 102BEB71C1;
 Tue, 26 May 2020 11:34:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21206T140696195421952S1590464037437993_; 
 Tue, 26 May 2020 11:34:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3dd4d80d440b51edeb3d49142fbb629b>
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
Subject: [PATCH v6 09/16] usb: dwc3: Add disable u2mac linestate check quirk
Date: Tue, 26 May 2020 11:33:48 +0800
Message-Id: <20200526033355.20147-5-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526033355.20147-1-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033355.20147-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_203404_880355_08EFB2BC 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.133 listed in wl.mailspike.net]
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

This patch adds a quirk to disable USB 2.0 MAC linestate check
during HS transmit. Refer the dwc3 databook, we can use it for
some special platforms if the linestate not reflect the expected
line state(J) during transmission.

When use this quirk, the controller implements a fixed 40-bit
TxEndDelay after the packet is given on UTMI and ignores the
linestate during the transmit of a token (during token-to-token
and token-to-data IPGAP).

On some rockchip platforms (e.g. rk3399), it requires to disable
the u2mac linestate check to decrease the SSPLIT token to SETUP
token inter-packet delay from 566ns to 466ns, and fix the issue
that FS/LS devices not recognized if inserted through USB 3.0 HUB.

Reference from below Linux commit,

commit <65db7a0c9816> ("usb: dwc3: add disable u2mac linestate
check quirk")

Cc: Marek Vasut <marex@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 drivers/usb/dwc3/core.c | 20 ++++++++++++++++++++
 drivers/usb/dwc3/core.h |  7 +++++++
 include/dwc3-uboot.h    |  1 +
 3 files changed, 28 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 3cb66515a2..dc92f471c1 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -725,6 +725,7 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->dis_u3_susphy_quirk = dwc3_dev->dis_u3_susphy_quirk;
 	dwc->dis_u2_susphy_quirk = dwc3_dev->dis_u2_susphy_quirk;
 	dwc->dis_del_phy_power_chg_quirk = dwc3_dev->dis_del_phy_power_chg_quirk;
+	dwc->dis_tx_ipgap_linecheck_quirk = dwc3_dev->dis_tx_ipgap_linecheck_quirk;
 	dwc->dis_enblslpm_quirk = dwc3_dev->dis_enblslpm_quirk;
 	dwc->dis_u2_freeclk_exists_quirk = dwc3_dev->dis_u2_freeclk_exists_quirk;
 
@@ -934,6 +935,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 				"snps,dis_u2_susphy_quirk");
 	dwc->dis_del_phy_power_chg_quirk = dev_read_bool(dev,
 				"snps,dis-del-phy-power-chg-quirk");
+	dwc->dis_tx_ipgap_linecheck_quirk = dev_read_bool(dev,
+				"snps,dis-tx-ipgap-linecheck-quirk");
 	dwc->dis_enblslpm_quirk = dev_read_bool(dev,
 				"snps,dis_enblslpm_quirk");
 	dwc->dis_u2_freeclk_exists_quirk = dev_read_bool(dev,
@@ -954,6 +957,7 @@ void dwc3_of_parse(struct dwc3 *dwc)
 int dwc3_init(struct dwc3 *dwc)
 {
 	int ret;
+	u32 reg;
 
 	dwc3_cache_hwparams(dwc);
 
@@ -975,6 +979,22 @@ int dwc3_init(struct dwc3 *dwc)
 		goto event_fail;
 	}
 
+	if (dwc->revision >= DWC3_REVISION_250A) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL1);
+
+		/*
+		 * Enable hardware control of sending remote wakeup
+		 * in HS when the device is in the L1 state.
+		 */
+		if (dwc->revision >= DWC3_REVISION_290A)
+			reg |= DWC3_GUCTL1_DEV_L1_EXIT_BY_HW;
+
+		if (dwc->dis_tx_ipgap_linecheck_quirk)
+			reg |= DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS;
+
+		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
+	}
+
 	ret = dwc3_core_init_mode(dwc);
 	if (ret)
 		goto mode_fail;
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index c5e656885a..b510d8a983 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -73,6 +73,7 @@
 #define DWC3_GCTL		0xc110
 #define DWC3_GEVTEN		0xc114
 #define DWC3_GSTS		0xc118
+#define DWC3_GUCTL1		0xc11c
 #define DWC3_GSNPSID		0xc120
 #define DWC3_GGPIO		0xc124
 #define DWC3_GUID		0xc128
@@ -159,6 +160,10 @@
 #define DWC3_GCTL_GBLHIBERNATIONEN	(1 << 1)
 #define DWC3_GCTL_DSBLCLKGTNG		(1 << 0)
 
+/* Global User Control 1 Register */
+#define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
+#define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW	BIT(24)
+
 /* Global USB2 PHY Configuration Register */
 #define DWC3_GUSB2PHYCFG_PHYSOFTRST	(1 << 31)
 #define DWC3_GUSB2PHYCFG_U2_FREECLK_EXISTS	(1 << 30)
@@ -771,6 +776,7 @@ struct dwc3 {
 #define DWC3_REVISION_260A	0x5533260a
 #define DWC3_REVISION_270A	0x5533270a
 #define DWC3_REVISION_280A	0x5533280a
+#define DWC3_REVISION_290A	0x5533290a
 
 	enum dwc3_ep0_next	ep0_next_event;
 	enum dwc3_ep0_state	ep0state;
@@ -824,6 +830,7 @@ struct dwc3 {
 	unsigned		dis_u3_susphy_quirk:1;
 	unsigned		dis_u2_susphy_quirk:1;
 	unsigned		dis_del_phy_power_chg_quirk:1;
+	unsigned		dis_tx_ipgap_linecheck_quirk:1;
 	unsigned		dis_enblslpm_quirk:1;
 	unsigned		dis_u2_freeclk_exists_quirk:1;
 
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 193d225d31..e08530ec4e 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -34,6 +34,7 @@ struct dwc3_device {
 	unsigned dis_u3_susphy_quirk;
 	unsigned dis_u2_susphy_quirk;
 	unsigned dis_del_phy_power_chg_quirk;
+	unsigned dis_tx_ipgap_linecheck_quirk;
 	unsigned dis_enblslpm_quirk;
 	unsigned dis_u2_freeclk_exists_quirk;
 	unsigned tx_de_emphasis_quirk;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
