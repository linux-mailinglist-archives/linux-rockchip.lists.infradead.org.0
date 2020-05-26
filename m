Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6B01E19F3
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 05:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vAhNKyVv0j9OJOpsvYyRXic5w0lJ07UZjJNMw+k/B5g=; b=ifErkwDVV8JDnLN/YGotFW7q/8
	9b0pwPhS+/GCetoRi3OisggnXIKEF1IJcb0y/10Ay3uqUZkfUgsqKtr4jSddjGrRpi8yQHXQZeSX/
	R1DrrhROhZ8hZWON+Rda1w4s28F/Re+2msChp48+p4tX3j3b6hA3TqdIZQEMR/lhGu1cMVJf7LJcN
	h7y7Byn3tVmME1xoEHi3+/SF4kBcrPtm7XgZbqsOSUyaedSTFwcHN1keRFrm6z/pHjYy2+77JiTk1
	2xS0nQUNxFcZPng+hVjIfzm+wSX86pJi7Vh+ApTuUFH3WcLn5poCKiUAak/glITqj7IU3cCcwhLu6
	RvyO1H0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQKZ-0003sw-Kr; Tue, 26 May 2020 03:32:43 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQKU-0003pD-4v
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 03:32:40 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id B170DB73A0;
 Tue, 26 May 2020 11:32:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21206T140696379496192S1590463941416434_; 
 Tue, 26 May 2020 11:32:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ee11cb3aa64e564ff54cb1ebdaf9bc65>
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
Subject: [PATCH v6 04/16] arm: mach-rockchip: bind sub-nodes for rk3399_syscon
Date: Tue, 26 May 2020 11:32:08 +0800
Message-Id: <20200526033220.20047-5-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526033220.20047-1-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_203238_347314_8D7FE740 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
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

There are some sub-nodes under the grf DT, so add bind callback
function in rk3399 syscon driver to scan them recursively.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
index 259ca44d68..f27b0ced82 100644
--- a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
@@ -20,6 +20,9 @@ static const struct udevice_id rk3399_syscon_ids[] = {
 U_BOOT_DRIVER(syscon_rk3399) = {
 	.name = "rk3399_syscon",
 	.id = UCLASS_SYSCON,
+#if !CONFIG_IS_ENABLED(OF_PLATDATA)
+	.bind = dm_scan_fdt_dev,
+#endif
 	.of_match = rk3399_syscon_ids,
 };
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
