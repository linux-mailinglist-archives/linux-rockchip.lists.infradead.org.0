Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138C43CF9F
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAeP1+wF2rf8vwakDfwJq4sM+LHdIRv5W9Hk35VSlMk=; b=mtmcyvPUB/3GYw
	pdcoGbnJ+1w3g6WzaKvu7MGWW0dBvKFURhtX5JpekF0srqvTKZjfgbI9imbgUOEoWN4aeM+Kl7la1
	Jl/T8a1Y2DBqyBLNtFT3gyvgC3sPlvHxgi7BcTCE+U2XkvibKegvbhS6F1L/mccufxvqQSYNC4eim
	Js5w2jy69jd8TbEQ/dLQtJJ9Ycn09shB8CIpmxXV+0EHa1aqmC7asNW9WNWBqRFbGnJ1h4loTvLDe
	KB7ROpNmpa8koxtiEWENfCFKazM6Q34uRCu1/xqnbUIiWgFs5Nj/xaEip02aH2PCMOh6+A3tqMNj1
	GW4HiKLmfmdHTX6NaABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAW-0005Ub-4Q; Tue, 11 Jun 2019 14:54:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAS-0005Tq-Ay
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so4511986pgh.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zGqlfcSM+PyMIHvCMZaov9KVZepmoklQxHnfRiiVIM4=;
 b=GgWaehYIXEVnHf+onP1eWkVVJD/azH1xra86e4FCv43+yeI6EsFOYLnSHnLS1RWZXu
 PILeIXjx0ZRaIl9UloWgAaKKxHeDGvO1XoIFziPh40tYHVHcJNqlR9dD1Sgxam2pSTj/
 L45HLbWC7+MUgSwg2yUd/EhpKk5QLi+ct9Uis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zGqlfcSM+PyMIHvCMZaov9KVZepmoklQxHnfRiiVIM4=;
 b=dra1Mp2h/yy296KAy1cIDj5yR03qvgYb8MjKRhYxwoXcqRnUOJZ3el8e+Sg2wpHwQ6
 gtIsm5BaEuEglW8rn9gGCQr9bvnHE7VIW5uXc+UuX9FAmLK4ebkikbYJI7ogqPpfambZ
 NmCAk6iVwFOVP+TKm356l1/pzVE+3EkeeoIoKEcSKYiNIywEi9Yi8tIuN7Z06Dy+Cfif
 lC8IJffcUIa+ljVj4itdHjv1p9jVH2ht3sLWmLMUusBlRm/z0ajsMBzJfYztAXVchdBj
 nRmTM/no5dRxCNHGHhMuuukuNKL0wWpOb9WUUIEiBNwtBZ8Iv/GCYZhkPTa8KYFwolxv
 kUJg==
X-Gm-Message-State: APjAAAXA+c4MDuWQR+ArrQhmHx7UpNcbN06t1uXsPPf1k3NMWzJxTArB
 v7TIMMb6lbhZ1GndaVNDaKe3gg==
X-Google-Smtp-Source: APXvYqwbyeqf4C5DwALyoGnp02DaFzF3wGeFJd/PkEOnKpvRaq1rukS9NXxRActPfV6SR6W8Y+ShUQ==
X-Received: by 2002:a62:fb0a:: with SMTP id x10mr58141116pfm.224.1560264871798; 
 Tue, 11 Jun 2019 07:54:31 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 40/92] arm: include: rockchip: Move dramtypes to common header
Date: Tue, 11 Jun 2019 20:20:43 +0530
Message-Id: <20190611145135.21399-41-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075432_382885_FEEA4F0F 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
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
index 200551fac5..e0a94f81a4 100644
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
