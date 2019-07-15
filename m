Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1986869ABB
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mlAKAkthMy/2cpOKi3lKAMh0ETkVmhcLIsV1WgZzNPg=; b=goLfuCEO/hLKpy
	hBfgJ1yZyyb6NT2T2H9iQ1wme4WW0Dnj+lz1SgUtw3wlxTRYF3vnjf8HewbNNzFhjhtdPoW04AzJB
	3uJ4Njx/nALITjluK0ovBweGm1jFjDLl3Jysgxn3U54zB1DLq2ZXBiwjbXu023CSx1lwmF7sOaEeT
	nU7fM6NnNX29cqzMeh0WyXjKag+UV7TC1KU0WlDc29gKnKZS007Rktrv5KQsT3yBGAXySaknilR9B
	+WysQm2kgzaoYMDXMU4NsWb/mTPBit6LFQLb9JYMG2WiRxe1QpklYjwzfSXxhZWJeMwFBwh0E/QAz
	40jSEzGcCxdAWBmTWjDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5by-0007E0-QE; Mon, 15 Jul 2019 18:22:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bu-0007Bc-S5
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:22:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id z75so8107426pgz.5
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GhyKwnagao9aNVYww6EAzysFAFTMSOWzSUv3cqsoz+w=;
 b=C9ix2b+usD/uJTj3mLKENkV66reAjn8KALmaP66tts0mfQ8RgGnjdxaASTWD9V6xwO
 h2fPl/Co/ZVFyslJ5h1vCrxFMi0xcSLyCS2klrcwnavKQa+H8PmHn40X65Pd+pzuN4KK
 PotvAS0Vzx98OuX/96ZOMRBBkagUYK1/FNwVg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GhyKwnagao9aNVYww6EAzysFAFTMSOWzSUv3cqsoz+w=;
 b=OcpsOGLOKE7ozU18/5pmGUHVZJ5w5A18DR9lnniCPoJsmNWTcd034FHnkG6U6WRiZt
 +MeXTabC3jGOMtpGyVEJTx6ZH4YDgt2wJCjEj59e+vfP290MMqZUURpZqSd+8437eBZP
 6BikZK+LPwRt8nDomnlDl30FQL4a59F3opZbSk6h73YG3QmiFXZWUklAe8fu32DibCZZ
 7g6AEX+OlCLWC6ggUtyiOOeOBrXXtw2OUjPz8jgwxigD53ddfoD7ik4/lpbwdn7RK+4N
 YV+qo6i65UdgRd5ogWHMXarE0EMurikgnAuKUPpNJviQQcz/BEz5K9gNaJ4TkFVaRBXv
 +tnw==
X-Gm-Message-State: APjAAAWFM53DSFsliXpThNSeaSDaarfAYnYnf714x7BuOY5WHyK0sVvE
 xd3mszpjeqVRFIW8BTLIjp8yjA==
X-Google-Smtp-Source: APXvYqzFqPeuSDFERMr4ldoYF7yUtszt8ei5/RN8fQe4tjNLqoi+OfrTDU6ppJB8JXaPezA6DRfgCw==
X-Received: by 2002:a17:90a:db42:: with SMTP id
 u2mr30907608pjx.48.1563214922319; 
 Mon, 15 Jul 2019 11:22:02 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:22:01 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 12/15] ram: rk3399: Move common sdram structures in common
 header
Date: Mon, 15 Jul 2019 23:51:07 +0530
Message-Id: <20190715182110.21336-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112202_920612_FDEEE2B7 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Move common sdram structures like sdram_cap_info, sdram_base_params
into sdram_common header, this would help to reuse the same
from another controllers like px30.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  | 29 +++++++++++++++++++
 .../include/asm/arch-rockchip/sdram_rk3399.h  | 28 ------------------
 2 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 671c318d50..82ce3d3fc9 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -5,6 +5,35 @@
 
 #ifndef _ASM_ARCH_SDRAM_COMMON_H
 #define _ASM_ARCH_SDRAM_COMMON_H
+
+struct sdram_cap_info {
+	unsigned int rank;
+	/* dram column number, 0 means this channel is invalid */
+	unsigned int col;
+	/* dram bank number, 3:8bank, 2:4bank */
+	unsigned int bk;
+	/* channel buswidth, 2:32bit, 1:16bit, 0:8bit */
+	unsigned int bw;
+	/* die buswidth, 2:32bit, 1:16bit, 0:8bit */
+	unsigned int dbw;
+	/*
+	 * row_3_4 = 1: 6Gb or 12Gb die
+	 * row_3_4 = 0: normal die, power of 2
+	 */
+	unsigned int row_3_4;
+	unsigned int cs0_row;
+	unsigned int cs1_row;
+	unsigned int ddrconfig;
+};
+
+struct sdram_base_params {
+	unsigned int ddr_freq;
+	unsigned int dramtype;
+	unsigned int num_channels;
+	unsigned int stride;
+	unsigned int odt;
+};
+
 /*
  * sys_reg bitfield struct
  * [31]		row_3_4_ch1
diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 5614b94ecb..65c92cf744 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -71,39 +71,11 @@ struct rk3399_ddr_cic_regs {
 /* DENALI_CTL_274 */
 #define MEM_RST_VALID	1
 
-struct sdram_cap_info {
-	unsigned int rank;
-	/* dram column number, 0 means this channel is invalid */
-	unsigned int col;
-	/* dram bank number, 3:8bank, 2:4bank */
-	unsigned int bk;
-	/* channel buswidth, 2:32bit, 1:16bit, 0:8bit */
-	unsigned int bw;
-	/* die buswidth, 2:32bit, 1:16bit, 0:8bit */
-	unsigned int dbw;
-	/*
-	 * row_3_4 = 1: 6Gb or 12Gb die
-	 * row_3_4 = 0: normal die, power of 2
-	 */
-	unsigned int row_3_4;
-	unsigned int cs0_row;
-	unsigned int cs1_row;
-	unsigned int ddrconfig;
-};
-
 struct rk3399_sdram_channel {
 	struct sdram_cap_info cap_info;
 	struct rk3399_msch_timings noc_timings;
 };
 
-struct sdram_base_params {
-	unsigned int ddr_freq;
-	unsigned int dramtype;
-	unsigned int num_channels;
-	unsigned int stride;
-	unsigned int odt;
-};
-
 struct rk3399_sdram_params {
 	struct rk3399_sdram_channel ch[2];
 	struct sdram_base_params base;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
