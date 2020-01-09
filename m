Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEDA13606C
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQRuc/0WPtACaOCH0dZpRe0O9Yep0g2SIHfVe0BMNbo=; b=kz22uSK1aFUS2B
	gR0MXKr1PxAoldMMGZi6S3UHawFRQK1S6Q6l47kOkOw7XnrBeB3rcEfEeLcB5aUJTErgzj3O+NeRy
	XDP5aF4uJRr6YCAwjgUjacW+Lx7CvO+NVwUIkLq/+RfLvozQm8KDQy+CrLqP4ZRlPWrENvhrnhxP0
	C5I7TAjhCOJbC5q7pOFAkuEi1sdJiiQQBk2jGDftIqEPF0+mI46Zj6AFdy8Ocl2S3qub0gsDkqccq
	u1KDBxD3w6rx32BFKfDCgNxl4wYlo/pdKzasJAG/VKNISDghBkHr/sKC22qDdnIpa/OFrXvAhXXnL
	YTgYi+7ZvJiY/m7xPAIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcr1-00030N-Cx; Thu, 09 Jan 2020 18:48:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcqw-0002vp-VF
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:48:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id x7so3615045pgl.11
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ohtCegxGTC6Cqe4V14RfDztSgq/DwnKYmeUpgrodjx4=;
 b=YH6eV3eCDtnsHKmePAzRqe3RQsvPnizhVNvcWdjktOnGpGxH4BAeL3txaetnNsYdky
 z+T2RR/xrZLWofAFTm6k/CrV6OTAWxRrfJJ19YlPZchL0yxPJsaYUQi/fnLaZjxz57u4
 7Vjldo3IZqS/7DtauzKRakDF2yH17MImwn/bk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ohtCegxGTC6Cqe4V14RfDztSgq/DwnKYmeUpgrodjx4=;
 b=Z9pwksd7gb5d5bJrinUyvcwd+Z1BtphzDYbDMBs2XeH+9BNRbS810vQ5s/PtNZKrkF
 X7x+NgLu0mcktLV9CkDkvX0bOm/8WwE+aKw3N0Eob4G6HqD4ceGPKZWspU/ndS9J8q3S
 74ZCecte9HBbNTuu0Yu1cx+u39Nipqg4diIp+1aFCeeBX5sCk7BG+aeE9kM7utXDlhpi
 w3udgCLAi0SVEPJYFzOtWUS97xq6ifhghR1iJgaZAJX7zl6Di6SODXnjVD7k9oFbN5g5
 hWiR0sGG4//Uy4TKq5+ORhRrh/DK1Vq77zwg1qH1bImfydFLJHuC87F3aM3haagBB+zh
 iMVQ==
X-Gm-Message-State: APjAAAXVlOog5DzUagifQd38puTNk+dje+Sq38f1khp4zspmMT47Wjpl
 VBnGf0SDfZLOdaEebrbe70eGOA==
X-Google-Smtp-Source: APXvYqxRFGs4yozuVbdMQ9qGzD8SKZnYZxyPBrekHt8IsGLUMZIWVQvWESICQZFhVkb40Yk7hKRErw==
X-Received: by 2002:a63:213:: with SMTP id 19mr13075880pgc.160.1578595698338; 
 Thu, 09 Jan 2020 10:48:18 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.48.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:48:17 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 4/7] arm: dts: rk3036: Add rk3036-u-boot.dtsi
Date: Fri, 10 Jan 2020 00:16:19 +0530
Message-Id: <20200109184622.3098-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104819_020998_2EFD1340 
X-CRM114-Status: GOOD (  10.45  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add U-Boot specific dtsi file for rk3036 SoC. This
would help to add U-Boot specific dts nodes, properties
which are common across rk3036.

Right now, the file is empty, will add required changes
in future patches.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 arch/arm/dts/rk3036-sdk-u-boot.dtsi | 2 ++
 arch/arm/dts/rk3036-u-boot.dtsi     | 4 ++++
 2 files changed, 6 insertions(+)
 create mode 100644 arch/arm/dts/rk3036-u-boot.dtsi

diff --git a/arch/arm/dts/rk3036-sdk-u-boot.dtsi b/arch/arm/dts/rk3036-sdk-u-boot.dtsi
index 6f15f4a8ec..754800c6e6 100644
--- a/arch/arm/dts/rk3036-sdk-u-boot.dtsi
+++ b/arch/arm/dts/rk3036-sdk-u-boot.dtsi
@@ -1,3 +1,5 @@
+#include "rk3036-u-boot.dtsi"
+
 &uart2 {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3036-u-boot.dtsi b/arch/arm/dts/rk3036-u-boot.dtsi
new file mode 100644
index 0000000000..1e7d079315
--- /dev/null
+++ b/arch/arm/dts/rk3036-u-boot.dtsi
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
