Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455053CF87
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCfmR0OG9JjkaVEskuz3HMJkHrCME7+OoFz4RwVOstE=; b=XPCnEqutL8AQn5
	PmciV6pIPZ+ZkwJxAAz+i+WvQCHeDvBU8hSE2Yu6XQfsgIRe4kg+w6N9FqeNsyzNn4kEQtrz15dI9
	taFZiGQcQyvELM4uj5XvJgBSrNE+gOZFxD2H8KUisarTrQaRWaIaRO25QD8EYsJQPWCb+wMXJrrT8
	DR5flaBJ+Fl6JOYUVekfO7h4nHc7929Gdd65xoGx5eQH54SC0qxcSSE4eml3UoaQ42OSRAT76S8T+
	zKO2XSPWXAXKfMAsvquxSAb5OU+pFmaZIpySLoz/9D78UWz/E4cIe0YMjCWBuWOltmNlxO/toPyAp
	RIwC4hH5ZH3z9fNF1JMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9G-0004eg-AE; Tue, 11 Jun 2019 14:53:18 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai99-0004aE-GP
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi6so4832728plb.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MNm3PZEpx9MW6pAdvXTKuCFsUheDm0X3VhqqiRiS8iA=;
 b=RNjtSAvQQbvf/Of2G88T7/xB9tswj8x2qMVsHX2leSl8sZ08swXEfPDpfGunP+BkmY
 +lzQz9f85guQYT8HhaACKlLnF3Ag1M85BL2ImIlSTx/lwxfx3K78kLMuh6yXyKAVhizo
 W2btHN0TKSvKr3AIb5SVQXmWa3OW5gUu+HvlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MNm3PZEpx9MW6pAdvXTKuCFsUheDm0X3VhqqiRiS8iA=;
 b=t88PK/T/bETsAEbP/amQnVWkOqcx48UMtriTmSx9VczGFWB1l/kgesruxTljHOs0Gv
 FY6W1UxmkDAdvWNmOxh7WP5Pn34/tfBtSb3v1R+OkqsZy5qMcmgSzb+lv6cn5NA51ePl
 indCTcCDmzG2+PHd7K90qHwZLBJygR+SA9v9TMtSkNh4OWbj37M8v6ygw5bz7xgnTEhN
 5yvUrEWLFW4EaL5Y6UZnVMB8IUvFSbEFsoCZYFPE37al0ZQPxROGYuhU6B6cPoaZmzPu
 nEpx5JanxiNWfIKZrLoFVD6xfOPnmL95vTAIG+J2nMGAigqo7ROA22fYfDpB88vydbHB
 GN7A==
X-Gm-Message-State: APjAAAVn3G2niehG9aG2Ah8NIGWbrQuYtqB5NQfLrKk53ub8vIvemoHL
 PfMx/sbScwJG9BYdRBoH1R5uQg==
X-Google-Smtp-Source: APXvYqzDuWdXveb6SRjW1HvCm/mZmoDXZhIUKOs3M2FVMBVBexj4IYGVNINVzPW2DEDgjfa8Asur1A==
X-Received: by 2002:a17:902:31a4:: with SMTP id
 x33mr47571153plb.331.1560264790880; 
 Tue, 11 Jun 2019 07:53:10 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 20/92] ram: rk3399: Add bw enc macro
Date: Tue, 11 Jun 2019 20:20:23 +0530
Message-Id: <20190611145135.21399-21-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075311_737119_0F877E56 
X-CRM114-Status: GOOD (  10.00  )
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

Add simplified and meaningful macro for bw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index a4b1742438..7e0b491859 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -59,6 +59,7 @@
 					SYS_REG_CS1_ROW_SHIFT(ch))
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
 #define SYS_REG_BW_MASK			3
+#define SYS_REG_ENC_BW(n, ch)		((2 >> (n)) << SYS_REG_BW_SHIFT(ch))
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f69194f29b..3241bc285e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1028,7 +1028,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
 		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
 		sys_reg |= SYS_REG_ENC_CS1_ROW(info->cs1_row, channel);
-		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_BW(info->bw, channel);
 		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
