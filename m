Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27673A13F9
	for <lists+linux-rockchip@lfdr.de>; Thu, 29 Aug 2019 10:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a9aCfzKCcMz/NiY99wVqtOnUaZS3t8lkH5TksSDi/1k=; b=KnC
	ZietX8i2Ysb7o0BNfEt+lpsPnXH1+ixe4e9enMJTWjXmyYDMV+16ZM+c/oSC04kltCTzMxbFoQR4v
	Da1P9b7cNcgw7uEfWtqRdKnHK5nE2ZwfUNCUuQeJrgs+yH6svFx1kCAqLZqeFYUygtlAuvesZW1w0
	rdVQmDOokpk8hfWNdPQv+oX+8ltQyJ332gvG0xPBRHJGsG6DwmMWT3OY+mWBIps78v/ha03lqF9Xn
	zADwvibSUXDG3RhKU8OtLr+J/Y/Cp543mMGVpDlkDFsrAZRNifGrpp0D3+JMGuGd61VJxABq9qEzW
	SaknAa7hk4wZt5EJ8J3PvzBgPgdnltA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3G0T-0003OP-6D; Thu, 29 Aug 2019 08:42:13 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3G0O-0003O2-VS
 for linux-rockchip@lists.infradead.org; Thu, 29 Aug 2019 08:42:10 +0000
Received: from shawn.lin?rock-chips.com (unknown [192.168.167.138])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2B3FD3E88A;
 Thu, 29 Aug 2019 16:42:02 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P806T139970504931072S1567068119523134_; 
 Thu, 29 Aug 2019 16:42:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3db9f6487452e5487522be5413dd36c8>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: limit clock rate of eMMC for rk3328
 boards
Date: Thu, 29 Aug 2019 16:41:02 +0800
Message-Id: <1567068062-174383-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_014209_174068_A7A95130 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

max-frequency is missing for rk3328-evb and rk3328-rock64, so the
eMMC will run into 200MHz bus clock in HS200 mode. The IO can only
support up to 150MHz for rk3228 Soc, so now rk3328 boards are not
always boot properly.

Fixes: 955bebde057e ("arm64: dts: rockchip: add rk3328-rock64 board")
Fixes: 0c1f8546753f ("arm64: dts: rockchip: add RK3328 eavluation board devicetree")
Cc: Liang Chen <cl@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3328-evb.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 49c4b96..a5d8b0c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -73,6 +73,7 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
+	max-frequency = <150000000>;
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 62936b4..e99e22e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -132,6 +132,7 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
+	max-frequency = <150000000>;
 	mmc-hs200-1_8v;
 	non-removable;
 	pinctrl-names = "default";
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
