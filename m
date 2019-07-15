Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A5E69ABD
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nFZe0uI9xx5c4imngJs0+GQiEO0R+8/gg+gL34kks8=; b=PFtXyftfglRaW2
	5cUdcgyAw5AD2AKP2rnZ0EEt8nWYJQ7SkPc4E9Pc4gmIkC0KLceSWROF1OQCc2TYD5Il/LgnN4T+u
	t+46Hxv6OP0sAvKNIWGIb4ZWIChGq/+20ziG1CRphNWQVnKzRqNydsz13Bd9gFWNs54YXWtMz4VzF
	UxG2IxztkxrRMFq3PrYZADrhkqm6LadRctBB61ns6BAgk1YLCOkIpvm0DZtce4fV6WO7o21kTazFf
	phPWgMHRV1Iz0ToDdyH1pqQj+CdZ/+oq0M+wJSQ5dKCquqCzi8WeBalkpMgqk/sj4m7G8iRBASEwC
	uRr0vcmL4KPI8gKyddkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5c4-0007IT-KW; Mon, 15 Jul 2019 18:22:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5by-0007Ei-G4
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:22:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so8111697pgm.3
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+faoSNUq7ISOuktRNgl+n22wUdzlRqNIPSMIAahM4n4=;
 b=VMMh2Wunj+aX3VCTm4SMsgskPv/cNnjL/TbxBJdEjgi0zV6gpPNO5rw6v1u+GEFn28
 J4bU1GYN1MfcEDoraCqlaun9nl0EvlTY6CCzViuBWZYwcbGLSxhAm50T/FhLDez9rVFc
 ezmj26zQlWovAJ0ekoUUlZRgr9gfX73fTjliE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+faoSNUq7ISOuktRNgl+n22wUdzlRqNIPSMIAahM4n4=;
 b=Vb5OXQHTu6OSotRrA2xFL7CczFxjTD9s9tDYRGIdnYwZlRxgPqwKOJ9IFg5pW6se3g
 ecggpm2fT5NRWDNn2YhMIF8Tx5+mjrTW0rRcSXK4vOw6rBSHQLBycJN1ITOqPjlLucAG
 wzBjMyRjeiMsupM/EmEjXbWFdUVo1jffKXyasNDtZu7PkFuXdgjmP+DMOlXmLiswaiuU
 HM6a/mCiHnq6/LqlGzOKkBmfDsF9cCsUtf4oRvnLOHyX/o89r/sU0bNvvusfVH000ViQ
 s5iEMOx5EE/yNAZOCrkP9Sb0lCXVR0kVtJpIlDKTxvoEFTobhP2ac0ih3SLzDnnW04df
 Tjwg==
X-Gm-Message-State: APjAAAWjany9RhdEkyVRI9H1+5gUsgHO5CR3dCoVEadb5Bf9v45hI5Lc
 8sMpgeO8lYgAslqrcFuoXGEaaQ==
X-Google-Smtp-Source: APXvYqxJSMat5G4zXZTkvsAqqGfsDF5eiIS72fqTxMSpTU4Fn7LN9fs4iaFm4P7YapnD6JJzi2gxJg==
X-Received: by 2002:a17:90a:b394:: with SMTP id
 e20mr30483168pjr.76.1563214925619; 
 Mon, 15 Jul 2019 11:22:05 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.22.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:22:05 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 13/15] arm: include: rockchip: Move dramtypes to common
 header
Date: Mon, 15 Jul 2019 23:51:08 +0530
Message-Id: <20190715182110.21336-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112206_553311_5388F99E 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 82ce3d3fc9..55abcdae77 100644
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
index 65c92cf744..471702f935 100644
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
