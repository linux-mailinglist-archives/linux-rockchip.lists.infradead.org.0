Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A083019DB15
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 18:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G386YXETvEp0uaBCFBbA7UrYz3BMNI1jIE+jG6T/gxE=; b=Elyp5GYzqo5nz4
	jm6tUPhWa4WQRRiZw1rsfL4cdkUl73elD64mcuoYjrYja/3bw7wZfwowh2deFwBEE8PSuEIRhDlFs
	zBkm1PkyLgYAo9hgKAtKz7StD71hP06fuxyCdotABY2DAXW0M4baRddhT5wbTWbjd+tzRpNza+nIT
	fFvasHU+hhe7H9hM967OgIayD7sXyrQGZvoP0JCyy+zZZTAvYVfADPpAHdH4b7NI8acf6TZ0C8as5
	ajzpRciYmBuFlbfQR9ouVLn8uyQMHKm6oBwI7VQICvC/WEP17ZXcP+HrwP0dTTylAWlxrTuuMyfJ/
	9T+N+3+Apa8Cj5Omx8Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOzL-0006WD-RM; Fri, 03 Apr 2020 16:16:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOzJ-0006VF-5K
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 16:16:10 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A600C2983F0;
 Fri,  3 Apr 2020 17:16:02 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/9] media: staging: dt-bindings: rkisp1: add required
 items in i2c example
Date: Fri,  3 Apr 2020 13:15:31 -0300
Message-Id: <20200403161538.1375908-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200403161538.1375908-1-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_091609_337687_03C51D32 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, jbx6244@gmail.com, kernel@collabora.com,
 ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add missing required items in Rockchip ISP1 dt-bindings example for
a complete i2c node.

Suggested-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v2:
- new patch in the series
---
 .../devicetree/bindings/media/rockchip-isp1.yaml             | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index a77b6ec500c95..8c7904845788d 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -169,6 +169,11 @@ examples:
         };
 
         i2c7: i2c@ff160000 {
+            compatible = "rockchip,rk3399-i2c";
+            reg = <0x0 0xff160000 0x0 0x1000>;
+            interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH 0>;
+            clocks = <&cru SCLK_I2C7>, <&cru PCLK_I2C7>;
+            clock-names = "i2c", "pclk";
             clock-frequency = <400000>;
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
