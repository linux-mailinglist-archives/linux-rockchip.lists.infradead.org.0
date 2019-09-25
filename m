Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45B1BE51F
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Sep 2019 20:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mYFEAsDE+8u/4onU1TfLQYPMfLYN73oAc1jhbVIrOmE=; b=Grf8u22mDyQ5yO
	nIgFgbdQZL4RX/DQ5RQG6o3SUUY+rkYJOM+UhWvM4+Ly1eqRlpXhZTbmC3rdSJa8EVlY0Zf93Ofek
	qLXeonB4wbin/OKTvHQXsS2YifDYwpTj0x5jts/nsUikqeOhA7I7p15NcKJ3jJIEwR6SM5A7Cj5ye
	MnCCzLWfMz+Td2PSUGOVWCjCESrT2n9lYbCZnQf7LfbO9Xu6i4gCshJ8kkPvy6fQP6+MndrOeHFND
	TGAZlYJM1DNBsnlmX5vkqw8sEyx5WDpuoQPMXv5rjuPQGkhMYbh3/2oJoT344qNGfGBuIA2UNZUXo
	oFhULFZti0L3l0cHNyyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCNF-0003Le-IS; Wed, 25 Sep 2019 18:50:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCMf-0002qp-HG; Wed, 25 Sep 2019 18:50:14 +0000
Received: from muedsl-82-207-238-254.citykom.de ([82.207.238.254]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iDCMb-0005K2-1f; Wed, 25 Sep 2019 20:50:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org
Subject: [PATCH 1/2] dt-bindings: nvmem: add binding for Rockchip OTP
 controller
Date: Wed, 25 Sep 2019 20:49:56 +0200
Message-Id: <20190925184957.14338-1-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_115013_717400_8F9D0FD9 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Newer Rockchip SoCs use a different IP for accessing special one-
time-programmable memory, so add a binding for these controllers.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/nvmem/rockchip-otp.txt           | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
new file mode 100644
index 000000000000..40f649f7c2e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
@@ -0,0 +1,25 @@
+Rockchip internal OTP (One Time Programmable) memory device tree bindings
+
+Required properties:
+- compatible: Should be one of the following.
+  - "rockchip,px30-otp" - for PX30 SoCs.
+  - "rockchip,rk3308-otp" - for RK3308 SoCs.
+- reg: Should contain the registers location and size
+- clocks: Must contain an entry for each entry in clock-names.
+- clock-names: Should be "otp", "apb_pclk" and "phy".
+- resets: Must contain an entry for each entry in reset-names.
+  See ../../reset/reset.txt for details.
+- reset-names: Should be "phy".
+
+See nvmem.txt for more information.
+
+Example:
+	otp: otp@ff290000 {
+		compatible = "rockchip,px30-otp";
+		reg = <0x0 0xff290000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+			 <&cru PCLK_OTP_PHY>;
+		clock-names = "otp", "apb_pclk", "phy";
+	};
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
