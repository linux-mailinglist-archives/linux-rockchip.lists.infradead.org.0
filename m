Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D41E19FD
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 05:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OB1oQH5lSvF+522XZb0/X7kyJbdQbdY1UmTQB/CKPto=; b=Qp5wrLYrIuO+OxcQKMB+Y5dT1f
	4Yae0sW4O8LIbFx1BmWApB59q9L/RTL4b4jvTFsTl1RS6rd0W8XxLbXpF5IU3WfkfymqqlxN+4Bl+
	pZrhUc1Igp3bGv2JVLC5ABQqMXVQNA7wFf2JCPurjHxfJm72Mn/zJEeWMV7Op0zoz5FpKsUtZt6if
	Uk9osPfem8SUX3kFobYTzUrbz5ocUxMe1JdO4TEsq2g8Chldut9TxLQBopbrbAAw1tFEIqZbQMLLJ
	FkkUhC5xKOwiGZLftPvQTb9xCVMomTtxsfVpYv47SbSd5Us+22K83KzOxZ35HHAmcJs4+K/IePekK
	bLMmJwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQMV-0004Mi-VQ; Tue, 26 May 2020 03:34:43 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQMS-0004LF-NH
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 03:34:42 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 1804CBB94C;
 Tue, 26 May 2020 11:34:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10491T139788594689792S1590464077143166_; 
 Tue, 26 May 2020 11:34:38 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <de88d629e8afef0e59296d9f9936ccb4>
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
Subject: [PATCH v6 10/16] usb: dwc3: Enable AutoRetry feature in the controller
Date: Tue, 26 May 2020 11:34:29 +0800
Message-Id: <20200526033435.20235-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526033220.20047-1-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_203440_938023_41BFB3B0 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.130 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.130 listed in wl.mailspike.net]
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

By default when core sees any transaction error (CRC or overflow) it
replies with terminating retry ACK (Retry=1 and Nump == 0).

Enabling this Auto Retry feature in controller will make the core send
a non-terminanting ACK upon such transaction errors. That is, ACK TP
with Retry=1 and Nump != 0.

Doing so will give controller a chance to recover from transient error
conditions.

Reference from below Linux commit,

commit <b138e23d3dff> ("usb: dwc3: core: Enable AutoRetry feature
in the controller")

Cc: Marek Vasut <marex@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 drivers/usb/dwc3/core.c | 9 +++++++++
 drivers/usb/dwc3/core.h | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index dc92f471c1..aab6c34c2d 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -995,6 +995,15 @@ int dwc3_init(struct dwc3 *dwc)
 		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
 	}
 
+	if (dwc->dr_mode == USB_DR_MODE_HOST ||
+	    dwc->dr_mode == USB_DR_MODE_OTG) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL);
+
+		reg |= DWC3_GUCTL_HSTINAUTORETRY;
+
+		dwc3_writel(dwc->regs, DWC3_GUCTL, reg);
+	}
+
 	ret = dwc3_core_init_mode(dwc);
 	if (ret)
 		goto mode_fail;
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index b510d8a983..2adcaf0029 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -160,6 +160,9 @@
 #define DWC3_GCTL_GBLHIBERNATIONEN	(1 << 1)
 #define DWC3_GCTL_DSBLCLKGTNG		(1 << 0)
 
+/* Global User Control Register */
+#define DWC3_GUCTL_HSTINAUTORETRY	BIT(14)
+
 /* Global User Control 1 Register */
 #define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
 #define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW	BIT(24)
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
