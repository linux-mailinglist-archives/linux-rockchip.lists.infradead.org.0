Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E40713FC7F
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 23:57:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cUuz5Ykt0uv1a43/Z3QtQE3yOHek9jlvWnErcg3CwIw=; b=lwmTUY/AqnMcj0
	E8dmgiyoq4+kLB63GO226rb5qHLI6PlR1jMriDW+eaaVRSfGE225x2+cFYmL7LUG+qCw2DHRSD68D
	/Wc5QXZ+2zr4ZF4w6s76HlWMvv0abby/RKd01iQNsL6qnQ0NSNZqbRQmO9JiP8NuGwE6KLAPSihe/
	xvfIFfmQFxtdKyk4z73AmRqXu8+wV6QyQoeaRS/3xiGfQafZ6w+3loIgtJcHRAOlhHNZZCrbeXtqb
	X2u1/faVqNfZpFKZH8Qya6r0gQZM/MWfGU0YMgNoG3QCueJHs72AQl/nG0gw/BkUyz3+uPQy8HWje
	Vi2n3GydDaXaHI5db77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isE4P-0005Fb-HS; Thu, 16 Jan 2020 22:56:57 +0000
Received: from mx2.freebsd.org ([2610:1c1:1:606c::19:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isE45-0004ZX-VK; Thu, 16 Jan 2020 22:56:39 +0000
Received: from mx1.freebsd.org (mx1.freebsd.org [IPv6:2610:1c1:1:606c::19:1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client CN "mx1.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx2.freebsd.org (Postfix) with ESMTPS id 4A9B28813E;
 Thu, 16 Jan 2020 22:56:34 +0000 (UTC)
 (envelope-from manu@freebsd.org)
Received: from smtp.freebsd.org (smtp.freebsd.org
 [IPv6:2610:1c1:1:606c::24b:4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 server-signature RSA-PSS (4096 bits)
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "smtp.freebsd.org",
 Issuer "Let's Encrypt Authority X3" (verified OK))
 by mx1.freebsd.org (Postfix) with ESMTPS id 47zKLp0HJkz3Fx2;
 Thu, 16 Jan 2020 22:56:34 +0000 (UTC)
 (envelope-from manu@freebsd.org)
Received: from localhost.localdomain
 (lfbn-idf2-1-1164-130.w90-92.abo.wanadoo.fr [90.92.223.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate) (Authenticated sender: manu)
 by smtp.freebsd.org (Postfix) with ESMTPSA id 2C9476056;
 Thu, 16 Jan 2020 22:56:32 +0000 (UTC)
 (envelope-from manu@freebsd.org)
From: Emmanuel Vadot <manu@freebsd.org>
To: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de,
 dianders@chromium.org, andy.yan@rock-chips.com, robin.murphy@arm.com,
 mka@chromium.org, jagan@amarulasolutions.com, nick@khadas.com,
 kever.yang@rock-chips.com, m.reichl@fivetechno.de, aballier@gentoo.org,
 pbrobinson@gmail.com, vicencb@gmail.com
Subject: [PATCH 1/2] dt-bindings: Add doc for Pine64 Pinebook Pro
Date: Thu, 16 Jan 2020 23:56:16 +0100
Message-Id: <20200116225617.6318-1-manu@freebsd.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_145638_078827_DD40FB1F 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2610:1c1:1:606c:0:0:19:2 listed in] [list.dnswl.org]
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
Cc: Emmanuel Vadot <manu@freebsd.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add a compatible for Pine64 Pinebook Pro

Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d9847b306b83..2f6b72b084a4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -412,6 +412,11 @@ properties:
           - const: pine64,rockpro64
           - const: rockchip,rk3399
 
+      - description: Pine64 PinebookPro
+        items:
+          - const: pine64,pinebook-pro
+          - const: rockchip,rk3399
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
