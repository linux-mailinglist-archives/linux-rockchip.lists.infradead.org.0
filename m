Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F05B3CF8D
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wWY8apFZ1MXXsi0ZcuGe+PRkftMajxxF5kYkg3Sxbs=; b=ARNjMxl63DNrBq
	miK6HLPNBHISNwD7CV2bcsYFS3SnUYZ6BU6Wxjjc7+PjVMUpUbjT1/64HsBzfrSASlyo1mPK2xPxY
	CaboIJKRRib0WNAjUkwi5CBAdIbxIXJMQsvxbpaUvUp1k3RAJ2P0qLfFNFKwgyqmvh6mEktwjT744
	BWKmIEdXvjPgpqQVIdwoCZippFgqYmLw/x1ssu2P17pAug6qy7siccy+26KyMtRNisYcvuMzMbg29
	LRZ4zFdR5ZXzADhql8scRHhXCIDoRQoSX5m5R9XmrxK6OdSSHFZseQFcaSkdoSdp7uSiTdtAqSb/7
	2F7gv8j75WFzYjl2fl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9Y-0004rg-30; Tue, 11 Jun 2019 14:53:36 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9T-0004px-QD
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so5221906pls.13
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aY2/dWps+z0RNlJTkm62+j81bSU4w14s3hjMynspne4=;
 b=oYsE0zkxAHxKsDEDcGnwZA45oVNuyZU2398LIoNggrWXMXz68jUO8aFFcYDYFW4lG1
 z+flwK973C2VqOZrAvbRzLOx3VxDE12/+QFW/9Q4D2LX269r/S+zkjoLsrRIfeTfAzUj
 FWPOnLv4JEpN7Pw970dULGpSxdsYVp1OWrJFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aY2/dWps+z0RNlJTkm62+j81bSU4w14s3hjMynspne4=;
 b=OwZqBWJquJavTniidR97wHWh2f2Mej73G07M+qThTXw2grW9zEWIvb0jwWpD/DBAxT
 R0F5uTWMdS/RsoT/8KphERMZsw/D5NV+Q1glv5XO8axkaIl8TlLNey7VKLE46vUq2u5W
 3eymefRbYqCfL9QL3rnPjk8zUsGXX3WpbQZHfT1LmbwsOWFOymdC5foq3BnQ2Gc9YrlA
 G2ZzB+dSQQGCMCjm1V2L8qSmQMkqwxnTD60vuJ9HYX6UWIrsakLGSDHkq/a34lrmeSle
 Nn3XBl/S2D81UeiCj1UcRWMs9oprsBNQzzYNPyz4joMwfF7tz7rKGAY2bO34PWoCVRfE
 Im9Q==
X-Gm-Message-State: APjAAAW+fo87Jt5r2+/G4Xu8gjlARzGj3vQh2cqUYf1nakRS6R86+1Rr
 3AyHywb+MM5mcZMEbFzaE4DU5Q==
X-Google-Smtp-Source: APXvYqwdjeG5jhn2/TBpDTh9A4fotHEStbu8okTHSflGYXXUUvcymPGtbqja1w4dsdzZyHcTcbwNYA==
X-Received: by 2002:a17:902:778d:: with SMTP id
 o13mr25644519pll.82.1560264811322; 
 Tue, 11 Jun 2019 07:53:31 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 25/92] ram: rk3399: Add ddr version enc macro
Date: Tue, 11 Jun 2019 20:20:28 +0530
Message-Id: <20190611145135.21399-26-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075331_884680_9E0629C6 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Add dram config macro for handling ddr version number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 637a0de902..8021ca21ed 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -28,6 +28,7 @@
  * [1:0]	dbw_ch0
 */
 #define SYS_REG_DDRTYPE_SHIFT		13
+#define DDR_SYS_REG_VERSION		2
 #define SYS_REG_DDRTYPE_MASK		7
 #define SYS_REG_NUM_CH_SHIFT		12
 #define SYS_REG_NUM_CH_MASK		1
@@ -60,6 +61,7 @@
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
+#define SYS_REG_ENC_VERSION(n)		((n) << 28)
 #define SYS_REG_ENC_CS0_ROW(n, os_reg2, os_reg3, ch) do { \
 			(os_reg2) |= (((n) - 13) & 0x3) << (6 + 16 * (ch)); \
 			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d77a8310cd..5b87524b7c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1033,7 +1033,9 @@ static void dram_all_config(struct dram_info *dram,
 		if (info->cs1_row)
 			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
 					    sys_reg3, channel);
+
 		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->col, channel);
+		sys_reg3 |= SYS_REG_ENC_VERSION(DDR_SYS_REG_VERSION);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
