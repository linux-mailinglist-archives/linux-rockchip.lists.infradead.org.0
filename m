Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5225D47B46
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cgg2i2SewrzU4L1lnT8GTe5WrzeFrjNEj9pXn7hJa7k=; b=pzrpWOme8isyIq
	Iv8Os4nUCbGA4wXQ/MRUmNNu7K6cTwSusFioNYIXoPoNjf5YiFsifAqXPIadk/7nqZJ9DVb1T1s6A
	XPe/dRPONmJ5DHkCgsmNpdiuoz2ils7DQvauJHcSFSTeVKa5mla9yZk9Ygpb4v+jf5JHMBsMvjHV/
	aRpEAhTP+rIALUrlzOSQlKwHtwp3qGeth3FnVLNif+58dKV5PCeEfCbCh24Zs3d+DXrw0uBOG3STr
	bHpzJx81vmDcihOMsTTgS0zl1OogxFC/I6jav+2kkvfEAF1BNVx3EK7yz0yoeTPw6ruhSgCUXIOM8
	5Qd5CY8BoSpVf0EL/yKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmE7-00077B-0j; Mon, 17 Jun 2019 07:38:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDu-0006yn-PR
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so5199722pfl.3
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v5P/4YHXw0gIfvLdLMX6xTZe98YwM/ts5NJMilX95UU=;
 b=ZGQaU/Hhzn4hpRZMZBFqHhBkSEga7ZlfJ6egqUq5NjeJaFyAgi7CGvbebCCnjZMV9v
 wzeaIPP5mF+KIKDm8E7BJykguqe3yO2nI0Vie8uzGcap6j3TM2/yTN9Aew7zO6+UgKTj
 j2eqrRutvVoXBh6BspkuSwi4WHNO5fCMaXEp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v5P/4YHXw0gIfvLdLMX6xTZe98YwM/ts5NJMilX95UU=;
 b=M0YiF7fbelx0pManMEZDewwZNFiOjMq3MCHqeDClsG/1NkMCV/KXj2ZSO+AC19pawQ
 V75ekaxKJ5j4h7st7UuBhjQodP4sXZucoTBqHloL8wj+yy5rffr4Qth3CXMX52aONk3u
 INyQ2+roXf4ubicI84cDihEU5oPTDscb/Hat9Hk/2wG0tacfisdcz8DD/s2srvltKIi2
 AJZTRHzbuGUvAqVjibLU4TuoXcDP4WhIRavIv1KHRIiZQIAsKsZ8qPXo9wEiat++7izB
 9a6iI8a3aCvBm6KPikwolWWi9jIYVsSPB4JPvMIb7dYf1LFUxjHBjUXxrpYXUCFIFPJm
 wIGA==
X-Gm-Message-State: APjAAAWefY/o+acfefQ2R7Rez+4vTMPHgBcgLd4gWsx+Gqx5yY21JCob
 7TloEsbyTiHcLNz6+mXcXpgrbg==
X-Google-Smtp-Source: APXvYqz+7+hnvgksgWqJwF5wc2rEPH61peOTnlqVSsfz9xu6glnE+9nCIYtxHQesx4cvF9LblAMHZQ==
X-Received: by 2002:a17:90a:25af:: with SMTP id
 k44mr24167917pje.122.1560757118012; 
 Mon, 17 Jun 2019 00:38:38 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 41/99] arm: include: rockchip: Move dramtypes to common
 header
Date: Mon, 17 Jun 2019 13:01:54 +0530
Message-Id: <20190617073252.27810-42-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003838_859091_81B5AC5D 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

dramtype enum numbers as common across all dram controllers
in rockchip, so move the eneum values in common header.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/sdram.h        | 6 ------
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 8 ++++++++
 arch/arm/include/asm/arch-rockchip/sdram_rk322x.h | 7 -------
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 8 --------
 4 files changed, 8 insertions(+), 21 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram.h b/arch/arm/include/asm/arch-rockchip/sdram.h
index bbe425deb9..9220763fa7 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram.h
@@ -8,12 +8,6 @@
 #ifndef _ASM_ARCH_RK3288_SDRAM_H__
 #define _ASM_ARCH_RK3288_SDRAM_H__
 
-enum {
-	DDR3 = 3,
-	LPDDR3 = 6,
-	UNUSED = 0xFF,
-};
-
 struct rk3288_sdram_channel {
 	/*
 	 * bit width in address, eg:
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 6b75de5b6f..09f98bbf46 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -6,6 +6,14 @@
 #ifndef _ASM_ARCH_SDRAM_COMMON_H
 #define _ASM_ARCH_SDRAM_COMMON_H
 
+enum {
+	DDR3 = 0x3,
+	LPDDR2 = 0x5,
+	LPDDR3 = 0x6,
+	LPDDR4 = 0x7,
+	UNUSED = 0xFF
+};
+
 struct sdram_cap_info {
 	unsigned int rank;
 	/* dram column number, 0 means this channel is invalid */
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h b/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h
index d0091a7aaf..336c5d7e8c 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk322x.h
@@ -7,13 +7,6 @@
 
 #include <common.h>
 
-enum {
-	DDR3		= 3,
-	LPDDR2		= 5,
-	LPDDR3		= 6,
-	UNUSED		= 0xFF,
-};
-
 struct rk322x_sdram_channel {
 	/*
 	 * bit width in address, eg:
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 6258c811f5..dc65ae7924 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -6,14 +6,6 @@
 #ifndef _ASM_ARCH_SDRAM_RK3399_H
 #define _ASM_ARCH_SDRAM_RK3399_H
 
-enum {
-	DDR3 = 0x3,
-	LPDDR2 = 0x5,
-	LPDDR3 = 0x6,
-	LPDDR4 = 0x7,
-	UNUSED = 0xFF
-};
-
 struct rk3399_ddr_pctl_regs {
 	u32 denali_ctl[332];
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
