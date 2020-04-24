Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BB31B78F7
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 17:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qtAlYwQtjosG/fvezGahmcYVLykWrX+OJ+8bz5ZlofM=; b=cCL
	ktgZMux49Q54tNDjbo8yRysynsW+1t4aLm1XV0XAsI3aYFf3Mgh/OahqfOW1zRQC2pcJGUrhZdFcr
	2boY8oMYp70Tc8pnOs0W3mK6Tw6eY+vR7pABwZk6Sas3tH7JxE+xwDSEBy5ovWSzVaIwg++KgxedH
	3SvVpDKks6g7DUwR/IibhVJaBEJ+XHlIIloacAsvwf9CRGBnba6N1jR/znC4sjhrrBufQRUeetySK
	sQTLFo4NuiNNZSu6xrqcXKwiTSxYRlyTMPC+djfVWvOll1z0ppCnF2iYdtxoVznUVD4ZJCxoNy/UW
	bVHzVbhmqM2+XvpTOMdYhOupPsl/2Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzzD-0003DW-Gk; Fri, 24 Apr 2020 15:11:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzz2-00032u-EI; Fri, 24 Apr 2020 15:11:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so11215152wmh.0;
 Fri, 24 Apr 2020 08:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GSOYiwkqZKLb7y47h2QBV30Cg8CF5SiWC7cPuAELcE0=;
 b=XElZtWvWYfo+l3n7mMqN1xxPqug0hipNIvwZbiMvLDeqdtBuwB/R/6eVVvDvJxBgcO
 n+a23AuCg9C9WCRJyzvHwUZavxy47Fp07az0w1Kcn/xtsYYARq+oDFsMiZTSzhfnC5ig
 2AChAZhyFp+edQTpegElq6dzHnqWvbqtu+i5ZuOf/NYmxkNDTIyCNhAMt7L06VkCxMdS
 hWtnusjfCzjMpyUtFQuZR96Az07KImi9q8sgJi/2krbFS0lQMcOMClOTqwNFm5xxZX/V
 9IsR2fdCccxkXJprwt9cKc7QCxOd3g/sYqt0v+mn95AcIUCMeWFvl4KmBZFP9NCROubp
 Fzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GSOYiwkqZKLb7y47h2QBV30Cg8CF5SiWC7cPuAELcE0=;
 b=PEBd2ArDGNNI83YWe4N0GKK1pSbDXk2AMRLzl8SLBoR6G0W1VSCIdh5ACMBP/U5JK9
 B25Lninn05gcTu6bgYwhaB9ZyxFF3Bah104vAxeMyijO3ZuubNNfPefIroiAD/9B/Sbb
 mWeQA1VD85nt7OTal1CtQ8hT9qyJtoLVYk76wxZqLQYWKaC5kaJptVv9gAuujySuRGBe
 GJ/uTmlL2Akcgc1jcoxBdrhMkRGH4OybnM7LbXxlh0VJ7G4D7IZUgmap+rsCCjsw6Wju
 wR13kUeJ2PAEWDxe87euDjEXLbCXmIysy7n02k68YeLYj1D0X6dxO1uVyrGAwI0nMJvP
 nNHA==
X-Gm-Message-State: AGi0PuZenh11L0Us51dS2hqa5/Ng8qMfix83RJbiLejRKIIsQYtYiwtu
 9ziiIfQW1tvbCpEbNhGdqb8mwNvj
X-Google-Smtp-Source: APiQypLO0aRIuz+zgTRv7w4cBk8IwnBuB8JeO+edeOvmFEHyU5aHRBfNcBgiCNZ4D87S2qOgXE4Gdg==
X-Received: by 2002:a7b:c181:: with SMTP id y1mr11303273wmi.83.1587741074999; 
 Fri, 24 Apr 2020 08:11:14 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a125sm3215289wme.3.2020.04.24.08.11.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 08:11:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] include: dt-bindings: rockchip: mark RK_GPIO defines as
 deprecated
Date: Fri, 24 Apr 2020 17:11:05 +0200
Message-Id: <20200424151105.18736-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081116_478760_2B2EC784 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The defines RK_GPIO0, RK_GPIO1, RK_GPIO2, RK_GPIO3,
RK_GPIO4 and RK_GPIO6 are no longer used. Mark them as
"deprecated" to prevent that someone start using them again.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/pinctrl/rockchip.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
index 6d6bac1c2..e379ec110 100644
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -9,12 +9,12 @@
 #ifndef __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 #define __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 
-#define RK_GPIO0	0
-#define RK_GPIO1	1
-#define RK_GPIO2	2
-#define RK_GPIO3	3
-#define RK_GPIO4	4
-#define RK_GPIO6	6
+#define RK_GPIO0	0 /* deprecated */
+#define RK_GPIO1	1 /* deprecated */
+#define RK_GPIO2	2 /* deprecated */
+#define RK_GPIO3	3 /* deprecated */
+#define RK_GPIO4	4 /* deprecated */
+#define RK_GPIO6	6 /* deprecated */
 
 #define RK_PA0		0
 #define RK_PA1		1
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
