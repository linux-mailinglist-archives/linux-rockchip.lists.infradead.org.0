Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9704B72A8
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 07:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDLdyCihH3SeD9REccXbZsgUoJIKzDA7akIrAdFxXuI=; b=F5USZ7N6UebQxn
	1lmRzQwafX4BRM2Bd7nWar5dj9vGrc2wwg8KkDHV6qLqvjUnjYUu0S7Ee8P2MpDflOeymnIDu8QlI
	L2sB2jdnPNyJX0YGX6vNxrEY/ln8oTeKW561zYLr8YEvhGrLTmBrRGOCR+FKndo93vWRsxv9455CC
	JXjDcbki4ogFLXUegoKgV+YzmrsJbghFSQqycBu5N0N2ZcYfhsliinoPC1dBXN/i+OyjmFGZBYg7S
	coRGssXf9Y9Kqz4muRzm9+iQaXJfoKk1tMZFpwtjs+PuZqVTaYKM2N9oat3fjZC7qexsLzMQfIjfX
	fFmXv7BrV/hbj/xmxALQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp0j-0005qF-I9; Thu, 19 Sep 2019 05:29:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAozs-00051r-6h
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 05:28:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id i18so1174697pgl.11
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 22:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t5yyFbal/mMfwBIQl8HnI8bUA7OIbk8kyBH5yOZvNcA=;
 b=gQ8TI7kzVBJ6CMikP7NssQGXe7ymOzNnxjoXCSNnmpM0cvHG6iwkAa1DbNwDAnefsg
 rnmb/VSD+5U5GcVCh/IHGtUsO7jgVmBNy8y1uzpSxjjx2x40M4/yYxolN5pBJKCOhWWc
 Vxv8yQ11gU0oO5HNX+5fVzq4yULshPSM0L4nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t5yyFbal/mMfwBIQl8HnI8bUA7OIbk8kyBH5yOZvNcA=;
 b=Aa/clx1PSQdKKrZbSGcgMzHSsoJKEtO3BGePvhndtCmx+BA+F5oKPLtlTWPymeSOFk
 OfvSUmR46SgHd6MEdPlQwbMqmKslX59UvwrI5q3ZDAXaw5hwfdX5+UZbbMAnQuewhXql
 PgMgskhw2fYg2HWMu89XAwHwyXIXi1HzRamv1Ltzcf5DwhmkTxJExadBajgNqSTouOG9
 TyoBH1p+0GXMe/cD3RyLHZLnt+XXd3ti3QX5jhfYEZ7BY/Fup/xny3feR/CYTsoG329J
 rmQM67vB2vvSpsAIFp4Zn2IPuHUv5y6hyenfCYqlW7MPs5hQ+RQOS4nKAOClsQjLp1QB
 3Scw==
X-Gm-Message-State: APjAAAVvPjEctjndkzQYGZ9GC87gLDFGEEup/Letj5BJmZ6883L60sSL
 QiiTiYPquPhlBaFA3U1Hgx48hKOJ0Rk=
X-Google-Smtp-Source: APXvYqyT5565J7Rps/98UJ9h+PeACCHxHIAq8wpBqY/DOotDYp8qDwIt2a37ZQOHXM5dF4M6sFxuFw==
X-Received: by 2002:a63:3c08:: with SMTP id j8mr7251129pga.72.1568870931289;
 Wed, 18 Sep 2019 22:28:51 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:28:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/6] dt-bindings: arm: rockchip: Use libretech for roc-pc
 binding
Date: Thu, 19 Sep 2019 10:58:18 +0530
Message-Id: <20190919052822.10403-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222852_689070_C309CF28 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So, update the dt-bindings of ROC-PC with libretch notation
like other libretech computer boards does.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 110fcca1a94e..bb65a10e85ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -87,11 +87,6 @@ properties:
           - const: firefly,roc-rk3328-cc
           - const: rockchip,rk3328
 
-      - description: Firefly ROC-RK3399-PC
-        items:
-          - const: firefly,roc-rk3399-pc
-          - const: rockchip,rk3399
-
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
@@ -364,6 +359,12 @@ properties:
           - const: leez,p710
           - const: rockchip,rk3399
 
+      - description: Libre Computer Board ROC-RK3399-PC
+        items:
+          - const: libretech,roc-rk3399-pc
+          - const: firefly,roc-rk3399-pc
+          - const: rockchip,rk3399
+
       - description: Mecer Xtreme Mini S6
         items:
           - const: mecer,xms6
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
