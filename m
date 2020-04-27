Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7863D1B99F0
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 10:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDfpQriM5+KVuPMXtPIBSgjpOsm1e4q8g9xphk3FUEg=; b=KBYJ5hTlLBI4qc
	a/1gCUE9hFyr9Gy+zlbsYCyEi7qwH3HhtD+vNn1JUZ4T584DZP5lvFoc8WK2tQojDPPt+9XafAmFj
	XhSMTfULgu8mrmmvfYgrUaGQwWsnWAI5WFgv3PmDjON0Y2+acBzihha3ml6Ylq2NMhl/5MkWAMCmR
	n2hkLNUKQZDd3Zb6qVQUh1RH7ALn9dQpq3SFk7NdHOI1ELM0PHlSUq2AzvTSOJdQtbU7GeV7I6zVE
	6I/uWrzWqpEKbD3WUtoHPIf6hQwmkEc29G0waPbsh+sZkZgQZpgAEMMRIDGVWcJ9JWorjwkGm8608
	CeUg7CfnWmICZ1lmM9tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz1Y-0007Mk-FS; Mon, 27 Apr 2020 08:21:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyym-0002bs-9S; Mon, 27 Apr 2020 08:19:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 92B902A087E
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v8 06/10] ARM: dts: imx6qdl: add missing mipi dsi properties
Date: Mon, 27 Apr 2020 11:19:48 +0300
Message-Id: <20200427081952.3536741-7-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_011904_464389_A00CB6D1 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Now that we have a proper driver for the imx6 mipi dsi host controller
we can fill in the missing properties to get it working.

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v8.
---
 arch/arm/boot/dts/imx6qdl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 98da446aa0f27..5f754c3cec052 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -1203,7 +1203,15 @@ mipi_csi: mipi@21dc000 {
 			};
 
 			mipi_dsi: mipi@21e0000 {
+				compatible = "fsl,imx6-mipi-dsi", "snps,dw-mipi-dsi";
+				#address-cells = <1>;
+				#size-cells = <0>;
 				reg = <0x021e0000 0x4000>;
+				interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
+				fsl,gpr = <&gpr>;
+				clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
+					 <&clks IMX6QDL_CLK_MIPI_IPG>;
+				clock-names = "ref", "pclk";
 				status = "disabled";
 
 				ports {
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
