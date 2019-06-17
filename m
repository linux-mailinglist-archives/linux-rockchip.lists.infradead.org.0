Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F8747B1C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oAjpAxHy4rV+sTJ16Bj4p8CL9S0VgRNS16ScFE/TL8=; b=JU7ahuHfyFk9hh
	bjOIV5717oiUcQOxjhzB4KMbZC/bXbv7OkLOOrBpHhHHbkAmSnxfOlzvQZuPHDwAV+DU1ds3wIkgD
	uUWBHAINvHBWBTo10OUkJyRs0XrxVKTCuVi5+ULz5AM0QQ/+1o8ibM5Q8OcxE3mIfVKuf2pjxQAsh
	poVrTyDffXc/i7FhPShne+7Hf6nu5vH6WWB6oRO/2Cx3d++/tFrZa61Si9wrNaT50CQzCKpmNa/HZ
	A4hBDQ1Bu6G+20fZfT03JKeZV/d3tomFMrJq/gE9WwagGqE2yoK4QIkAaBUNZInWFqQHlgICnN/LR
	9hzat94bDjmiBNjdGW6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCT-0005Zt-1P; Mon, 17 Jun 2019 07:37:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCO-0005XW-PB
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so5316991pgl.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EOwqiXpoaznAHvee34KmWSy0GSGmeg2o28ddX/DmTrQ=;
 b=iW7uclNbjjzJodNGPd7UzRUcpGiRDbPx79M/s12NtAv9/b9vxrgoj7++iUGwpZAAPH
 eb5kJfvTX1ga+KxDxdmp2kkbWJBAtXtpk7+hBzGagS5HulKrmqonj28m0Ql3BpeueRiL
 gt5reDEVWRyDZmcGnoy/16ph/1aGg8jxwogrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EOwqiXpoaznAHvee34KmWSy0GSGmeg2o28ddX/DmTrQ=;
 b=ChP2tiAA6ObQiaF4mdF3v+5RBCTp1SAK94doIXMmUh1BT8ucc1B0nuHks6JXx6FBkL
 j0uIsWeg4vOqlnLWsD8gbNO/xMj9G1CroF0D+Qo78tudJk+PSbsiDJhOOa9t185uUmg8
 qU8vftCs5wJP3ujgvLHcOCR4J5wLp3VrXxIpyVz/Lj2A2udQxcrkWyMqAQ5tSt8fTDDT
 72B52SBwNKECJNCPLF+pzdq8bL2qQEn+T8dnXu9OG+ZjoPW4PbvFAR6aX3SO/7STUc97
 1D49lcQiOyf4Jn9Z2SHnwBFGrDgkNL26eXCu+uW/OiIlI5HfnyATSJBKOfr6SifKkdkP
 hxzw==
X-Gm-Message-State: APjAAAWAxS2OeK7EDxPE6AmBr1SoSQlueXCbC8L0j+GO+MNhcuB2ZWtL
 epiXFKYGkRiIpAJPgGels6P7Mw==
X-Google-Smtp-Source: APXvYqx2dVU1/YmUms70ixYHGO9G/LFCByCnex+/610T4k9cf+Yc/IGrZwfR8emP0sNuTILFDf7VcQ==
X-Received: by 2002:a17:90a:aa81:: with SMTP id
 l1mr23682534pjq.55.1560757024260; 
 Mon, 17 Jun 2019 00:37:04 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 13/99] ram: rk3399: Add row_3_4 enc macro
Date: Mon, 17 Jun 2019 13:01:26 +0530
Message-Id: <20190617073252.27810-14-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003704_892534_C5165515 
X-CRM114-Status: GOOD (  10.94  )
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

Add simplified and meaningful macro for row_3_4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index a565f8d045..edb2ee50f4 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -33,6 +33,7 @@
 #define SYS_REG_NUM_CH_MASK		1
 #define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
 #define SYS_REG_ROW_3_4_MASK		1
+#define SYS_REG_ENC_ROW_3_4(n, ch)	((n) << (30 + (ch)))
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - SYS_REG_NUM_CH_MASK) << \
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ad2d03729d..26bbb4208a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1020,7 +1020,7 @@ static void dram_all_config(struct dram_info *dram,
 		if (params->ch[channel].col == 0)
 			continue;
 		idx++;
-		sys_reg |= info->row_3_4 << SYS_REG_ROW_3_4_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
 		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
 		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
