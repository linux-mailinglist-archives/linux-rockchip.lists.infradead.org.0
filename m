Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304BB6A7EB
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6wmHcPm3QyVV3VLk9tjko3W9R283TNnknQMAXTuvH0=; b=A0knvvG4lgxptm
	YK1czOMItWnD4xyReAveImjSRMYhn7eFXMp6RQIyfvzm0QCKCNHeTucl1/o1ch9m7CDwt2idH6Lek
	x1pqeFaKhLhfKtfZ/TJklpeueGpLwYCn4Ba136sdJVTePrputpDlUbGMPlTOKoCePwo3KYCcY+CUP
	2d3ZdgVyQjFni/aMf49kbEG+/9FG66unh6K3I04bbOqSn0aaW9z9tVoAThJam/RekvbboQHFTAjCZ
	rmm8SaJoKSI6JqixsRPOJkV5lC6/mg8FSzgh55beLhTpLwUeaix0bJLo6fLYeGoImvXsRwoFqGI6y
	okNZHzgexrnDb/fregQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8Q-0006mD-3j; Tue, 16 Jul 2019 12:00:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM66-0003lr-Nz
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so9328814pgl.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TFvI0S4CfWwHtbl2JqDL7FjN6lCMyy3zZu+VBPL6t3Y=;
 b=ePYDBvjiUwdhw54nJgRhT7e6DnxLVilS+45XIES7Prg3nAES7E0QoR1RKR9N6V2WgQ
 NTU71Ak+6TSAal06NPFZ7Fq9Ds+gl7RVd+fTpc3G/lzRzDv125+2m7M50qKclg4SXK8r
 LcplY8UsUnzwUVhgUxCbmjCnfKA+5z8W1n4yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TFvI0S4CfWwHtbl2JqDL7FjN6lCMyy3zZu+VBPL6t3Y=;
 b=XJZS5NNjJ/HCt7qTKffsdffGNZca5nd8ojjH5cGqxnlc0EP+zS7wtN4hRyCAN1XiNr
 l1HUAut/VL69wfu/81TnFfIzbmSd/tNY6az6Q/fsRmAuvCkw4iq1PGJ6yP52CgMXL66m
 jFTRi9qWBW0Ip7gDtYVszJvXeC7+IKD/NIzaeZ/uzpkv56fPYTzZmGNDpNqf9HCFCSnF
 KHP1DgSmdWGWvtZ5jGS+hou4j0k0j6A8NCzysqWimoGKd08NFKqXtp8ScY1qNx6eOUcb
 nLpJENbsjKLoHHVBwJl4vkp+BKdi3mXp/QKwaGYpYCRLUi5wqbDVQIRLgPVawKLxs1P7
 36hQ==
X-Gm-Message-State: APjAAAWIkojePvLiLaq9JSNaV6mmH298j1W/MvGMwkLWJWYLicI8w07D
 +W6HJV2Q/KvXEtoBSmi8qVoIRA==
X-Google-Smtp-Source: APXvYqw2e2O59vfqh9aTdlPpV95ZypY60/hGVwr3jTjmEDdTqvMwOVCgo+d5rskd+YkFTRUz3LPsrA==
X-Received: by 2002:a63:7a06:: with SMTP id v6mr33364967pgc.115.1563278298200; 
 Tue, 16 Jul 2019 04:58:18 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 06/57] ram: rk3399: Add column enc macro
Date: Tue, 16 Jul 2019 17:26:54 +0530
Message-Id: <20190716115745.12585-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045819_059637_75C41C32 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Add simplified and meaningful macro for column.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index db9e30126f..e7f15a7cf9 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -83,6 +83,7 @@ struct sdram_base_params {
 					 SYS_REG_RANK_SHIFT(ch))
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
 #define SYS_REG_COL_MASK		3
+#define SYS_REG_ENC_COL(n, ch)		(((n) - 9) << SYS_REG_COL_SHIFT(ch))
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
 #define SYS_REG_BK_MASK			1
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c2390a771c..f6a83f2acf 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1092,8 +1092,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
-		sys_reg |= (info->cap_info.col - 9) <<
-			   SYS_REG_COL_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_COL(info->cap_info.col, channel);
 		sys_reg |= info->cap_info.bk == 3 ? 0 : 1 <<
 			   SYS_REG_BK_SHIFT(channel);
 		sys_reg |= (info->cap_info.cs0_row - 13) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
