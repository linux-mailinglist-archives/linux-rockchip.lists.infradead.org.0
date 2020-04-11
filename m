Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4891A5154
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 Apr 2020 14:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4JQonJPy4f7NMSt4enlONHrgi4jxCMFq2xSAtnjM+xs=; b=ZDq
	XyUszwJylLzgWVBPYoyq5kSoPfEbPWJs7PANgmRnrzNNrPpGJRfKn6LoLdjjadXKJNktb1F9nkO4I
	7cv5CKdxdz5C8gLbIDGZUJsmmodGN7XXy8Xx1wUDFPx7BCPOpgwb6jIXbpHSx7f6lOgXbwd2akD2q
	k4wI5SDvR0NCOfSn/ai9OpaBNyBN0owEqWsLmNQF+dpxWRLOr8tICqMwpEd0mBcU3wjlUq4RLSFog
	tD4awbTmkVrAd18tZD23dLAXCLTwBveeI5SUdcCUyeIIYS+sEoyVbuG7wZzJG+6w6QQxRTMT/7kyv
	jfdqexxu4ccrf8uMJh6i1Y92pXWCZ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNFCQ-00077d-Pb; Sat, 11 Apr 2020 12:25:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNFCH-00070K-Co; Sat, 11 Apr 2020 12:25:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id u13so4578685wrp.3;
 Sat, 11 Apr 2020 05:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PXnvbLdLrQw02Pv9aTraJTstO6BsBfshSbSvruk1AoI=;
 b=eVKtwmuP9eIdsk0DhszqFM/hq7WkqRqir5lOWmDDJZ+lZVcGXyuUuO/jOnjM8mDYM+
 SFYkcV9yi9yuUYTPhE2MftExFAECb2nT5xyY8TKHr7yD9lTPMjb9SlFwUnejhZ62EscA
 toWiRpCF6/OhwypaUSnWTJ+yLZk/kyKeRmg5ztC4/axZrd8Yhmid80PA+dDCmM3agaDM
 QTk01KBvlhT/6u15/u6/GDqWSNwWBAOGMk+R7SUs/3Ezir6yzC354SZFHsS16HbXG9e9
 X76vq9XIbqCmrPwdVP+Esd3xTNJDcxCkSGKb8ZJuVinoBP/X0GXyPmhZiWyRSzOEZV4o
 YBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PXnvbLdLrQw02Pv9aTraJTstO6BsBfshSbSvruk1AoI=;
 b=QGzJzXeN21aiGx0pMfwgWKdaJbFtN1meIH2ratSNbfdqMqxnAfgaEQdgCLFw+gtnRa
 WkwLvzAvj+tnQ4K6zCnLn+PmYKv+zogdp1VrqxbdvK1zQb1FUWt7ozxuzTLyGPnBTidW
 hNsNAaQykv5zJEntJRLkv6j1NLmBcI7ze6jBonxIrFiUIh/pQ5jyA5AD5yjooUkbOH93
 bWMSA+Z3CSDYdOJDBr2Xv0KcvP1WGLGFmOq1TL+aktTa9WdfIy0tpIGmlCCrGIo/V9j8
 BWscsB4VTBMqSz2L9I1BIYl3am/BVWuKO02vHETVfjsBtyh1E86o6UTKeKR08MWuF1uN
 004A==
X-Gm-Message-State: AGi0PuZVtwGI7lN7vX9ksdghNF34dw/vBVimhpV5oSXpSVtbX2zaoOx0
 3DbdsHcWcnk+AACG9d9jfiA=
X-Google-Smtp-Source: APiQypIdubht9dZYotoZNNgJZ0IsRf27uQmOuX3WrqdShZOIC5TejYPydYZrpUauBMUEpVWmYHWhbA==
X-Received: by 2002:adf:f9cc:: with SMTP id w12mr9762920wrr.148.1586607914276; 
 Sat, 11 Apr 2020 05:25:14 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v19sm675565wra.57.2020.04.11.05.25.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 Apr 2020 05:25:13 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4] dt-bindings: sram: convert rockchip-pmu-sram bindings to
 yaml
Date: Sat, 11 Apr 2020 14:25:07 +0200
Message-Id: <20200411122507.4040-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_052517_457152_D0DC5B6C 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Current dts files with 'rockchip-pmu-sram' compatible nodes
are now verified with sram.yaml, although the original
text document still exists. Merge rockchip-pmu-sram.txt
with sram.yaml by adding it as description with an example.
Make #address-cells, #size-cells and ranges optional
if there are no child nodes to prevent yaml warnings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v4:
  Make some properties optional

Changes v3:
  Document the compatible

Changed v2:
  Merge with sram.yaml
---
 .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 -------------
 Documentation/devicetree/bindings/sram/sram.yaml   | 26 +++++++++++++++++++---
 2 files changed, 23 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
deleted file mode 100644
index 6b42fda30..000000000
--- a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Rockchip SRAM for pmu:
-------------------------------
-
-The sram of pmu is used to store the function of resume from maskrom(the 1st
-level loader). This is a common use of the "pmu-sram" because it keeps power
-even in low power states in the system.
-
-Required node properties:
-- compatible : should be "rockchip,rk3288-pmu-sram"
-- reg : physical base address and the size of the registers window
-
-Example:
-	sram@ff720000 {
-		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
-		reg = <0xff720000 0x1000>;
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7b83cc6c9..f474fee47 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -29,6 +29,7 @@ properties:
       enum:
         - mmio-sram
         - atmel,sama5d2-securam
+        - rockchip,rk3288-pmu-sram
 
   reg:
     maxItems: 1
@@ -118,9 +119,18 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#address-cells"
-  - "#size-cells"
-  - ranges
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: rockchip,rk3288-pmu-sram
+
+else:
+  required:
+    - "#address-cells"
+    - "#size-cells"
+    - ranges
 
 additionalProperties: false
 
@@ -224,6 +234,16 @@ examples:
     };
 
   - |
+    // Rockchip's rk3288 SoC uses the sram of pmu to store the function of
+    // resume from maskrom(the 1st level loader). This is a common use of
+    // the "pmu-sram" because it keeps power even in low power states
+    // in the system.
+    sram@ff720000 {
+      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
+      reg = <0xff720000 0x1000>;
+    };
+
+  - |
     // Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
     // primary core (cpu0). Once the core gets powered up it checks if a magic
     // value is set at a specific location. If it is then the BROM will jump
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
