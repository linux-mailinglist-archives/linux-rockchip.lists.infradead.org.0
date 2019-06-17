Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BE147B52
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlQEbnLONhyr/GB2CYERtksHvm7NKlpILXfNHUywjp8=; b=NJ2ib54QQ0s3b2
	ZBAI7oT8jH4xibXWbM1jbATlnxEatlpelpY4MAJqtznP91vwV2LvaAVvYb0i4o5FNKangLKKxBHiI
	8cdnGyINjkjtKQJCWZE1a8wCN2uvjED0o8ab74ocPdOV6x/JP2VZp/aqO3GNJ5eNUYsoou6J0varX
	+9D/ss9vnw5e92UvHPAWlKPR2pICa4OCCoFREg8K4IQ/k37OqnnRCXCpQz9xvvGx5f4ivXx+Xw9iD
	LokREZdvCkHKysTG1jpMRy18RAEKKuqZGvuRt6XvQJpgElNbu6RbxP0zDDPxLBFWpziV7HngbjqaM
	9gQ4DfaBRtndZpgEwE0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEd-0007mD-HE; Mon, 17 Jun 2019 07:39:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEY-0007jV-Em
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so139808pls.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wTBXweD1R6wZJRqFVMEPyWutx8ndp9xyM4VkgFPZiDk=;
 b=bjWeC+btU0P5V7Q3FeuAtidVxql82ubiB/K52WbCi6vx5XFp1Trn7CvQAdM+ho4qmk
 ni7uZf1rU6YmQxL/YOi5xnC/++9eGavUS5rQzmuzEXuqc3v0BEhSmbEjK02KZOBhtxd2
 7O6ArN7saUGObRhsKVZY+XYP+QuIunbxg7AJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wTBXweD1R6wZJRqFVMEPyWutx8ndp9xyM4VkgFPZiDk=;
 b=WO+1TwznxpYDAGeWKaSBzg/Idkec+Z5klK69GqN1Uwtv+eghE3LKhgFSr7AO0VwGCj
 5jHgQh7X5GqfO9asO34rKaisfds2NnU28btGaP83E53BnSg5VslDVxIyDzksbc1MG80o
 fNeiNYQKxEFh8dvqGl52wlEbVbzs18CtIFNDtz9zk6MGxKWJNbIdvJOZDaD76pvTzGfr
 3+Djx8xkFFnz9kNKf3mdcKqt8TIXcFQECsdSZDqO1z+cpg6amrpjnMyeQTXLNG9TL9wl
 LDwEksUK0ZghxzAzfZTNJMeWAFLXIZ5mmUvEX4s2pOewN8tZrmdDs7JyTVWoKJieWXO0
 tBNw==
X-Gm-Message-State: APjAAAUesut05TEhJVh1QL4CPvGYZlKL3jl8O9lqGBGsXxzVAv8ahLje
 M+E1H9uByzqKBhZDa+In6WgR2g==
X-Google-Smtp-Source: APXvYqxXdxV2XHfG6/kv3MeMhDH0PeGUro9YC3C3ifEfo9FUIWKh1PwNHM3EtcO2cOLdLAYRB8IxEA==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr69995607pld.16.1560757157979; 
 Mon, 17 Jun 2019 00:39:17 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 53/99] rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866
 dtsi
Date: Mon, 17 Jun 2019 13:02:06 +0530
Message-Id: <20190617073252.27810-54-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003918_532378_8D44BFE9 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use DDR3-1866 2GB ddr timings dtsi for 1GB NanoPi Neo4 board.

Since sdram rk3399 support dynamic stride and rank detection it
can able to detect 1GB ddr eventough the timings are meant for
dual channel, 2GB size.

Bootchain after and before this change are:

 TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

This certainly fix the second channel data training initialization
since we have dynamic rank, stride where second channel capabilities
are clear or memset to 0.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
index 7d22528f49..eb0aca4758 100644
--- a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
@@ -4,3 +4,4 @@
  */
 
 #include "rk3399-nanopi4-u-boot.dtsi"
+#include "rk3399-sdram-ddr3-1866.dtsi"
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
