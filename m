Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055771FEF5D
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 12:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mT/TUlddo9UZ62ssCMKcYkhjjdtiHWg/3S6t9JCLxAE=; b=fbjt/cgfpCPRrK
	fECyJPUCVLo2XqQDJ/EgdGKBNDDCy+3mxWr1yLTlNdoxzzLr7ulHyJ+tRn5yDxrsl6oDmSUG3X4k+
	GlSAHa1caGfRY/pAv20zeApnSOi9p3JDGveyiQs/tioPRZQz5AwwL9Kb/HzF8Xf6y2tKKuj3aO+s8
	4sPLvbW+UV+6FUmKf1UhLzvqmlBSvTnj858Kn2x3CAs31diKLENX1AZLjAnqkFTw5DLuQY1JzzTt3
	liLjp57dUo9m7SoWAejVCzcAWTXAh6OPueZdIA9V8dThHBnbrJVyH8oIZhBrDLunw3MYBbfOWS1ao
	jO6ko++uTJwBqXjEjb4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrUW-0000V6-JE; Thu, 18 Jun 2020 10:09:52 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrTf-000896-El
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 10:09:01 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ne5so2318779pjb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 03:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tg/Hm1A2t+lsaJur4AOo5t83FkcPA6mYe4DsoUQP1Mg=;
 b=fAQvbqBHcgo8Q8qpa2FuXBYTJR3XAC4kMacXW4eiiO19pCNQCy+KFvZvhq8qyR4ORb
 rKAGyxGdy1ZsbfKWmv8u1I+NMqbCNXXbD3Z94kUcuhJ+nLSHE7myXyQ5q24+AoAvvZGJ
 5NyL50/gO71s8/dk4lAl2Lx7VhwAjRlW0eH0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tg/Hm1A2t+lsaJur4AOo5t83FkcPA6mYe4DsoUQP1Mg=;
 b=AgVTn3Rt4aDCB3jcS6rHfPpLnew7Iu+UZXS8yRXojVcbINcpEa3PYKewXOaKGRQV//
 5ylBhe63kF7QYrnPKQtrHFLjJut42Y65PAuNzcR9Y8j/sCuXVjh1ztiSkYKgZV0XTxRS
 p8PJYTxRZjDBrUUYQOmew9Rw8MKceXUpMnlL3rFfydQjUATQ3wBr5uSVg1HZiYsJivqD
 4kL/qPQJrBuJJvWRE5GXdF5pUu/ZSYajJ/eRIRCzlTWa6DShZbRXG3nRcES40UCd3kPY
 YnWAAAcPpxJcVDIMfrH9LIy7ia2NqvrqS9f6KaR+FdR5pgPjD/Bgv+udYIrcz661UAjv
 qiNQ==
X-Gm-Message-State: AOAM530ybV02nPtkFdzaLe+XtrSrw0seZ2tscP61l+zEp3Bnowi0Dc5/
 WnCfN0aqBALzwh8EIGyyp0AhrA==
X-Google-Smtp-Source: ABdhPJyCE56MacJy+rzWLhSlQ5DQWsr/6CsvbeyHuLNduw/AkcYxXxf6DUZG3PzMtdzHx0vZ9GTF+g==
X-Received: by 2002:a17:90a:224a:: with SMTP id
 c68mr3243563pje.21.1592474938662; 
 Thu, 18 Jun 2020 03:08:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id o16sm2190793pgg.57.2020.06.18.03.08.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:08:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Rock Pi N8 binding
Date: Thu, 18 Jun 2020 15:38:30 +0530
Message-Id: <20200618100832.94202-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618100832.94202-1-jagan@amarulasolutions.com>
References: <20200618100832.94202-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_030859_518176_CC992010 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier
board for making Rock PI N8 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d4a4045092df..db2e35796795 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -435,6 +435,12 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi N8
+        items:
+          - const: radxa,rockpi-n8
+          - const: vamrs,rk3288-vmarc-som
+          - const: rockchip,rk3288
+
       - description: Radxa ROCK Pi N10
         items:
           - const: radxa,rockpi-n10
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
