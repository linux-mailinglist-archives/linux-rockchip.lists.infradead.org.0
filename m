Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C341E1A02
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 05:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VdmA8ROHjIkYdqqzyMzW86/5bSm3YtQG4n8TRBhp2Nk=; b=RuJrst067kZFrEuEN2cgIrJ/pw
	bdCqZJDKjycL9DVPnlwLZI22UqWC/cEiuROr5SGf57r5QGAfBaBHS+wNl4nPQ6n6HPGFx+Emd5Yll
	OeknSJ7PB2tioZfphh52U3f+obZ3PYUxMxil5yw5LWy/EgsVcOUT3McxPXSWbTiPnkufyQUWJ3ex8
	q8h/OyTOhBLqlCkOTZTZhBsLz87WtI0fgCE2XfZo1PL8WdQ+UaQPmpD2xwEDg4h2vhQlA0Xe1PfNq
	YpQxnVlFxpvZGpsc7pDpMZY6SnM3sY+Ek45aLwDaLNQbYVxK1B3426amOuWqReOzEZG4oLCtrETt9
	3WJN2VDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdQMe-0004Tm-2t; Tue, 26 May 2020 03:34:52 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdQMX-0004Md-76
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 03:34:46 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3712390136;
 Tue, 26 May 2020 11:34:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10491T139788594689792S1590464077143166_; 
 Tue, 26 May 2020 11:34:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5bc2f5f28fe4a87715d5db92c85d4295>
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
Subject: [PATCH v6 14/16] ARM: dts: rk3399-evb: usb3.0 host support
Date: Tue, 26 May 2020 11:34:33 +0800
Message-Id: <20200526033435.20235-5-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526033435.20235-1-frank.wang@rock-chips.com>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_203445_440261_75741A2C 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.135 listed in wl.mailspike.net]
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

Configure 'tcphy1' and 'usbdrd_dwc3_1' nodes to support USB3.0 host
for Rockchip RK3399 Evaluation Board.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
index e5659d7999..1bebe258f0 100644
--- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -23,3 +23,16 @@
 &rk808 {
 	u-boot,dm-pre-reloc;
 };
+
+&tcphy1 {
+	status = "okay";
+};
+
+&usbdrd3_1 {
+	status = "okay";
+};
+
+&usbdrd_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
