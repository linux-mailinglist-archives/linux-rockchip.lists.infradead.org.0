Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077A63CF8C
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5M8wHgzVTcjjWVgv339JFy1v1Wmig2FQX22uWrdATg=; b=vCraGTOrIKh5OE
	bMBQgswruu1af6+1+gWTvOdz2M6dHJdL+nZtB6pXuw43IMPvzzToK4oH/YN27Hqxb4ZHP2dlVOoM8
	aI+glhR9zonH3QTs8U0/qb1jCNFeZIx/SFM1tNhA9wQgJDEVCnbDe/F5PkiYk3sWDuKYeOARGWPbQ
	mhuPFEdXjSIp+wzYqWcbo2pKjgM58wad/+rzC1xRyMTHxn/dPBfjmqGsFYa5SXxFaTDvUj9ciH/rI
	VtihBguQ4HDqxuBmPbP3O7EqO0THENEy4mvyJ4CX5PrYI4nOOyCr8+IWzdViOtkvP3F0azNmg3o2m
	6ktSPh1hrPN6aC7GdTQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9T-0004of-77; Tue, 11 Jun 2019 14:53:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9Q-0004n8-1w
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:29 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so5215460plb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ft8W9Se2n2QkLd+lJNW66KUzN7VPeSOR5seoant/xQg=;
 b=X2zvOdfcjnI2A05kIU6nkoV5qFIIxewq5Q1qAohGjPBmrC2nqE/NtJuqJjV4HRwIDS
 8clR6Wu90aneKJWgWKt3cnhux+PnVObyQkmFUoJGu3irlZvJ3UmAwa5VgAvIYNaZnZlm
 h/MRdAJzNQFYyRJRlVFATxHVbxT9tzvSlwSUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ft8W9Se2n2QkLd+lJNW66KUzN7VPeSOR5seoant/xQg=;
 b=rx0dVuxdCJ7G4xqJm12HcNQxZvHraok1UvxvIQNSL7w5vlk/Sn3YAkcM65N07Rj5IQ
 0i6rfjbJdeX3GYKyCM+U7rSngB3Isj5Gc8qrX8WZOh75Vp9qq5uKgQGzaLbMSJtgA4dl
 kPxUcmPbfYIEpOJAE9i47mu2TFCOa7CeMZ2KP6rbxFjWXjKIfXFwaA8puWtZ072/VYZW
 BIIDQ1DGYF8kP91f51NotsHoelOvLQTbN4pSyPVP6Ax6TAJJt5woIViBxPUQKrPb3GPJ
 OyS1LOno+2CeN80n0s2ByUHciCOvXQEZOPO/qsT7qk5YoxhWNQ/AYo6kSf6Qwz5V3Dwf
 mswQ==
X-Gm-Message-State: APjAAAVrUP5zHv2uqR5cEKU7SaKFMTZHWwkH1xVL1I4s1/x+BhMn7gKe
 qZgH70oEpl0F5R3WD46A1Z9e5w==
X-Google-Smtp-Source: APXvYqzAMB1Q/YPwHKYQctrYYCmzlcCp92LVgpQjOuaGVTq46o9tlvvxPcuhyqBcsRlbPQSZkIEpKA==
X-Received: by 2002:a17:902:760a:: with SMTP id
 k10mr56058835pll.83.1560264807139; 
 Tue, 11 Jun 2019 07:53:27 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 24/92] ram: rk3399: Add cs1_col enc macro
Date: Tue, 11 Jun 2019 20:20:27 +0530
Message-Id: <20190611145135.21399-25-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075328_109047_51D82C69 
X-CRM114-Status: UNSURE (   8.80  )
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

Add dram config macro for handling cs1 column.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 3 +++
 drivers/ram/rockchip/sdram_rk3399.c               | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index dc7275656e..637a0de902 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -74,6 +74,9 @@
 				     (4 + 2 * (ch)); \
 		} while (0)
 
+#define SYS_REG_CS1_COL_SHIFT(ch)	(0 + 2 * (ch))
+#define SYS_REG_ENC_CS1_COL(n, ch)      (((n) - 9) << SYS_REG_CS1_COL_SHIFT(ch))
+
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 772fde9732..d77a8310cd 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1033,6 +1033,7 @@ static void dram_all_config(struct dram_info *dram,
 		if (info->cs1_row)
 			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
 					    sys_reg3, channel);
+		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->col, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
