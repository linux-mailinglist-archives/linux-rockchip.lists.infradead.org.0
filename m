Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C16A7EA
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfGeoVI1rx/0ynqAz+Wat/rCy61yMFyQjNeJxTIqL4Y=; b=GzCwnb9hQ2SNkK
	8DnA7vAb+G3hs+UbAbYYeOncAne4WqWi/rCfOg0q6lSSCyM65zucGX4xq8DUm3IVjOT1KZ8pzVgYD
	rdbjgbY+wVU1mAE7o+a7HvypIsjiZDrTgluKLSx9/QmF0wz5L8JNmAJrjz2GPtnIIr8MZpeIv6dJN
	0WYlw0mAWcBbkrmZmvPQmfj9IAf2GWyk+12UcrDJHZYBslMM9mBBGOsUCsy5vAk7LOsAiB9l2MbAY
	wprxlHu0d39eKc7hcjEKPSBJ9Z44rNuWL+A2upLImO68yMtNNYQkD6yQ8LWrSVouzG3Q5BPj7gsk8
	kJSEHFmpQraqCwrd7xwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8K-0006k0-IH; Tue, 16 Jul 2019 12:00:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM63-0003iO-Ns
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so9010013pff.8
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z3Lk8qTZYKqG9EuBV9bI00XJEHWQHcKKp+DGT0GYOXk=;
 b=kfFDM4CUxStfbRKJt0LDJP4DLhBpGQR1UyBz9uLrVenR8rBetKugquMAaMNCKCNl+G
 MRQE4pHj9ZQJ3LS4JOt/8+hUxSjWfHZDptKo5DYdLadY8iFGxd8Xq5rgv4S116eLKm2F
 TPw+CNlKeEp8l0gsA0/MYFvquVPDA1rVuTSbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z3Lk8qTZYKqG9EuBV9bI00XJEHWQHcKKp+DGT0GYOXk=;
 b=KShmVQ5vV7Ck2Ao4DHHecffnahdE3O46uaSLkNRfybKZX11E2WvXlI7fNr3tHNQBkQ
 /R4gDpjhOLdBObHBtl432HCoF/wLjdzsOwXMc03BJAl5LZUAfGzvgFhoRWevUvW49Ubp
 zR27DGq6MkQ5Mix/w76A8qqagmPA+E1H6P6B+zbikwK2rzQeJeGXUxBIinJAgGw9k7II
 6TGwv/5GPItA53z4E6G1CvHLwZg3SJsmM5gqHOOf3A7yRWkY9YkISlHZp6WcJW+qYTNe
 p8rDpK/3yMLQGixOfA2+v8w/84DpvmXOHivDwvDaohlrwlEMX8vKB/9fz3ur+NqjOmQR
 7sVw==
X-Gm-Message-State: APjAAAVwPUax+pKbPMtnrY6j0KL/rMtuyVjwmslq2RBqYK+R2iHI8d51
 bVvfGaDtMMRvOfYigacwnUyL/A==
X-Google-Smtp-Source: APXvYqzwOunmv7Ww9NlzKAentBxBz9K8gp0GBwaVjLD/gy/O6I9Hs17DWrFJMD2QeuedW5YjzdG0Cg==
X-Received: by 2002:a17:90a:380d:: with SMTP id
 w13mr35059640pjb.138.1563278294439; 
 Tue, 16 Jul 2019 04:58:14 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 05/57] ram: rk3399: Add rank enc macro
Date: Tue, 16 Jul 2019 17:26:53 +0530
Message-Id: <20190716115745.12585-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045815_938477_6EEEFAF9 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Add simplified and meaningful macro for rank.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 2d0be920d9..db9e30126f 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -79,6 +79,8 @@ struct sdram_base_params {
 					SYS_REG_NUM_CH_SHIFT)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
+#define SYS_REG_ENC_RANK(n, ch)		(((n) - SYS_REG_RANK_MASK) << \
+					 SYS_REG_RANK_SHIFT(ch))
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
 #define SYS_REG_COL_MASK		3
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 874e896369..c2390a771c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1091,8 +1091,7 @@ static void dram_all_config(struct dram_info *dram,
 		idx++;
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->cap_info.row_3_4, channel);
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg |= (info->cap_info.rank - 1) <<
-			   SYS_REG_RANK_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_RANK(info->cap_info.rank, channel);
 		sys_reg |= (info->cap_info.col - 9) <<
 			   SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->cap_info.bk == 3 ? 0 : 1 <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
