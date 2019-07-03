Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BDF5EC9D
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 21:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgFgu7v6y4+We0z1hqXLKhPgfaDYJkvrjCkO7OkyY6A=; b=hj6i9n4eDgKurZ
	WJGTeqVPEi+wYXfVVIlr1+HamUomIA+dYYVQU7oZnWtiAOrO6i2n3xggE0d24rLu+5ARqfHOPObVg
	5YPw7FkOUmweGOX0fH+VWGQDPRaTo8NJU+dTISyjtN1HkeW9+dQYxojox4iVjzj3Rkv/ZSm4Tw2nh
	D5L8ZPIfFMe8lXRuSU8aJRRvzAbbGzRvxxfR5mEERW7eFJSS+5RDFxtZb9T+gwa5qEb8zYpK0DrT0
	EiYiInaRa+e7hT8ZezFO9NagcbbhZRWWefzdV6mF4UGrj+iOUTnltIJ8hvwmG2I3iJ/vS1X6Lyrv8
	iLqbz7F/LH/gtgZM2D7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikiG-0007NI-Ns; Wed, 03 Jul 2019 19:14:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiked-0004NF-Vp; Wed, 03 Jul 2019 19:10:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 47C9428ABC2
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v7 13/14] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
Date: Wed,  3 Jul 2019 16:09:09 -0300
Message-Id: <20190703190910.32633-14-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703190910.32633-1-helen.koike@collabora.com>
References: <20190703190910.32633-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_121056_177550_25285734 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, eddie.cai.linux@gmail.com,
 heiko@sntech.de, Tony Xie <tony.xie@rock-chips.com>,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com, zyc@rock-chips.com,
 hans.verkuil@cisco.com, zhengsq@rock-chips.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, jeffy.chen@rock-chips.com,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jacob2.chen@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, sakari.ailus@linux.intel.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Shunqian Zheng <zhengsq@rock-chips.com>

It's a Designware MIPI D-PHY, used for ISP0 in rk3399.

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
[update for upstream]
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v7:
- add phy-cells

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index e7cf52e4b0ec..6b8e211e84c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1388,6 +1388,17 @@
 			status = "disabled";
 		};
 
+		mipi_dphy_rx0: mipi-dphy-rx0 {
+			compatible = "rockchip,rk3399-mipi-dphy";
+			clocks = <&cru SCLK_MIPIDPHY_REF>,
+				<&cru SCLK_DPHY_RX0_CFG>,
+				<&cru PCLK_VIO_GRF>;
+			clock-names = "dphy-ref", "dphy-cfg", "grf";
+			power-domains = <&power RK3399_PD_VIO>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		u2phy0: usb2-phy@e450 {
 			compatible = "rockchip,rk3399-usb2phy";
 			reg = <0xe450 0x10>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
