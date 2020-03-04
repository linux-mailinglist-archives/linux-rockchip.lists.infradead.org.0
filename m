Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C24B179B00
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 22:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1FOGmHFHikaDIiq5YgfIxKQabMKbiA5lhP8Eprbn9dA=; b=WoPrJZ+6qrq0v7
	Hn7e9xBSLC+QqjDVg3PZ9rrCKlMnrJeBoJflNHXGnzbzhRgDuj8nMVg86nLIZhbsqn6cGQfjsHZnL
	YcT+s5JAct/LuxtvcEf65xp2yfW86pNygjqh3ynEYmQXP28FmoQkVelrxERogKvasTgrmmFpeIchU
	69m6NoA90v+em7j5QWuGnzkUQv1K4EQ8qzaitZCd6wBsbXytm8CqoGQovgKB7ClY4GGlGC5KPQ98J
	Qyc3LsOgatP17FM9bZlMZD2/WOxPumuvKnGaF5+/QR47gGWfRWgcQwbWK0AGuGyoJ62hJ/PTQwhRa
	y+VSpuDnBcH7fNvIIBfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9bbt-00044N-FN; Wed, 04 Mar 2020 21:31:21 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9bbe-0003tI-SU; Wed, 04 Mar 2020 21:31:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 9C0823701125;
 Wed,  4 Mar 2020 22:31:05 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkagLefmcj9V; Wed,  4 Mar 2020 22:31:03 +0100 (CET)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: Add doc for Pine64 Pinebook Pro
Date: Wed,  4 Mar 2020 22:30:22 +0100
Message-Id: <20200304213023.689983-2-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_133107_065063_D9B62F20 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Emmanuel Vadot <manu@freebsd.org>, Alexis Ballier <aballier@gentoo.org>,
 Tobias Schramm <t.schramm@manjaro.org>, Rob Herring <robh@kernel.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Emmanuel Vadot <manu@freebsd.org>

Add a compatible for Pine64 Pinebook Pro

Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 874b0eaa2a75..17f0ab0b8832 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -415,6 +415,11 @@ properties:
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
