Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB082E9722
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 08:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8YzeD7s38W1FBf32kwP5gGMI2DhypWlP63FE4QNo7eU=; b=sEi
	mHHoGYUjY+8meeezoAgjz4bkicbrhO5w+dSGUM6ia3F6nat7YuH3PkHR8ikkI1PpKXhZ5Kq+Lx4uz
	bEuJhA85PhokwkbIX6E49GOxpNO//EOBsqCQmhaKL4hvvyyxkJFVKDEkupe6+QHIeAit1zykXQD1/
	Qw4KdJMUwy4cXDJuo/T+T5qNgHFnVb4XwWIksxxV8qCromROhmF281y5BHK88O7zIV7RrrLpJPiUx
	P71I79ObFnwJ3GEyEwcZnVy4kfPKTatAYnt7P/ve7r4tFtOmTFgWF+Fvd8oWJEDNCi8PdF5DWTQoQ
	REnM1cV04mevlnZpm6IJPm6JxzE3uDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPiNu-00067q-HM; Wed, 30 Oct 2019 07:27:14 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPiNi-00060N-UR; Wed, 30 Oct 2019 07:27:04 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 27AE7782E3;
 Wed, 30 Oct 2019 15:26:55 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24329T139764409022208S1572420409020177_; 
 Wed, 30 Oct 2019 15:26:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aa4f6e373c65ec03269a1d2ffc15d6c0>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: heiko@sntech.de,
	robh+dt@kernel.org
Subject: [PATCH 1/2] dt-bindings: Add doc for Firefly ROC-RK3308-CC board
Date: Wed, 30 Oct 2019 15:26:48 +0800
Message-Id: <20191030072648.29738-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_002703_168235_B1574A1A 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add compatible for Firefly ROC-RK3308-CC board.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index bf86e8237363..6b6c9d5611ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -77,6 +77,11 @@ properties:
           - const: firefly,firefly-rk3288-reload
           - const: rockchip,rk3288
 
+      - description: Firefly ROC-RK3308-CC
+        items:
+          - const: firefly, roc-rk3308-cc
+          - const: rockchip,rk3308
+
       - description: Firefly Firefly-RK3399
         items:
           - const: firefly,firefly-rk3399
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
