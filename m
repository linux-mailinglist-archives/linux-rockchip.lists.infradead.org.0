Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD64B6A806
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdMsmNajZMoPgobTDZCa8EzXyKAM86Y2Xr1/Uok/V8k=; b=RNzxATFEb8WdPC
	2G3e/3c3e0+NP/VG8wOBEM9J1SmojlrB+VBklYWI0VuMNi1NQhSWgHcLlN2lxRkS1LCLpInweHH9q
	ma92i1YWQfOsZ/dTe8/RWPPfaPntmyvxBCrJ3ydLTZ1txUlj7dd4DToxTF/ceGqIw786DNTixKtSI
	5cYwapia0uh7kt8oF5r8h9CW/USRa55a/l4sC/Jxf+LbJr41t3d3+VKVSm6UyNnexW7Z46NLVnal8
	TfT8MkbPw1qqSvrhtlSs4mdCma1uLxBjz3z/Au6DK41xkHsz0lZcwuE7WWm1Hp0oURWA8nqEuHSJd
	dTRdbGzU/LhgGLR6PRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9d-0007zD-DE; Tue, 16 Jul 2019 12:01:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7b-000510-3r
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so9991192plr.12
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pRdXh1cKmOxDhyJeNVB4/lTa5Z+Y787ANmhkfv74kgk=;
 b=j4Ku2On3v4ATjaWeyCELDe8vaSZ0MB5LnP/OXq1YTZ7ALWO533ITcYIb9c1dp7eJA2
 w8TZZrCNE5foyALk8sNGKzKBafM7KfVKBNb/6LP78faveCPS6a+st2u/z0wxrCkig5L6
 1v1OfcZS9NSrIbWyk+yo1/gBaOBzR/jUvGXus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pRdXh1cKmOxDhyJeNVB4/lTa5Z+Y787ANmhkfv74kgk=;
 b=pWQbmvuYUxlUgqf3JFFv0NKSkeqNyKAiNX2ssNqLDXIvO0L/UZi4BwwF40vFSwFDLy
 CV8p7kR5vS45ttBKAW2BS7vGb+esagWx9dEc+UfXpuJrGpZReRjbp+Cn8cvK+no2ISj9
 lClukXC3WmHaMyU5i3yk1LYdPCXOAY0WLFHHrT5n2EdOsCjPcyZ+0WVCboj8ENJ32Ss5
 ql3w9LsqIsIRmgzb8CzrHArIsyByPJ/IpxtuYWBX2e/GWdQAJlvXxRXlQs99RBg8gvmY
 cpw30DJoBHuCfqxUDFnQXnBOWFBF3F32OmEmgQ9GGM5viuRrAPUCTjxM5cwtVB6mu2Wx
 ECuw==
X-Gm-Message-State: APjAAAWixbHeYch4834ggxxsJ3BtdzEjewjAoFudQu7qtGrx3/1TVw4x
 bW9RNkL1fqeKGdHLU401OOsLCg==
X-Google-Smtp-Source: APXvYqwUcNB1whkCW1RL3Nkg1A+G3N5KFtkzy8Mp2jSshl6rtYK+2Fm+jUAf2Z9Z5/ez6BcFTOjrWA==
X-Received: by 2002:a17:902:7791:: with SMTP id
 o17mr35240785pll.27.1563278390221; 
 Tue, 16 Jul 2019 04:59:50 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 32/57] ram: rk3399: Don't disable dfi dram clk for lpddr4,
 rank 1
Date: Tue, 16 Jul 2019 17:27:20 +0530
Message-Id: <20190716115745.12585-33-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045951_237315_7C045731 
X-CRM114-Status: GOOD (  11.44  )
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

The hardware for LPDDR4 with
- CLK0P/N connect to lower 16-bits
- CLK1P/N connect to higher 16-bits

and usually dfi dram clk is configured via CLK1P/N, so
disabling dfi dram clk will disable the CLK1P/N as well.

So, add patch to not to disable dfi dram clk for lpddr4,
with rank 1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1050cbdb07..359ab0b826 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1225,8 +1225,18 @@ static void dram_all_config(struct dram_info *dram,
 		writel(noc_timing->ddrmode.d32,
 		       &ddr_msch_regs->ddrmode);
 
-		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (params->ch[channel].cap_info.rank == 1)
+		/**
+		 * rank 1 memory clock disable (dfi_dram_clk_disable = 1)
+		 *
+		 * The hardware for LPDDR4 with
+		 * - CLK0P/N connect to lower 16-bits
+		 * - CLK1P/N connect to higher 16-bits
+		 *
+		 * dfi dram clk is configured via CLK1P/N, so disabling
+		 * dfi dram clk will disable the CLK1P/N as well for lpddr4.
+		 */
+		if (params->ch[channel].cap_info.rank == 1 &&
+		    params->base.dramtype != LPDDR4)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
