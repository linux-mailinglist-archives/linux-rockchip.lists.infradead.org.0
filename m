Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10F2B4994
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eW838iRG95JCpx6LbXh6uTPj0AaOUucsvJcCsR2X1Wc=; b=DiWMDt2b37TMf7
	+EyEy8+DKJNiefko+/dDuxaqdOm/TBWkRiicHr2B3BzPnfOuWNRb82HugkFwDDbcP/depzaLulGm6
	VFKTjecK9qCceN6CayWw/l2FBgWBYkShVUpZh9HYdmCGbKvc1LcP5rEPrVB2ISTP3qL6spYyZUXHK
	2tiVMhxXadwhXnIkuugZTO57E9cqxkLg8enbW0PMnHaj4GCq1DIgL//EvQuTxyK6fcsiOY3CY9CQo
	yO4AaXs6fXd8f45p506UjITzBX7U2fasewa5QJLE1JyI8N5vinpYPir4y2/Gx3zDtFAp0pE3OUw/D
	GoWslrGem9fmcf8NrWiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8xC-0008Ex-Rk; Tue, 17 Sep 2019 08:35:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8x9-0008AZ-Jh
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:35:16 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8x7-0005kM-VW; Tue, 17 Sep 2019 10:35:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] dt-bindings: arm: rockchip: fix Theobroma-System board
 bindings
Date: Tue, 17 Sep 2019 10:34:53 +0200
Message-Id: <20190917083453.25744-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_013515_801462_B4A031CB 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The naming convention for the existing Theobroma boards is
soc-q7module-baseboard, so rk3399-puma-haikou and the in-kernel
devicetrees also follow that scheme.

For some reason in the binding a wrong or outdated naming slipped
in which does not match the used devicetrees and makes the dt-schema
complain now.

Fix this by using the names used in the wild by actual boards.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7ecee58842f5..d85983de7919 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -501,12 +501,12 @@ properties:
 
       - description: Theobroma Systems RK3368-uQ7 with Haikou baseboard
         items:
-          - const: tsd,rk3368-uq7-haikou
+          - const: tsd,rk3368-lion-haikou
           - const: rockchip,rk3368
 
       - description: Theobroma Systems RK3399-Q7 with Haikou baseboard
         items:
-          - const: tsd,rk3399-q7-haikou
+          - const: tsd,rk3399-puma-haikou
           - const: rockchip,rk3399
 
       - description: Tronsmart Orion R68 Meta
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
