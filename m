Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E526111E9F9
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 19:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9UvtNQvJqXUeN5OKs9GkJeqUV33+TLM6a2RonCZMZU=; b=KyDy301S6o3vFj
	35IlC9hMsqWslJ9uNEw8CK0KtevnBNTCH32rpqw22KxyDTijnBEuPMOtYpKwdgnu3KgnrgokNSE/+
	dv90vYLz9dfMO7mwuw/VRNm00FroM8xA7tf+PAwCT9ZdPrDjc8VTkpXIiGUqh2OWv7Tb70c/2289X
	ewZw3017qRlCOT5jf1BfVQabiLwexVOQSflgNZmSCQ5hdX0aX5qV3FjA8V8JpMp026GfRAx17d/KM
	sRw+fWRFM7jSW1NHkVFO/EghIAzM2q3dQcqQ2fCi8N2c8nCeQcOGWkDNCJ4sIgQ2MZ66QeltCB2Dr
	qPno6EQ03QGUtlaVHUIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpT6-00044D-Fu; Fri, 13 Dec 2019 18:15:12 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpPI-00005d-Ep; Fri, 13 Dec 2019 18:11:18 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3BBFC200014;
 Fri, 13 Dec 2019 18:11:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 10/12] arm64: dts: rockchip: Add PX30 CRTCs graph LVDS
 endpoints
Date: Fri, 13 Dec 2019 19:10:49 +0100
Message-Id: <20191213181051.25983-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101116_677140_CBAD78B0 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add the display subsystem routes with the two available CRTCs: vopb
and vopl (big and little). For each CRTC, add the LVDS endpoints. MIPI
DSI endpoints will come later.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index b2af0f02ecbe..1c96ba556daf 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -190,6 +190,16 @@
 		compatible = "rockchip,display-subsystem";
 		ports = <&vopb_out>, <&vopl_out>;
 		status = "disabled";
+
+		route {
+			route_vopb_lvds: route-vopb-lvds {
+				connect = <&vopb_out_lvds>;
+			};
+
+			route_vopl_lvds: route-vopl-lvds {
+				connect = <&vopl_out_lvds>;
+			};
+		};
 	};
 
 	gmac_clkin: external-gmac-clock {
@@ -976,6 +986,11 @@
 		vopb_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopb_out_lvds: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&lvds_vopb_in>;
+			};
 		};
 	};
 
@@ -1008,6 +1023,11 @@
 		vopl_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopl_out_lvds: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&lvds_vopl_in>;
+			};
 		};
 	};
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
