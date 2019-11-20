Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8D51038F1
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 12:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35HMbZz65yIgIMk6ofOMVTubKPV9hzgasC9EMH2eoJw=; b=AxIbUk2BjQbtCL
	7JrBO+jP9xTCCaFQH9MqjBjvuN7eH+Pb1an2KIQdeSqjT1T3IGLYc0h4UFiV0KxIqw3xuAawA1hOy
	sLWUmgup+gSy/QZlsa/+lSowjriOFzmBHbJhPPm7SxM1b2sLaFiZ48l6cZrrr1e/ediCSEfzo6OSX
	cj4VqGbseLsLDIXwMAFE4y3+I28S6kPvjAjaMWylT/sJZ6WmcfNs5LhEjf68LMAsM4mUkG4VBuOEK
	8XjbkZyYhLqHmtrnhM712Jh0L9NNyDHYLgK9SRsnirZe2SIzPWbbOncT561ArnAFZUUI/sZcGkNo0
	2ngcs1IzCx0YaBdmtOvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOMq-0003Tc-SA; Wed, 20 Nov 2019 11:41:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOM9-0002tb-6G
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 11:41:10 +0000
Received: by mail-pl1-x641.google.com with SMTP id az9so13702190plb.11
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 03:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xa375NGyNLSVnAvUIhiexdZMHOh3jJr15Iilt7lsROI=;
 b=br9zeWUDYiYk6Bp4Q3ti8c8xmEnL2VphTTq3kUzwTmCugAMDslZGGCegVcP/lF5cS4
 Mj3jiArvXS0+ppM7ifUaogwgsY2W1Y2/AHlZaZGkr32mY1I6foTkauKWjQGT1F+Bu53t
 5Vh3BZgvvrWEkI4HzzZdpZ5AIVvx73SIUXMVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xa375NGyNLSVnAvUIhiexdZMHOh3jJr15Iilt7lsROI=;
 b=JhoHimwFv+M8beYtQIc3/asOUO21qdeMHcnFb1HmAAC24Bcd/kvTiGft4Eq/NpLvoL
 4J0ooFZuThLkPXnWKDmKIsMqDZ0Qw+M6r7OrlYCfibLy6J3f4XVoqnsf/EGc++QH3/vj
 uXmafGIW1++NEI14i4DLb290ceWqK8iVUWSWN1r3dmPgZEzLYvTdu5zLC938tKvikQpp
 rqO2uu+MpRrj1+mEglAzhdkrPV2sNfD77Wu1+zHIqWlUk81wpO7DMSKjhhdbK0oFbAyf
 Z2ve8EfA4Df76FOYRI4VM2slKu2EfTLAnJJcK9KxVm2jolzJeDFKqmdi900XoyIQwarw
 oCMA==
X-Gm-Message-State: APjAAAUFAIzJMudvqFLhsp7qCDdg/46nRXP70gN11gFGmiZWPCIyvgxq
 hJYMDd1pi+A6VuQgaxWKCD5yIg==
X-Google-Smtp-Source: APXvYqx7Lv1/ePIi9JWMgF5xDVKBWDF1PPS99Tf2BlcWR98xDepPj+Num/8WUU4ze3qL6xGCcEZiSw==
X-Received: by 2002:a17:902:6807:: with SMTP id
 h7mr2384938plk.230.1574250068020; 
 Wed, 20 Nov 2019 03:41:08 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:41:07 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/5] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Date: Wed, 20 Nov 2019 17:09:21 +0530
Message-Id: <20191120113923.11685-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034109_279274_4A5E466F 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3399Pro SOM need to mount on top of carrier board
for making Rock PI N10 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51aa458833a9..63d34520c72f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -423,6 +423,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa Rock Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: rockchip,rk3399pro
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
