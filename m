Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A5ED03B5
	for <lists+linux-rockchip@lfdr.de>; Wed,  9 Oct 2019 01:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Evqj3C/Arf3VlcI6tTZfx9PX8UfkKjU8qF8nMmBvXWM=; b=AtHGu7W3bB/mEP
	EhBukkjShkWyWFIGNVxvSeGkRqi7OeVkI0dEEE0o6bulvh3FzucqXdeSF+S9x8AhZT0PPj1ONA8pm
	8wvLTiQLkeQnt2///UCAqbI6a1kCfcNbD6Eg/dRu1TGA5QPNz2DrMCKDjkHlPiDFXo6i9tzZcjTFl
	fF4uo8HMuco401rK+8JKPvl5/S8nW6iNQLyIUJpLs1c82PHLWQLgI3n174XHywmGRKRm8LxmEs+P7
	7jIBk3K4csgiVj+ZzGmhoAedfAnsBxX5rBBmfmatTIL01EUNqeUfJqG6g/P/KTgX97YJu6SAnyRkg
	y+TXAV8X8f4ciYRNqcCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyTW-0002m4-PL; Tue, 08 Oct 2019 23:01:02 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyTU-0002ke-B1
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 23:01:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9A47928C299
From: Ezequiel Garcia <ezequiel@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 1/3] dt-bindings: display: rockchip: document VOP gamma LUT
 address
Date: Tue,  8 Oct 2019 20:00:36 -0300
Message-Id: <20191008230038.24037-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191008230038.24037-1-ezequiel@collabora.com>
References: <20191008230038.24037-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_160100_506167_ED3351DE 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add the register specifier description for an
optional gamma LUT address.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes from v3:
* None.
Changes from v2:
* None.
Changes from v1:
* Drop reg-names, suggested by Doug.
---
 .../devicetree/bindings/display/rockchip/rockchip-vop.txt   | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
index 4f58c5a2d195..8b3a5f514205 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
@@ -20,6 +20,10 @@ Required properties:
 		"rockchip,rk3228-vop";
 		"rockchip,rk3328-vop";
 
+- reg: Must contain one entry corresponding to the base address and length
+	of the register space. Can optionally contain a second entry
+	corresponding to the CRTC gamma LUT address.
+
 - interrupts: should contain a list of all VOP IP block interrupts in the
 		 order: VSYNC, LCD_SYSTEM. The interrupt specifier
 		 format depends on the interrupt controller used.
@@ -48,7 +52,7 @@ Example:
 SoC specific DT entry:
 	vopb: vopb@ff930000 {
 		compatible = "rockchip,rk3288-vop";
-		reg = <0xff930000 0x19c>;
+		reg = <0x0 0xff930000 0x0 0x19c>, <0x0 0xff931000 0x0 0x1000>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_VOP0>, <&cru DCLK_VOP0>, <&cru HCLK_VOP0>;
 		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
