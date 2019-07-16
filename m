Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218356A7DE
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 13:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2fY34DIbGbfjsngHCqCz03bSRs/k7/jm7ax1h8Lr2M=; b=Du8lWelIygTvQn
	2Bj7TN7VM+wPwrtAYfZ0kj9+LWKPaPE4oYEmhH1x15XuMGTHnW0tEoNNhqRUBMqS7fmdYkmnX4+R9
	byqDg4cz6b8j5JsYGh0RRFDTYWQdOCQtCaCKoI9xGi09jDhEw5BoQO9Z079k4kChXkdhAGOsHk3kz
	M5tARRVBbDyycyL6x9IRMl56aO2WgV7V3pZebGKT0KHPdsabzKEt0ey9L7/ii2LrNnN+CEFNh4Z1l
	OHltzX1auN/ywC9vN+m/ROax9aXMrh+f6o49c2MuCb8tHInqk+kZlwDryZgO6kI+syprLZk3suD6i
	trzis9V+T+g0GUR1VWqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM7D-0004fC-Vh; Tue, 16 Jul 2019 11:59:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM5p-0003Xx-BS
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id 4so3041887pld.10
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O5x4OMbaIqox/kteHap0vjhkRYIdbYmgiXXORgFTXCM=;
 b=iVIx/jB20otG18XtOIbySM5EaiqsViAitgp9WpKIuoeFvHaGp5d5ocn/fNXzdK/QNU
 Lg34+KJ7ZKWdcGB+tPWz4sr3iupMpV+PoURq1dZOiOF4In+5xqj251fAJ2SL8uKC7C7P
 ul84axbU935RpECXOo9dtlDNsmiGTFKRUD55o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O5x4OMbaIqox/kteHap0vjhkRYIdbYmgiXXORgFTXCM=;
 b=fuWztK/Q+5waLofve1CURUko0xB+EZvqct5zar/nMJJs0P9dlQlr2hmJRE+SNaKhAK
 LLrnShx1QwmAvstkL8Dq/3y6PvnyaK+vqsi/ab9sQ++zR07PBHyNvXalY+FqszETTumE
 3EM76uORQxWUJhD+Bf7aDNxoAMHND4Q2xGQ+r7/9Bn69TM+4BVJmsMl8IoVh6qPs9Cit
 lEhaA2vI+urys1BlOm9d7+q94BHwHIM62UbgJm3TybK6rBkG0KPbd2Ly5Qj3LA/Zx2uZ
 YPbAuPAWAiv4sFNYhN3BkT+UPvGbIaGjWba9417rYYXpRlwHefMQyQfE4TSaJExlJXws
 4W9g==
X-Gm-Message-State: APjAAAUYeB2ZN4W2n6WxgnjCUGD2RqV50SguefYfcthfYhn6OMRSMisq
 9d6su5xdHrguOCdc6pBwmmbXHw==
X-Google-Smtp-Source: APXvYqxR+ffEvpp5O6VYqb5JmfwBpF43feu9wjj4Jj7Z1hmMk0z0wO1alF4GqFmYsoIu2nO4/8e0wg==
X-Received: by 2002:a17:902:bd94:: with SMTP id
 q20mr23824951pls.307.1563278280217; 
 Tue, 16 Jul 2019 04:58:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.57.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:57:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 01/57] ram: rk3399: Add ddrtype enc macro
Date: Tue, 16 Jul 2019 17:26:49 +0530
Message-Id: <20190716115745.12585-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045801_482556_7339A7B4 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add simplified and meaningful macro for ddrtype macro.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index b7549f5d8a..92a4c485c2 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -72,6 +72,7 @@ struct sdram_base_params {
 #define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9a60c24135..f58836c037 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1076,7 +1076,7 @@ static void dram_all_config(struct dram_info *dram,
 	u32 sys_reg = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
+	sys_reg |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
 	sys_reg |= (params->base.num_channels - 1) << SYS_REG_NUM_CH_SHIFT;
 
 	for (channel = 0, idx = 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
