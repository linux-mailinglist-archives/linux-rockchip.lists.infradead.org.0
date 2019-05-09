Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD06B18E9D
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 19:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6VcrxAcK6aAhP2gHD8hZRsNJVW/vhb5+iH7RJ+MLLls=; b=ZDtip5CbxyNf3F
	wIRONp1eFjGiL01l6Kb4xARmgPzt4JjBS7vUFOK29DEhR6pXYnhTjXuOJndT6BN7DcHKrWghyxk0s
	go1YM9leH1/z8EdyLGXxP3EfyRLbtTYb/c0EnGNJ0Y4lO2zBo1+O82w2RRNRBQypcqcsEWNs9BsPx
	5HbsDvSnkMitCbFYtK6xIH8qGyHZg1r3Dr1QOUijw1MTvwYLiTwNXMQHMyjoHoZs8dNwMn6bHxifT
	97+A0h2sezOA91VUFBtuA2wiIuIvADt4wASakQCfcsvnem+jSPAl9onD7PUm+Z4kURTxqLzv31Nsy
	CBa8D9YtHxuGfLZEIcaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmSA-0000zG-Ka; Thu, 09 May 2019 17:03:30 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmS6-0000yp-LH; Thu, 09 May 2019 17:03:28 +0000
Received: from fsav405.sakura.ne.jp (fsav405.sakura.ne.jp [133.242.250.104])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x49H3Lc0001574;
 Fri, 10 May 2019 02:03:21 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav405.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav405.sakura.ne.jp);
 Fri, 10 May 2019 02:03:21 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav405.sakura.ne.jp)
Received: from localhost.localdomain (118.153.231.153.ap.dti.ne.jp
 [153.231.153.118]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x49H3H8I001567
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Fri, 10 May 2019 02:03:21 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64
Date: Fri, 10 May 2019 02:03:14 +0900
Message-Id: <20190509170314.12806-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_100326_965644_A3EB7A76 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch adds PCIe, PCIe phy and pinctrl (for PERST#) nodes for
RockPro64 board.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 20ec7d1c25d7..56d7eeedf07c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -513,6 +513,20 @@
 	gpio1830-supply = <&vcc_3v0>;
 };
 
+&pcie0 {
+	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_perst>;
+	vpcie12v-supply = <&vcc12v_dcin>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	num-lanes = <4>;
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
 &pmu_io_domains {
 	pmu1830-supply = <&vcc_3v0>;
 	status = "okay";
@@ -545,6 +559,10 @@
 		pcie_pwr_en: pcie-pwr-en {
 			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie_perst: pcie-perst {
+			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	pmic {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
