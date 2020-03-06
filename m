Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A40B17C79E
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 22:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5GmzL2Wsk7xVe48lRp+GK0jbUX4cAI+o7JLbMVj8Xo=; b=XyxfncUH8DdXHM
	F+YW6q9wVY0+UWfdVIsDK9MFezgMqohKCVg5S2uAfGCgjxG7zxGi8Uoo31M2egihN+P18IYRaUISk
	A3P4rLZtgHIGkAgVzLlnKY/XRFEwMOuRzl5bxpz4NeeOGn1DkL67rTXCnYfD3TVwFVHuirqCoe/w+
	db6pylJo+dmdBjsy8/MYkPwhv0Ly99pEMkWDs4XL0HxzLrEnIdRxkOGaRepFuxPwlxoul0zEZ8dat
	wqLROzojLVZpwEiqRYQxzD+xhovUl7DkmQf1eJU816kEGv+QNt3Q93Hytq0yyJ3Ly+G1ui0ZR1Nra
	TJhgqRrIW46PxIZ6DeTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKEj-0002bp-9o; Fri, 06 Mar 2020 21:10:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKEa-0002RI-C0; Fri, 06 Mar 2020 21:10:18 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jAKET-0003F8-1V; Fri, 06 Mar 2020 22:10:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: Add binding for Hardkernel Odroid Go Advance
Date: Fri,  6 Mar 2020 22:09:21 +0100
Message-Id: <20200306210922.172346-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306210922.172346-1-heiko@sntech.de>
References: <20200306210922.172346-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_131016_589160_DBBFF828 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 kever.yang@rock-chips.com, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add a compatible for the Odroid Go Advance from Hardkernel.
The compatible used by the vendor already is odroid-go2, to distinguish
it from the previous (microcontroller-based) Odroid Go, so we're keeping
that, also to not cause unnecessary incompatibilites.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index f4ba00d679e6..4343ce7880e4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -358,6 +358,11 @@ properties:
           - const: haoyu,marsboard-rk3066
           - const: rockchip,rk3066a
 
+      - description: Hardkernel Odroid Go Advance
+        items:
+          - const: hardkernel,rk3326-odroid-go2
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
