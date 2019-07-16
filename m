Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7156A7EE
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOxETM8kMqZqgpm0MbeyaRh78lovGUPuRg7kIvGAc0s=; b=szO5mcBbPaneJl
	rhO3yRmkkn/AAFJsTnGwAa5uPzQKqmsGiA1L2ZCN23/8ReWiWVf0gC1eXuBtigWxiIuBwMdP1qAjU
	ASpymAoJEzAllXY+Pj/Y+iHxGlUgln/CAUq5BUASJ3g1ilU1iZCxZJaqQHwCd1Ya1Je7/Jz2pO72Z
	FV5qpfPRUb7U1edIqtHifYBnmWUc1uTJWXdO9Gesqr/Zd/rqHX/iE7aNYSfdAcRPmJKaS6/hsWn1n
	rtodDRoIQOr85JihKmFeU4yVd3Tt+k5k6LL/x3uiqB+mdhqyzgsYH4iaaBpJMCj+vTecSaQj602nZ
	N3jzPFrpFamzgDi/A7bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8a-0006wD-4R; Tue, 16 Jul 2019 12:00:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6H-0003uT-Ec
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:31 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so9337074pgi.6
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MaEdnzisi5q4eMpgFmSgOHmtpsLKiq2clGF/4OGDslQ=;
 b=PcmLxSbVY4XlnlKkkYeKcVERbs9iYzD+9q1Zb7g4ettcOD/n2Ro3KuQuJxtWJabJs8
 6txlQ44y+B0VzltZJLbrPRVC2o5oJ6BqfNBDQkm7yko6CDKp1bHErRMyB/QNHPbx8Hnb
 N72AdBBtm2Ai4pLUUFVLouHEWUN9IpVCHxA0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MaEdnzisi5q4eMpgFmSgOHmtpsLKiq2clGF/4OGDslQ=;
 b=iDl/ElbRKzRd/AWrj6KWsM5WNXdvtlyJuaWhrkRumT/Q77rxmT6LLi6cTc4SMP6My3
 XED/GfiaKK0wXjqRtYXOwXmDoaDlzw6ybGFT6hv0mBFnHYCsxtOo8TiVpL1jGVaRczmM
 CcrKnjzIQ4d7xPhPlntwkITHRqfAnr5D2hkFhrJXdYI8uDzCr/ubh54c1Pp8L8VjF3El
 KHIKYROlOKqTV+y5Ijn8T1ItzcyqYMImpn+jLAVKZcs3ljPQBYzO7Fdm9NKQ/64znbAe
 Xi9BICVOP5ani3skbSCvpA/9afutO+7v3pqytroJRnoonQq0kNKnVtJFvRLtvkfCVDwS
 WINQ==
X-Gm-Message-State: APjAAAUxiPgrprfRctTSivXTFm/HNZXFTaqifJQCEcz7fZBFvV+rWeL8
 tKvPrWr3SAnVrgDSuTkzwflcXQ==
X-Google-Smtp-Source: APXvYqwCgsukvLu7to9IcqxWwGxlBeOy8yqSSGgNqqzUk3gPjHmvdXC3XwW+venzEpv8FFZB7CzG9w==
X-Received: by 2002:a65:500a:: with SMTP id f10mr2092494pgo.105.1563278308911; 
 Tue, 16 Jul 2019 04:58:28 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 09/57] ram: rk3399: Add cs0_rw macro
Date: Tue, 16 Jul 2019 17:26:57 +0530
Message-Id: <20190716115745.12585-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045829_717003_678F7465 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Add simplified and meaningful macro for cs0_rw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 338f4043e1..ad9726a57c 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -90,6 +90,8 @@ struct sdram_base_params {
 					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
+#define SYS_REG_ENC_CS0_ROW(n, ch)	(((n) - 13) << \
+					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b994134fdb..43cf597828 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1094,8 +1094,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
 		sys_reg |= SYS_REG_ENC_COL(info->cap_info.col, channel);
 		sys_reg |= SYS_REG_ENC_BK(info->cap_info.bk, channel);
-		sys_reg |= (info->cap_info.cs0_row - 13) <<
-			    SYS_REG_CS0_ROW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cap_info.cs0_row, channel);
 		sys_reg |= (info->cap_info.cs1_row - 13) <<
 			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->cap_info.bw) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
