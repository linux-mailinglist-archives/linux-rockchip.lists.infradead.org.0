Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B44147B17
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vzr4lbjuwgBuLNJWQSdD2cBU+AsKx1LC6Y5F5Nv82r0=; b=OukLhNJUWOafrE
	pLJdZUxlI4ClOtdq116hASD1BXJe5CQEB81KVa5nzy6QaVkOhuQFDu8giwUll6LP9VuRRBa5hSzjp
	MzIFXQoCYEZXtSUoW/kpETl7MRZcTUd8VaP+yUa7GsG+R33qu/xnxdIo+6fTGCm5kq150/X7HtpjK
	XmQVinRUzTfrxKKG+w7ss+zHwFR6duQzmmPjByG5k4hEl4+jKfFiY29hOsMolTkNQQf3pySx1u44L
	u0uVA6WjrdO6y1HLHgF+RVlk4GMPIAk67MkSjjxnUjXlZCBX/rzA95WkLmK1qMDy3W4oXAr7vHvCO
	c6GLwDsbTWCbSB7Pps9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCP-0005Wp-5Y; Mon, 17 Jun 2019 07:37:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCL-0005UR-9q
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so5194719pfa.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8HB5WFYTdd+2Tu6qdgodEldYX+2xCcnRKLddeyfP/Bc=;
 b=p+blBiUm4wlnHLcoX7/+DTcSZ88Po/xgSeiMH+bqDkTDuTdyzYU4v68ls8UHSnc5OM
 e5Oz5cyqSuS5De5YaZt12XXaIs04cJBNwJFADgx1mk5fYyl47eIKTRJpdO7M1Mzq5iti
 HMffP4Uy+X8kkakKwCKlugaj63bcyliOsGXHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8HB5WFYTdd+2Tu6qdgodEldYX+2xCcnRKLddeyfP/Bc=;
 b=Q6jrggpWKgVQZ99Pt6M+eFLk2+Ol3eNa3d4ryan5HjKrG2Ig/XpwTtbn8x99DO2pkN
 zFGgqt5rjXDguJ41iK+A0JAOCXgeL8nRgQiVpWnJ93uIwv+JD7at/PBy6e0Obo0Hg1Yn
 QrsIIA9LQjNG2ouWGDrTIOm2XrpnhP4IvWXMuoPyorhs8Fj4hKF++v9LVOgJPWtNP0WU
 oAMbhd9kLHoHgXxlduYD2763lPaozJkJCUJG7/Op7thzOIIamg6/LRF5bO8QJ4On2bri
 +OzVpD7X9egWSNx7l/dOJMxeYWj4jF1QNlierripJMeoMW6XDZs/00QNEgoAWrYQc9HL
 uM7A==
X-Gm-Message-State: APjAAAXXRbCjBQoACtkpQDSWtOtNXBsUwhsBSZ6VT37+4hhYEnJ76vrJ
 LpmgWpnhKuWti8DC41E4dATqiA==
X-Google-Smtp-Source: APXvYqzY8bwFrSCPZw6ZBTUghn63BF3FydJ7WFWr55XAkmW80bTEz7XOqHCQ8KvuboRmRk4a+l+REA==
X-Received: by 2002:a63:68c5:: with SMTP id
 d188mr48892444pgc.429.1560757020730; 
 Mon, 17 Jun 2019 00:37:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 12/99] ram: rk3399: Add channel number encoder macro
Date: Mon, 17 Jun 2019 13:01:25 +0530
Message-Id: <20190617073252.27810-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003701_443048_9FD11DBF 
X-CRM114-Status: GOOD (  10.65  )
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

Add simplified and meaningful macro for channel number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index ce1b62982c..a565f8d045 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -35,6 +35,8 @@
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
+#define SYS_REG_ENC_NUM_CH(n)		(((n) - SYS_REG_NUM_CH_MASK) << \
+					SYS_REG_NUM_CH_SHIFT)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 28178f4ee9..ad2d03729d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1008,7 +1008,7 @@ static void dram_all_config(struct dram_info *dram,
 	unsigned int channel, idx;
 
 	sys_reg |= SYS_REG_ENC_DDRTYPE(params->base.dramtype);
-	sys_reg |= (params->base.num_channels - 1) << SYS_REG_NUM_CH_SHIFT;
+	sys_reg |= SYS_REG_ENC_NUM_CH(params->base.num_channels);
 
 	for (channel = 0, idx = 0;
 	     (idx < params->base.num_channels) && (channel < 2);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
