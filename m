Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C911D9D1E
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 18:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gjDnLHi6A6O+MBhl8HT+72s7uMoXSm36HSSsn+FZtss=; b=Dqc
	XnULHMb1axfDJ/fZda6gsAEUE9r5OSxyk18a4wSAMl3zCvUTKmn5VpucZlHOnEpUsuBAoVaXQEbdx
	cnf53Al38m8tEvqFckUNRSY0IKQE+RKT3RLPpWEbJtu8llBUIwVkyxBjCOiM9CvnL6REXHOPb7fNJ
	JRPy5V3HGaYgvBDhyfKf5LdrGjVHhM+wMRK+JRvTzDnWpnH2VVm0OBBYIrEkshZv3tDxW9U7ZEudi
	rG8hhJWukCly0mHjuQwW8g4MTwpd3TSCygV2LN17PAHjhoRibA4vl3OQIk8p43E5tnH88oAcrNhYv
	HcrtiTu/+mNmWyD4YKmmechvPYDT2ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5MI-000090-HT; Tue, 19 May 2020 16:44:50 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5M7-0008R9-DK; Tue, 19 May 2020 16:44:40 +0000
Received: by mail-ej1-x641.google.com with SMTP id h21so12579792ejq.5;
 Tue, 19 May 2020 09:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=x55y7NheOCYCR/iiqhGsYzOg4DTF/y3LF/qDoYECs4o=;
 b=thnsfHkv0gxvjmBc79oOPNa2XSk/2n5KFV9FZB7tOa33jiWBZ1goEgBCBwUdrwZ3gj
 OTCkcHhoWCeQ1W2Nh125unX/RglfetrAr5DQQzJrz76pUhOC9BTlo31qcxY+eal1Z18J
 G+eb/Kbx8lFloEz4tj66j3zowbRjicyuqKcaX8cJzzKOgA2in0yampzsSdGccRslDYuP
 dTxIpS0YXYZjzpLBHS3iLdoE6X1YzfUIsLswsmaQdVOIOdl5adc78Sqbe53kVmau7Lmu
 Y0OCL23mG7KsKA9JSvccCLbb484dJ+fBfTRBO65FVFIQxgopISt+qn+kqokAxh66IZPV
 /hNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=x55y7NheOCYCR/iiqhGsYzOg4DTF/y3LF/qDoYECs4o=;
 b=A6TlmRxIhFR5eHHbmn9u7VA+u48tgim12lts6rSzZC/BCt70rCv+j9VEaeHiRn2/wf
 7Wa81do0iuufo+V5TfuMLnwbnCehuHBll7B1DPscw2QxfbpT7CP1drpJtms/jaMf3z+t
 fiCsXh+57843DjA0l6NYt2aqk5YrbNBmG3miSSieggRrLOry2IF14XYO4eLTfXJzA/3F
 W5e8iy7wRQv6NQjoORLaWh4Ve/KH/ZPHfp3/yIxdaPtxUK36mAFnTVxp4EMQOARL7KAs
 MBrhCgQ+xvmuyAoF/ehVGV2JVdkL6ChWpKTAKEFm+fwMbD93TUQze65LAshc0A8ztffa
 pQZg==
X-Gm-Message-State: AOAM531IGUPOKYJQQtyIPdRzv8PTKoT6DALZ4NwOuuvLilovjUdDKbmm
 J/E/p5DezbVoZP3/CCCgfhQ=
X-Google-Smtp-Source: ABdhPJzyeykMTQLiecg5AXfa/nUcuDFcwIRER9TYnQXDCL+XVixes/FbSGKEiL37/S3TIG69RrvBIw==
X-Received: by 2002:a17:906:f1cf:: with SMTP id
 gx15mr60051ejb.471.1589906677896; 
 Tue, 19 May 2020 09:44:37 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b3sm49627ejq.52.2020.05.19.09.44.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 09:44:37 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: gpu: arm,mali-utgard: add additional properties
Date: Tue, 19 May 2020 18:44:25 +0200
Message-Id: <20200519164425.9729-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_094439_463597_88F70E2B 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.1 DKIMWL_BL              DKIMwl.org - Blacklisted sender
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, maxime.ripard@free-electrons.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'assigned-clocks' and
'assigned-clock-rates' for some older Rockchip SoCs in 'gpu' nodes,
so add them to 'arm,mali-utgard.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index 4869258da..2fc97c544 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -95,6 +95,12 @@ properties:
       - const: bus
       - const: core
 
+  assigned-clocks:
+    maxItems: 1
+
+  assigned-clock-rates:
+    maxItems: 1
+
   memory-region: true
 
   mali-supply: true
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
