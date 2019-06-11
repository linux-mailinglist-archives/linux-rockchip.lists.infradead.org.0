Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DDB3CF8B
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQJm0rQm4SLnI/p0jqh6bP9uSO5pNFPzg62s97Qz8Fs=; b=iWG/OsNqAY+xzO
	BKw4FB7cn9Dtuez01ifRYkMM8mcUAUvDincK9lXtv5JG72212JMBeX7m1N+E2gwGf8K4ic+zN9GKV
	v3BBMlTATLp/vHPqmd2By73AXkfPrgc1nAGZcfInoMowfz6BhTIHL1qrc51dDGFSC1JyVQE5UsmjR
	HFlGG1Bll8dCj+GLcCm3CKq0/c6LkWRq9WGmV4UD1YPiTe8RpuTrkc58mwl3J6651DWSK/zZG3M0p
	sW09MVOV8ikwewfsLksHN5UFn3gOxE/jyheFVq9DLu2+k4PMpglzbd2/5hFXTQ/s/Emkr1JYdk2mK
	6ZXsNd4266vQazOiL5xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9P-0004ln-6t; Tue, 11 Jun 2019 14:53:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9L-0004jV-K1
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:25 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so7078649pff.8
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Etejk+5Q0mwhnZIra8dhkmYg9eLKyz9+3kQ98m+KvY=;
 b=gNai4f/l4C4vAij1iXsyCCwHMJfP19JteFIE7yaZK2BF4BHOOrdM4YxaUeNCVrOJly
 2f263TEXljFhA4/F7s0+F4NU1cwvvTL4SCfOtWBCCppZkkCwBNfRyiPmRjJC1Fh9P2iu
 abNcbuPTaudJlO/DvUdvTW3TMPvOCyUcpGltQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Etejk+5Q0mwhnZIra8dhkmYg9eLKyz9+3kQ98m+KvY=;
 b=bat2uDlVhajo7EJ3P3yrJIoViP7dHYLwUzmERaqIDnrPwygCU/fAYXi33n7LFWk+qW
 K4LJG9NSZAmAa3Px6o9HDbkgGrk4ICRAX8ZFW6FH45pnuQqivyxV0cVWFHDq43wCsuBH
 G09L/J1Yo+f9o8zGeXMZhzW+/pRp4a0fJtUWU1gmdVGQg0ptbnxcZ3SKgak6lwTQm2S9
 OIu2pA4RWzUr5LI4H3BRZA5fLCMeMjBsxwidYpLyr4CL6U/vtQ4XJc+caBLV7CC2OdKl
 bsKYx67WvY0z9iMAMp9vTrxVnKxnHs0bp9tRWY+Rstb5x5s0kGPn0m2vrjmNpI39mqH+
 LIqw==
X-Gm-Message-State: APjAAAUn3V8xQ5HCJ9Ewe/Xa67aUagS8Eo3+Q8CkHbb9FP/IqOfApWiG
 qMGpRUUlWgz8BCqbK8stsmmofg==
X-Google-Smtp-Source: APXvYqztpEBx+r6WqAHAv7GvJuU18soNnrei8QS5Is3iqeqgypVHfYRvvolBRDmypbs5hmGwM/yOsg==
X-Received: by 2002:a65:450b:: with SMTP id n11mr20075968pgq.174.1560264802960; 
 Tue, 11 Jun 2019 07:53:22 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 23/92] ram: rk3399: Update cs1_row to use sys_reg3
Date: Tue, 11 Jun 2019 20:20:26 +0530
Message-Id: <20190611145135.21399-24-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075323_727720_5B35648E 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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

cs1_row can handle the pmu via sys_reg2 and sys_reg3 while
configuring the dram instead of just sys_reg2.

So, update cs1_row macro to make use of both sys_reg2,
sys_reg3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 10 ++++++++--
 drivers/ram/rockchip/sdram_rk3399.c               |  4 +++-
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 3d1d5badb4..dc7275656e 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -53,8 +53,6 @@
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
-#define SYS_REG_ENC_CS1_ROW(n, ch)	(((n) - 13) << \
-					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
@@ -68,6 +66,14 @@
 				     (5 + 2 * (ch)); \
 		} while (0)
 
+#define SYS_REG_ENC_CS1_ROW(n, os_reg2, os_reg3, ch) do { \
+			(os_reg2) &= (~(0x3 << (4 + 16 * (ch)))); \
+			(os_reg3) &= (~(0x1 << (4 + 2 * (ch)))); \
+			(os_reg2) |= (((n) - 13) & 0x3) << (4 + 16 * (ch)); \
+			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
+				     (4 + 2 * (ch)); \
+		} while (0)
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 2408246d0d..772fde9732 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1027,10 +1027,12 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg2 |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg2 |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg2 |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg2 |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
 		sys_reg2 |= SYS_REG_ENC_BW(info->bw, channel);
 		sys_reg2 |= SYS_REG_ENC_DBW(info->dbw, channel);
 		SYS_REG_ENC_CS0_ROW(info->cs0_row, sys_reg2, sys_reg3, channel);
+		if (info->cs1_row)
+			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
+					    sys_reg3, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
