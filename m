Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D1E10542D
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 Nov 2019 15:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkg5RkAadFQ3Ll8yM85YXm0mCgJpVX5Zz+JtBcSpZ0E=; b=gr8o81Y9DhbGQB
	YHfXF/dGh53y6J7CRC0ciCrCAcyrbkKPBILZhW1QTuNPL/eGy+eNiJiIwr69URaujLRK67+CquKZf
	W9YHch/0T5HflcGftq3S9x4/4niiumo4xjquriEmdfzsH52Yr+YJpiVRgHTBsEQF4R3UshoFikEIf
	yWibbsNrYfBjL4g0iuQ3I48303P9mAvnwe84wvjA7m2gzNXNSn2ThXroDhbBJylHC3PCQEWrAn+A6
	wguYmWz0xQZg/7ZFdRpAVUOemHW1PLfjAwObyp0UWTDEGSW/3nURR2qmeQIeM9MvBpcIAW/hnPiWT
	ftHOVp/MrdKrmS3/9iYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnFO-0002FM-BY; Thu, 21 Nov 2019 14:15:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnEi-0001M2-Jv
 for linux-rockchip@lists.infradead.org; Thu, 21 Nov 2019 14:15:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id bb5so1633394plb.4
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2019 06:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGzksxC3NHCBGYXLvWDH+iGdDwwXfnJhqh1w+RnVanc=;
 b=XaZsFsA+H3APrLs4/4C1VvAbNkguZdBO0cdjt38HSm0TtTBuvIEVqdYMSLRc7qsUZ0
 TTkFJQsWWY0rJ9XwAhp65jWXiwEwp4JbDv3fWTOMD8bZoVuccJJ4kwlPMQxKbMT63fq/
 CDDC5M2TKZq2/h0rxvIiF2SM/UsQWvLHAUBN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGzksxC3NHCBGYXLvWDH+iGdDwwXfnJhqh1w+RnVanc=;
 b=g7sxJ2Io9NMlhprxVdjRVz3RqIizMjvgLJaUu3OqKMumhjsBXVWvEN/mDHttLsua7Q
 5pbywZIvFGMAbyvic4tsmRLWGRzYf1RHEcyG1puxJZCTk5Fih8njs+IsxO4OSiVXSQDz
 4UZkPRjBdQPEyFEOfYvIBiY1F5ZCcRBovwNvL8R5J9ePRuwzuqrtsLH26CleUOf3VGhn
 Iq3vNq5FI27IdM2yfHNzegG+RJBg354uGq0GxMol4lg+pUNd6JUlQC9c57MVGrBcZhAh
 346xYYszV2nk9jeg/IZo+yFvCaq7YmFhAyuwB5hWpPBla5Y/3ssH0NzgYAeb20cemkKy
 6DeQ==
X-Gm-Message-State: APjAAAUl/k/ElqF4yy4GC81F2o0HrzC8LtoCpH2gF96eb+u/j0quEYER
 NfigYSVlXbWJdlMpL4r2GDFKdg==
X-Google-Smtp-Source: APXvYqxpFu0QFdEqmYmMyXZkzw3516FXyoTT5uH4u8N5dkaFnOuJ8uIoxJBB06PvcglL3PV2cQ7eIQ==
X-Received: by 2002:a17:90a:380d:: with SMTP id
 w13mr11702168pjb.133.1574345707390; 
 Thu, 21 Nov 2019 06:15:07 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:06 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM
 binding
Date: Thu, 21 Nov 2019 19:44:41 +0530
Message-Id: <20191121141445.28712-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191121141445.28712-1-jagan@amarulasolutions.com>
References: <20191121141445.28712-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061508_659442_9051D009 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VMARC RK3399Pro SOM is a standard SMARC SOM design with
Rockchip RK3399Pro SoC, which is designed by Vamrs.

Since it is a standard SMARC design, it can be easily
mounted on the supporting Carrier board. Radxa has
suitable carrier board to mount and use it as a final
version board.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45728fd22af8..51aa458833a9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -526,4 +526,9 @@ properties:
         items:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
+
+      - description: Vamrs VMARC RK3399Pro SOM
+        items:
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
 ...
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
