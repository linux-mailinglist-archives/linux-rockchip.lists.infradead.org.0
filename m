Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E9AF3C75
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 01:03:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJWbwGdvxWniw4RRasm3jr1Tm3NjC8icYmRJgGY01+M=; b=LuOknkow4/I8nW
	utaRifZDlkDP/jA7myDltUAq3D6jYV/VndJZbRp0VdJ0i51+uSxLoKmBVfVPYDf+ML4hLv1CsKCyn
	AeLzzGOjmHLUoy9RdUXICwFkIhFkHHTbY0dsnm9wLiy4Kz3o6iutN+PItdcThPhlnYARaYqfvYYFf
	XrKoXRcnthwn8rPzMpgETAJe6mXLjD831MpCzV1q/2Ficv1DB0SjWP51ImhjzJbRjoxKWM3vuiYri
	qdgDkkCd6UyvKVj8Jxz98CBkb9Dna9Ylb5icIlHRVzdCU0zSUjBtQpkhUdIWAaVrVFtQIK5xE2lhb
	e6KsRmlblvuVF23IKQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrkl-0006sn-Gz; Fri, 08 Nov 2019 00:03:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrkE-0006Ot-6D; Fri, 08 Nov 2019 00:03:19 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrk2-00065H-5Q; Fri, 08 Nov 2019 01:03:06 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: dri-devel@lists.freedesktop.org,
	a.hajda@samsung.com
Subject: [PATCH v2 4/5] dt-bindings: display: rockchip-dsi: add px30 compatible
Date: Fri,  8 Nov 2019 01:02:52 +0100
Message-Id: <20191108000253.8560-5-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160318_399971_E784408C 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, hjc@rock-chips.com, philippe.cornu@st.com,
 yannick.fertre@st.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The px30 SoC also uses a dw-mipi-dsi controller, so add the
compatible value for it.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt      | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index 1ba9237d0ac0..151be3bba06f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -4,8 +4,10 @@ Rockchip specific extensions to the Synopsys Designware MIPI DSI
 Required properties:
 - #address-cells: Should be <1>.
 - #size-cells: Should be <0>.
-- compatible: "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi".
-	      "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi".
+- compatible: one of
+	"rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi"
+	"rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi"
+	"rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi"
 - reg: Represent the physical address range of the controller.
 - interrupts: Represent the controller's interrupt to the CPU(s).
 - clocks, clock-names: Phandles to the controller's pll reference
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
