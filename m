Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADFF177302
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Mar 2020 10:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ASz6QjYI78JR5kJCDGsbp2DO3V4I7Jqymd0PkrqFmD8=; b=bUNbO9Rlv4EV+RKh2gL6q39OYQ
	j5WzLkzp59gglhrinupZaesihDrXhcy7R08dNRCIETm94Q4HavnEJEC/0VCHN8b5GtddV//KedCby
	hmIamnHxXaOYmOH8W/u3HjP6oEjkHGbixB+V5WJZQ5S7V1VvSOoxA5WETsKZ76Gm3jQc1Xx417nbP
	5NxSkt7JTjpl0+uuXyaxRY29mgXCHI2XekXcPoZCWz5uY4Q/WCCeH9yMIQBsI7R2ukpBuuWK3fjeC
	hx0/Dt7XNKn81a4G3dIaqLp+WK3Drp8IErGnJ07imxRxL+nBwn7pxbvS0CWXm3b0xiZpwXxEQZGtD
	Zt9JM9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94Aq-0001GH-5I; Tue, 03 Mar 2020 09:49:12 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94AV-0000tC-5T; Tue, 03 Mar 2020 09:48:56 +0000
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 04E4F6B159;
 Tue,  3 Mar 2020 17:47:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3521T140169581676288S1583228860405504_; 
 Tue, 03 Mar 2020 17:47:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cb76df2291229c6525620d328de98707>
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
Subject: [PATCH v3 3/3] MAINTAINERS: add maintainers to rockchip nfc
Date: Tue,  3 Mar 2020 17:47:36 +0800
Message-Id: <20200303094736.7490-4-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303094736.7490-1-yifeng.zhao@rock-chips.com>
References: <20200303094736.7490-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_014851_420600_FE65F214 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 linux-mtd@lists.infradead.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4017e6b760be..79cfad293549 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2242,6 +2242,7 @@ L:	linux-rockchip@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
+F:	Documentation/devicetree/bindings/*/*rockchip*.yaml
 F:	arch/arm/boot/dts/rk3*
 F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
@@ -2249,6 +2250,7 @@ F:	drivers/clk/rockchip/
 F:	drivers/i2c/busses/i2c-rk3x.c
 F:	drivers/*/*rockchip*
 F:	drivers/*/*/*rockchip*
+F:	drivers/*/*/*/*rockchip*
 F:	sound/soc/rockchip/
 N:	rockchip
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
