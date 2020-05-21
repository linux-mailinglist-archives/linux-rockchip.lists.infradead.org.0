Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852231DC46D
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 03:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mo5Zj0rfWW8dvvL1CIjZj8VTJ5AiCpbqjIdWDDHu7ho=; b=VAP
	xzDuqJDF9bk35ISHEC8vp8K0LeyKiT8j1CbZiDbRfcY1r1oMFgq4kKoSkQu9KMxQ1cEfHfvu7s4da
	ScAwB+20MBoagoc4Nx3K1UHOcv5WMS9hrG6cqFVSbgtPubqNl8gkZAonCVbd6ih5pIO8IYUG8QbUY
	dPJEyNtnoNJFBVqx/mZlhnxsocIqmi0Xf8OzKGpJDhO4IZfehoBfoJ7ZXLFMLMfKxVt456F3e5m2W
	HV666zz4REHVLlAVzeycdx3kBvS7Nibg3n7UHEiuAOiyorZh55AfMsTxKDRhZwAdQTscfBpWZ9DFC
	o2u9gu2eskVDl+6h9i4WsCyjCDAsgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZej-00040m-Ux; Thu, 21 May 2020 01:05:53 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZeg-0003ye-3W
 for linux-rockchip@lists.infradead.org; Thu, 21 May 2020 01:05:51 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id E82418D39F;
 Thu, 21 May 2020 09:05:38 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P14523T139720957146880S1590023137801405_; 
 Thu, 21 May 2020 09:05:38 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f4d2380cef69f79bb802cc3e1cc49807>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: lorenzo.pieralisi@arm.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 1/2] PCI: rockchip: Enable IO base and limit registers
Date: Thu, 21 May 2020 09:05:29 +0800
Message-Id: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_180550_446379_27715989 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.135 listed in wl.mailspike.net]
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
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

According to RK3399 user manual, bit 9 in PCIE_RC_BAR_CONF should
be set, otherwise accessing to IO base and limit registers would
fail.

[    0.411318] pci_bus 0000:00: root bus resource [bus 00-1f]
[    0.411822] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
[    0.412440] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
[    0.413665] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[    0.414698] pci 0000:01:00.0: reg 0x10: initial BAR value 0x00000000 invalid
[    0.415412] pci 0000:01:00.0: reg 0x18: initial BAR value 0x00000000 invalid
[    0.418456] pci 0000:00:00.0: BAR 8: assigned [mem 0xfa000000-0xfa0fffff]
[    0.419065] pci 0000:01:00.0: BAR 1: assigned [mem 0xfa000000-0xfa007fff pref]
[    0.419728] pci 0000:01:00.0: BAR 6: assigned [mem 0xfa008000-0xfa00ffff pref]
[    0.420377] pci 0000:01:00.0: BAR 0: no space for [io  size 0x0100]
[    0.420935] pci 0000:01:00.0: BAR 0: failed to assign [io  size 0x0100]
[    0.421526] pci 0000:01:00.0: BAR 2: no space for [io  size 0x0004]
[    0.422084] pci 0000:01:00.0: BAR 2: failed to assign [io  size 0x0004]
[    0.422687] pci 0000:00:00.0: PCI bridge to [bus 01]
[    0.423135] pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
[    0.423794] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
[    0.424566] pcieport 0000:00:00.0: Signaling PME through PCIe PME interrupt
[    0.425182] pci 0000:01:00.0: Signaling PME through PCIe PME interrupt

01:00.0 Class 0700: Device 1c00:3853 (rev 10) (prog-if 05)
        Subsystem: Device 1c00:3853
        Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
        Interrupt: pin A routed to IRQ 230
        Region 0: I/O ports at <unassigned> [disabled]
        Region 1: Memory at fa000000 (32-bit, prefetchable) [disabled] [size=32K]
        Region 2: I/O ports at <unassigned> [disabled]
        [virtual] Expansion ROM at fa008000 [disabled] [size=32K]

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/pcie-rockchip.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index c53d132..f82452b 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -407,8 +407,11 @@ void rockchip_pcie_cfg_configuration_accesses(
 {
 	u32 ob_desc_0;
 
-	/* Configuration Accesses for region 0 */
-	rockchip_pcie_write(rockchip, 0x0, PCIE_RC_BAR_CONF);
+	/*
+	 * Configuration Accesses for region 0.
+	 * Bit 9 is for enabling IO base and limit registers.
+	 */
+	rockchip_pcie_write(rockchip, BIT(9), PCIE_RC_BAR_CONF);
 
 	rockchip_pcie_write(rockchip,
 			    (RC_REGION_0_ADDR_TRANS_L + RC_REGION_0_PASS_BITS),
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
