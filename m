Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B443C189CD5
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Mar 2020 14:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBmvjPR8Udr0P1oltBRxzsgyaDHbvEnECcPtc5xQ7fE=; b=YMQkE7PgH84Yqf
	XWCZ3EiItHrtAXr6xd1+KHirGJ90NZcuiR/yrR9GsRFotWkLgIOmkRUqL1m1vpVdwUI/iGwjvbqip
	O9ofEwaD4W+xE65eLzj1CZJVlJlbTB4uccT/sR8y/Y9Q0MGGy89Ldhh2Hr9YcrWT94oOYki1Okmqx
	+szl10kmUsROGdHL5NLFU5fneaK40jA8yWdwuyKiLAArPivXLi82LG8xX1yk4WIPazLJaeJYdMQji
	XxCF0qEzRHk3QI6JunobiL9hpLqAds/6FamMSKIQ+kRmQGIdvXuOJ52Gw9UeB/OfBVuazS662loED
	LzkIZoFDuT9EugBoUPAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYeS-0003f8-OL; Wed, 18 Mar 2020 13:22:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYeP-0003dN-8q
 for linux-rockchip@lists.infradead.org; Wed, 18 Mar 2020 13:22:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5727529662F
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] hantro: Add linux-rockchip mailing list to MAINTAINERS
Date: Wed, 18 Mar 2020 10:21:08 -0300
Message-Id: <20200318132108.21873-9-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318132108.21873-1-ezequiel@collabora.com>
References: <20200318132108.21873-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_062225_446057_F41505C9 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The linux-rockchip mailing list is relevant for the
Hantro driver, given this support the VPU present
in Rockchip SoCs.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 28bbbb6c73ef..dc56b9bfc3b3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14313,6 +14313,7 @@ F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
 HANTRO VPU CODEC DRIVER
 M:	Ezequiel Garcia <ezequiel@collabora.com>
 L:	linux-media@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 F:	drivers/staging/media/hantro/
 F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
