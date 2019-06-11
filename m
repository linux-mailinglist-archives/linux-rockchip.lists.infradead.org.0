Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9F93CFA0
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWp2vmwbHBXKRfUMMjUhMDSzswbiuAyjwF4JQS+dI48=; b=o6SySvybXpJ6oV
	+f4kVuMlAW+p5vqVb2jRe065sBSpay/WvuuXpgWPtf3Q/QgAOGSfJwmMxj0BEsVNYFLJjQkvTuOH8
	baAZLPw/IQrtT1rayVqOB8ENzDLmWTCmh7aDo8yl7tVUQFfJuJW6vcLuqNylw+Oj/NHWtJ0rjX9GN
	kpE6YkmHKXUrSjHibzAltCnX95v/vwI93xaPcrfy3qljcMLLIUIipIFjRVsmsSfhVgrEE3trosYAU
	jIB32YQnTooSwaxnWPQq8oaZN8RpYZa6G4mA0N1+nHVg3bcJHWDaPPMudYa8p4gmvrdHyYZmGWNbn
	iF2okXFwUqYZahawhc0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAX-0005Vj-EN; Tue, 11 Jun 2019 14:54:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAS-0005RV-I1
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so7118453pgl.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2YhP5cKxP/vT8AS5LQrl5DB+8q87pvOExCb2ibCXd8=;
 b=eGgTxMisn0R2xrdQyV8BxcvimWHWBs4o7v3EN3Beo2vB8AxKqE6pfMuvXp680iYHAh
 dICJyDYyYRse4iGGkeSlBdh2ILl06oYs6UGvOgi4hLoWp6UVlMjyoavukBJcV75tzm/b
 42j9FfHYJaREPOggBpRratWAYOPJvgEwQnpbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2YhP5cKxP/vT8AS5LQrl5DB+8q87pvOExCb2ibCXd8=;
 b=FZ4OLURsPrElxBJKmdErbODRLl0bCmWuvGyatq7QQkBoe5h1Xy6HSKCXQiCYNriooC
 tGnVxzky+iuNfMCTu+rGO8gQ0scCzidmaA14qVvMPechuALExhI/+L2WGRXhwCclLYgx
 ZpaFctU7gsfC1d8Re23PB1zkoli/rTZ6N5edcHqm60bxMiG8K2J2SUhduuZh1eoUdAf3
 rFmlcKv/f8ubT0tyv7mHSQwdOBnqogh7ggEAJ10odUd+9gC/B9SAPMP+YPKOxz/cD/Eo
 taEnlidhTwAgxsF0wjkXdoSLuBbMG0+qXhxWNjrFcRPK9FtnGYHOhMlqkfH95ZUGLxn9
 E0ow==
X-Gm-Message-State: APjAAAUY/GRZlCoLSR2Ek0B2Se6xlbcEM5A6JHrJFG/AoIXkV8tpsFVr
 32iZ7w8nDI41MhhEI3cegP/uPYWGTgM=
X-Google-Smtp-Source: APXvYqwNIyuNs87+6VJSXwDT3i9oSUw9JNt9yKrVtxQRjnTeyVtv4KZ7piOL23y1q9rZ00SRw5TVRg==
X-Received: by 2002:aa7:97bb:: with SMTP id d27mr13325678pfq.93.1560264867696; 
 Tue, 11 Jun 2019 07:54:27 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 39/92] ram: rk3399: Move common sdram structures in common
 header
Date: Tue, 11 Jun 2019 20:20:42 +0530
Message-Id: <20190611145135.21399-40-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075432_590733_21713D06 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Move common sdram structures like sdram_cap_info, sdram_base_params
into sdram_common header, this would help to reuse the same
from another controllers like px30.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  | 29 +++++++++++++++++++
 .../include/asm/arch-rockchip/sdram_rk3399.h  | 28 ------------------
 2 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 8021ca21ed..200551fac5 100644
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
