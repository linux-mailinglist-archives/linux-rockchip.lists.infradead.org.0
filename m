Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277829D5B5
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIxJDFw/eIf9mmoVLLKcOW2NdGMA7GmbYGuO4nm9Vdo=; b=jvkklVv3q0eE4J
	A8xklXTttcDSyOpY7GGFN2d+cqlrx09FdNx0hqDwuHG4qqq8wilfDTsDwrBXeIPwhP0s56qU3k+hR
	iciAs36dtp0u/RwSqY5E/xMHnk1Y3qnFtyUYvp0t5sO37o2CqV7WdxkmRwgRGnjjuzGR8UsNqEBLP
	7x6oYBUhB28tuDfKk3Hok8W5EHEFpkrFcebmLIXPe6OuU5xZDaoiW0DGIH6JQdofCUs9R/MUxULhZ
	wRl2ISWeaECCBxaQY/yI0+nKycJiiERQV2jXsTklAVBgwc9B34G0RxlRR/1AG5p7pr7RlctiNi68c
	1XSIc67dE77oJ3T5pcdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jch-0001h4-Vd; Mon, 26 Aug 2019 18:21:48 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcR-0001QH-Pc
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:33 +0000
Received: by mail-ot1-x341.google.com with SMTP id z17so16067145otk.13
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lMkAjW3GPc3JRQvbVP13XvU/Mvzd6g4b+EvCVNCUb6c=;
 b=ffu893tPRMd1kYBBeNyjkVHVyDMHakJwbHzBksPCXMkm9fxPM53fsB1W/oVCfyoodC
 4Thwpsw1ESVHdNAJ55ruM04azF+IWfXeCxwcZI8pBe4ss1x0kbezN1yjDwYAW4a0u5Ma
 tdU0YUlznjJdyAlepyAu+XjXaTie/3HeKsHV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lMkAjW3GPc3JRQvbVP13XvU/Mvzd6g4b+EvCVNCUb6c=;
 b=qm0NdFjoZG1JHBvvOzeEFGE0Xnj5eDwnSdBTtdvcBK2e3XQSZjABHlFmVXkSUEOFx3
 n1c3bZlulgmhCuIFYbMJGRX9NoXYlHgpprKFKgogCZEtlI5mIP75oi7ps9Ywi/rEMQoK
 zSX+55QQxmFy0uSANyHGiVi9I91v1fDXK1P0DtU2KxNLEfe5raHsJ+G5Yl8Y4KA1KE6+
 4aijOag2FWg3Iu+YpR5MUjOI3dalpy2MXuY8ENNs2BiqVPj1KhVeZ5fw2TH3Vd32cU2R
 63LOJmkyAI+ZBtWhFnVL170BkAOizKkv9oesIsIJ5I6COMyeRKsLdu+L6WTpYpCtH7y1
 JiAQ==
X-Gm-Message-State: APjAAAVkUCersr1l9BMK/GrT1jxMVpKGCxlcPLb+jtfFRtfeVrazXqXi
 zhNAH2F+DbsBc8vx71Pj+Dm0qQ==
X-Google-Smtp-Source: APXvYqza3wYDCQT0cTnJAhHpQL2uUJ0QVSC3S3y8Ldrf8OXWjm0E3kt5WlKGETM5Ip+68hoJBcfLDQ==
X-Received: by 2002:a9d:7c93:: with SMTP id q19mr15805419otn.343.1566843690728; 
 Mon, 26 Aug 2019 11:21:30 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 09/16] rockchip: dts: rk3399: Add u-boot,
 dm-pre-reloc for watchdog
Date: Mon, 26 Aug 2019 23:51:04 +0530
Message-Id: <20190826182111.30999-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112131_861600_7758F962 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot,dm-pre-reloc property for watchdog in rk3399-u-boot.dtsi
so-that SPL can access watchdog.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 2738a3889e..54286b585b 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -3,6 +3,12 @@
  * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
  */
 
+/ {
+	watchdog@ff848000 {
+		u-boot,dm-pre-reloc;
+	};
+};
+
 &pmu {
 	u-boot,dm-pre-reloc;
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
