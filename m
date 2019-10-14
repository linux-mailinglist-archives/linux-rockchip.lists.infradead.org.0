Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148FFD6BA4
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 00:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yX5zHnW7uZMGbf448RIdx39uv1ebXvUavhSTIP8TOW4=; b=a7l
	NoBtQGlVrX9L3q6B9xKTlKPrTRwj/yOfCTzt4GEuIVYicll9go+sYYNYow9UqKGc089OAbzSGPlRu
	DfmsRfNDA+MIBCCOahefZMrSK5Ekd17Ci/++be7PT7qy6I5g8EKU2eoYFu26DLEyO9DM/GdpyFmcD
	h5ki9obFXPDVxs4Hk2CEjk62MS4NEdtN97dSeebftuFOD4Yyo0GkamYNUzrUp5Jkd4DFEKj2DnDCh
	UXjFZ7NfpzZk/q9oQNKzQC4A+gEOlOQKbeS+iZRefQ+Frq79TqvBigPSYh2ULAZ97YYlk76lU/uEt
	x8qRLz4GunosPrlTapA5N4dXvoQazRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK8gw-0003FH-AM; Mon, 14 Oct 2019 22:19:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK8gU-0002ov-HF; Mon, 14 Oct 2019 22:19:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB67628;
 Mon, 14 Oct 2019 15:19:19 -0700 (PDT)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BE31F3F68E;
 Mon, 14 Oct 2019 15:19:18 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/3] dt-bindings: ARM: rockchip: Add Beelink A1
Date: Mon, 14 Oct 2019 23:19:04 +0100
Message-Id: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_151922_616936_8A4BA7E5 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add a binding for the RK3328-based Beelink A1 TV box.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c82c5e57d44c..f27f7805f57e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -40,6 +40,11 @@ properties:
           - const: asus,rk3288-tinker-s
           - const: rockchip,rk3288
 
+      - description: Beelink A1
+        items:
+          - const: azw,beelink-a1
+          - const: rockchip,rk3328
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
