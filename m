Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D208411E9A0
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 19:01:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmWj3/UENoTlEE+lsuUpg1Ji2pDVPn5nhoSzzkNDCpE=; b=bIkd/CuynX+5dj
	MUjT52Dvf9ysZd/fyHrwvd3daoxrVGUQeS1gMVC618s6ZhitVlylSuJxZYDIqybSWn56XneGhiHJd
	TGkLMqEV7P87HrvE0TuR4oyYE6gDXllpK9aeqTZJ48L1wCNE2yJtiNwv/HiFvJeHznzoFbd/nGDnA
	XnKPO+m7YETr1Scc8msbBIoqeOQ2YPkeNxwJAWiyt0orjGvBPPYBfp6nndpoHNClaRd1ulJSGzu+l
	4IP0zrIxp9+F9oB0sCt31TKQlpEerXsY8voF0l2LLwKw1SS0e7JRiBo2I8cqN/EQzM6EF0SNm6YY8
	JtXnYjPSI/7+NZ2wDVyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpFR-0002vq-Ds; Fri, 13 Dec 2019 18:01:05 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpEx-0002Sx-5w; Fri, 13 Dec 2019 18:00:38 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id CBDB0240009;
 Fri, 13 Dec 2019 18:00:23 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>
Subject: [PATCH 2/2] dt-bindings: phy: Use a real life PX30 DSI PHY example
Date: Fri, 13 Dec 2019 19:00:19 +0100
Message-Id: <20191213180019.25080-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213180019.25080-1-miquel.raynal@bootlin.com>
References: <20191213180019.25080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_100035_362120_0AA87280 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Update the example phandles to reference actual nodes and give a
working starting point.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 72aca81e8959..2e35bfdf47a1 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -60,9 +60,9 @@ examples:
     dsi_dphy: phy@ff2e0000 {
         compatible = "rockchip,px30-dsi-dphy";
         reg = <0x0 0xff2e0000 0x0 0x10000>;
-        clocks = <&pmucru 13>, <&cru 12>;
+        clocks = <&pmucru SCLK_MIPIDSIPHY_REF>, <&cru PCLK_MIPIDSIPHY>;
         clock-names = "ref", "pclk";
-        resets = <&cru 12>;
+        resets = <&cru SRST_MIPIDSIPHY_P>;
         reset-names = "apb";
         #phy-cells = <0>;
     };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
