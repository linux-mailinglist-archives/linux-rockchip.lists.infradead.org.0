Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EFD120587
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 13:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mQt9Ytuc0LyYB2Qm4MPsF0WubykkHQGrAiAw3kugzFM=; b=LkqDM9NTDvQyiW
	EGIamPORcqDa0enHa1G6ax8VN4nWqXrV/jhQqP8H7tVvJBSOcyvquZR2IC13JDxrK7dV0/VsniG2L
	eXifr48EkdwsTkxT2UgZyRfgoJ2XLRm/RW51UUaJ1+Ei+QiA14x1GEJiRLr0VlcMhkhLGSjZoYE0L
	ETIc2DwDqU0qqA7me119IL1aJ0bSpyU52s206jxbz+T7T9GWwnWtErw+ZJcytNcyiVmn1xwpFLTdx
	Bs3ajTJL/TSOhzEw/vUQFq/4R96FUPUfp/gb/rcst4OUS2eRTvVVF/TldQ87jcCSHK1wog0VKtVi5
	w6XkWPYCSe79cqU1vs1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpRB-00065T-DW; Mon, 16 Dec 2019 12:25:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpQv-00057h-Qw; Mon, 16 Dec 2019 12:25:07 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1igpQm-0008GW-Fd; Mon, 16 Dec 2019 13:24:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com
Subject: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from rockchip,
 px30-dsi-dphy
Date: Mon, 16 Dec 2019 13:24:47 +0100
Message-Id: <20191216122448.27867-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_042506_040203_791F9C8B 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Further review of the dsi components for the px30 revealed that the
phy shouldn't expose the pll as clock but instead handle settings
via phy parameters.

As the phy binding is new and not used anywhere yet, just drop them
so they don't get used.

Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
Hi Kishon,

maybe suitable as a fix for 5.5-rc?

Thanks
Heiko

 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index bb0da87bcd84..476c56a1dc8c 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -13,9 +13,6 @@ properties:
   "#phy-cells":
     const: 0
 
-  "#clock-cells":
-    const: 0
-
   compatible:
     enum:
       - rockchip,px30-dsi-dphy
@@ -49,7 +46,6 @@ properties:
 
 required:
   - "#phy-cells"
-  - "#clock-cells"
   - compatible
   - reg
   - clocks
@@ -66,7 +62,6 @@ examples:
         reg = <0x0 0xff2e0000 0x0 0x10000>;
         clocks = <&pmucru 13>, <&cru 12>;
         clock-names = "ref", "pclk";
-        #clock-cells = <0>;
         resets = <&cru 12>;
         reset-names = "apb";
         #phy-cells = <0>;
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
