Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790D347B45
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODDtx4L/iiA37kdiEvy2RLYBItO7LoGQ+9IkFTTLVdU=; b=pOjDnBUrmSAgTx
	7tNEQFT18nPpiappOJOnMlA/cuYlRRwAxLfm07RuKA+RYzgfjwXJArzwBmwdn5grBmzE7e8iJON8k
	DOXPSBCG+BTNWsJhe883M8bPMzIDJmwcb1pjzU/bWyMJQotlx0UTgA+QR0AbqcNdyRVt9u+o0DGNb
	1nTQvII+VqWlyhsgBFLZvPu1Pm+HNik9sSPNK9xF4f5OgyivgDXKFUoSFVyK+dU0T7IPTero263LF
	3U9eG8Uji2hGMZXNQl6v1Mme5qrTZV/zHOJZ0gUR1bDe6RUiWHqXGreIP7YfeW5gyZMRfyw0dn58q
	MihDBbP5dS8ejHeE3Wdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmE1-000730-I0; Mon, 17 Jun 2019 07:38:45 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDr-0006re-AM
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so5178571pfq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4Ewyx091h4mRyHoH8WvRSO8OxAFw/6D2YuRsHsf9WzM=;
 b=ixJswn5KNm55yB0GUICYg/UaMczTWKJOP9We5MfqBsAVIRU+1HAoA2/PGDeHa0hXyA
 PUdPfZQotgTcL+F1ct0nfVuoJoDeQXjymtNOUSamr10yVokB+YtI7QTF8EVCk8gVq90U
 ItAlSKJV2JxOGRXh/lN0L6+lUkbKxIwWryviQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4Ewyx091h4mRyHoH8WvRSO8OxAFw/6D2YuRsHsf9WzM=;
 b=YzTT2U/mDiRUINcDqLmFOyG3rU0EM8VFfgNMaqaik2S7qvLx0zNAB1uPTqhwMvGEA+
 63cySzW1kCkdxpNr44EfU87faBDdFo1UcANNxHZCVbDfwqJBjADWbotWpmuqs1MbXGow
 LkQK5Jvi7ymxU+s65Ivdr1nl4DuVN4/2Hcy5TgHxStW3jUHl8r0yU2+qRcx4Jd8qujLe
 UV6lEmywpn7fikAkIC3YjCZikFypJlP9GrAOqznZZY8rqRHa2+ppC3b9Muc9T1EJ/bjq
 2KXc5sd0IIFt4Kd6TjmKF9WC62gG4Hhkd3z55cQyjMrFpjoB9L1e1ieqanPJqdXwyYUq
 I+KQ==
X-Gm-Message-State: APjAAAX9aQvegC1bwPCyREVNyc/LIwthEmeh15/BhzPltrZBO1RtC8N1
 3hIe4D0phsJyEIeDEpuiBQy9kw==
X-Google-Smtp-Source: APXvYqwKnFwAUpGH9fdzdF0TJPLuOgVcZI+mK5wmLZ0D58DqmNczAZDFmX7BSDNvX9X7ZkmjpgX80A==
X-Received: by 2002:a17:90a:bf08:: with SMTP id
 c8mr24822533pjs.75.1560757114714; 
 Mon, 17 Jun 2019 00:38:34 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 40/99] ram: rk3399: Move common sdram structures in common
 header
Date: Mon, 17 Jun 2019 13:01:53 +0530
Message-Id: <20190617073252.27810-41-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003835_368169_DAF6F33B 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Move common sdram structures like sdram_cap_info, sdram_base_params
into sdram_common header, this would help to reuse the same
from another controllers like px30.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  | 29 +++++++++++++++++++
 .../include/asm/arch-rockchip/sdram_rk3399.h  | 28 ------------------
 2 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 0eb068dcc0..6b75de5b6f 100644
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
index fe25446cab..6258c811f5 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -96,39 +96,11 @@ struct rk3399_ddr_cic_regs {
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
