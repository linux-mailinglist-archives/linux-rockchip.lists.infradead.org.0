Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C913CF82
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4UDdLCpoeuwxtCpoKhBrZUbx7Yv0OPs/daLP4x4f2k=; b=Zef7eVv0xJuP7r
	K54eLZsplQcCvWR0lN8WA1moD03ihsQGJvqKnYDbmo07D7dewTFNfym9qat9nfkcJXktxmz5+T+Xg
	RRwta5vV3jtlIvNlH49sj9AbTP6Y9JlU+q3D/aFehyQnqdHT/pKvQyHVlb3q4Wxd5VrW3MucZZIh5
	VTr6GqLbPspev9Tvty05O3XLjGBLEWpdYLghb/3A51u2qBhmlKIRGVEdhNgZOA9Q2sZ1UlvzRvFlu
	lQ3zBvjGGDQA/YdKG1wHoBISdAo+I1H1WOIfneZ4mMQaVLLTXy33WMWZ3F01P+7aOB62McviWmN2Q
	D4fGW0NUj9pX4CtQx+cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8t-0004Lf-N4; Tue, 11 Jun 2019 14:52:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8q-0004Jd-3c
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so7579183pff.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mdI9PCaGo4TDtVipfZ1bMvIbsyS7+2mosHhrJOFIAC4=;
 b=gIs775IMx4yIQ9B2I0t0uyt1qpEGcMr/RaR0twqMVqBaQz1+dDTXhO/n/e1kRclb6D
 ViFhzJrbVtyNW/xr+v1OPEn0N1sziehjVBuZdaFjBOs9ROyV38F5rUTn2egMTrDITNiu
 zSDPQz6WlQwfTCqLMtF/KQ+MaWfyiRwagzS/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mdI9PCaGo4TDtVipfZ1bMvIbsyS7+2mosHhrJOFIAC4=;
 b=CmoLtFqvqaQKTVLasJGMPXXNBTEtPqT5yAxUIW6tBOQxcNmTDBnBiNzj2UKSmsoUhS
 KldECjfaJymlo4CD42Qa/Znb6H1DArAATAkCT5L6OoHLERhPYOTCUMmRV4wiQ7Q3UAKF
 SbCgfTqwLyGuvLr2Cgknt74mv5pyNHtirU9RB2a85m5ipd03Tp7ahBKAExKIVB70Vz1d
 VXo6ZYiCzvT2VTsqzC3bkMnLAMQehQqIeXTLJ6OTAks+bzc6nwALc+MzYxlS134rdz8f
 EJMO38sPs4TPLqQNRg8PYBidgTOZf2KNT2zdERXDRoWSDcbE0JgXO4rQtf8JC5L95chc
 Zsiw==
X-Gm-Message-State: APjAAAUZRfX2eBuo2HoyMZ8jeM/LqJ0/znfaXwvZRJEhuEaHz0u9Durw
 2NE9o8o0FUDazt9nGpZja28L94xEY6c=
X-Google-Smtp-Source: APXvYqzNLryG+mDYHmKnVoyhOGC5n0arCoUIcIpQGIE4hgsn/fSXWqQxFU0yxFJzOmueLjlIPI8nrw==
X-Received: by 2002:aa7:9a92:: with SMTP id w18mr51117563pfi.167.1560264771564; 
 Tue, 11 Jun 2019 07:52:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 15/92] ram: rk3399: Add column enc macro
Date: Tue, 11 Jun 2019 20:20:18 +0530
Message-Id: <20190611145135.21399-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075252_236490_B2D2E40B 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Add simplified and meaningful macro for column.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 2dfbc75bb7..8e809e8dd6 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -44,6 +44,7 @@
 					 SYS_REG_RANK_SHIFT(ch))
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
 #define SYS_REG_COL_MASK		3
+#define SYS_REG_ENC_COL(n, ch)		(((n) - 9) << SYS_REG_COL_SHIFT(ch))
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
 #define SYS_REG_BK_MASK			1
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d801ee691c..ad6c74374a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1024,7 +1024,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
-		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
 		sys_reg |= (info->cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
