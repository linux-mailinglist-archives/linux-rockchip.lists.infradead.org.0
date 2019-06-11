Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7CC3CF81
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4E+tuW1q4LD+mgO3SkoLIBUDjz1x0bSNfV51fRYay40=; b=MhnHrU7IqPslYB
	kw21rrGOOinKX4Sc1BwDV2dUN0MgLEtaKVn67QccbjtCOtr75NEx25YeRyYNFKgh2YsrSRFnsV1Hh
	X1QRSzO+rQflvp5A59q0p5hepvI72R76BJ9yqS0Z4oNCrhoSTtoDXw6I/T2HEOeBzxxyLAUKfyRVz
	GubNORS6rU5ArF+p5uSKORS3YzN7hcuer8+2VXdTY0NMe9IXEsXFdWqevVLscnvRIkyj2J1aOu365
	Dkq78ymYom4uIhXGXU6ABG/wJw6RJkItRdBS9kLnqJYfX5PfS0grIXC7wDqH9BWqcwigY6LE7HciJ
	YdcC6Rj7VFpECm8JakJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8p-0004IO-Sb; Tue, 11 Jun 2019 14:52:51 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8m-0004Ga-1j
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id go2so5214760plb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zIjqoFzVPVjK6wSUMlYVGkBeRuPJRs8ssaeE+J5e+do=;
 b=WOqYtO7pQ3hFiWArBUlEdBmMApsAhJIEHtMpKkyuRlNCG2QJIt9x+T75+fxQ0piZZ3
 yXD0sJIwenoIK1kg+XiuXqvbzjPWqmIoK4Y9dMbKam6R/ed1CWq+6h1hJYyt3iudzy4Z
 jdxPfumj4qo4UwdBk7DbDVf0HZG61RT8SKFNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zIjqoFzVPVjK6wSUMlYVGkBeRuPJRs8ssaeE+J5e+do=;
 b=QYSCrPvtpCQQM4Pbx7brbah7k9EGR5VnQ4T98+/6YXkw1cmI37wx7lCsl7BGi5vHVp
 UnfeYKuCF+6uQhboRgPxa4bw3+3LIGwEMsmp6ovWPjINwBDJF2QCS5VMSpiVZm6aHd+x
 pykCdkYSWtQgKKHRDyJCu/QPA+W4csvGyJ8NGLQOplsrKqtmcHWoH41wHSmLsNcLqPuR
 mfAChIF9txPNwiqhs42aR16DSUtagLgKsocp0aT8kSLBroFvHyS/bj029ujXC4Py03Vs
 TrSD/h1n/FIG6hE4plSG5F+zTMe+C3w5KgovnwA3xRac9SwIzsOz9TKK/qcVZbs3iC80
 EcwA==
X-Gm-Message-State: APjAAAWDKyIVtnz+EqdQV0ApGjOwCZlfRoNng76qFtGWR3QOhOhk8nLx
 bZGhyllmE8sgK0BWuCeDDU6NkA==
X-Google-Smtp-Source: APXvYqxMRTWUflWLMdGjS5jL1DGRasI6xsseDxW28RMPpBvlzQKv0dEvg6/EjcyKg2Ji+Jo9+mip7w==
X-Received: by 2002:a17:902:988a:: with SMTP id
 s10mr76925747plp.304.1560264767536; 
 Tue, 11 Jun 2019 07:52:47 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 14/92] ram: rk3399: Add rank enc macro
Date: Tue, 11 Jun 2019 20:20:17 +0530
Message-Id: <20190611145135.21399-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075248_277615_1621B30B 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add simplified and meaningful macro for rank.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 68ae8e8371..2dfbc75bb7 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -40,6 +40,8 @@
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - 1) << 12)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
+#define SYS_REG_ENC_RANK(n, ch)		(((n) - SYS_REG_RANK_MASK) << \
+					 SYS_REG_RANK_SHIFT(ch))
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
 #define SYS_REG_COL_MASK		3
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 0feb5d1e10..d801ee691c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1023,7 +1023,7 @@ static void dram_all_config(struct dram_info *dram,
 		idx++;
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
 		sys_reg |= (info->cs0_row - 13) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
