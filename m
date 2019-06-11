Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43263CFD2
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3HDZ1VQfRt51Mei1rbL1LsW4JgwJU2clknaXtB1kD8=; b=KHXvnI4p4d43PB
	CfVTClZ6QpweNWNeFeSzaplMLFhPXDBot6V184xL4wAAF6UprIrYMcJ/v1HlT8iHM/gLvN7rWopEX
	qU+TGVt1MxLutpyKs28j3l+WaAOcdtqnX6hvxiyUxiDdws3aH5TowNENc5MroGlgR/Xw6V480kO2O
	m3zaBL1OsW8s1udTFAY9Uy0syWUhoTpy3dFTsBCBKwRuYfxe4IKduX/uDSFZUZ94rlZdZ+tpgaAJc
	9MT1pZtPMo0Jzvuc0mvU6Q57j8NTQ/ZAgH+ajZFxMGdtrjwEgTr0L17vJcKYm3CpkYjaPSr1P87u8
	dAhQuxQ+Q8SXcHvClogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBy-0007pO-Le; Tue, 11 Jun 2019 14:56:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBu-0007nL-89
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id k187so6618340pga.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TpXn9gLeVxf8FJ7fZ8L6VRSMcI8dM+6/u5xw7csXCnQ=;
 b=ptWmYvW2fd4ksjdKYuoF/EEYeVGbExANkB1BYkyHVqOudOtkEMLoGGM90EZ+L9FDdk
 TWHwaKQOriiQ/zIuEKj5672rLAkzJYCuJuJXQ84rD3z1N4tYJFUuXn35CrJoBdGcgxSF
 DfHajKCjJswHzucM113z3XGQg6CCSw8R2xPfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TpXn9gLeVxf8FJ7fZ8L6VRSMcI8dM+6/u5xw7csXCnQ=;
 b=Fq/czWgTEo9ige0y+iKhqoRySY1F3YUsvAQiJEpL2/VNQvrOT2ckdZGTGflLTX7E5W
 UYJJpNA0GvRsIzl5bbmu4fxZPDjzx5jeLzcXYfhJW6iV3SknyheQoqMf6ZgXucz+uEm8
 5ngpjDnj1UoSF2mkh0OJgGBLla6yQmiUCNMpnSkCfK7VWMdJz6aZLskrAonPiBOpwhMT
 DoUnmG+pF1OKtLV7bGVpR/mcZRUwKa1JALTIauTPy/QxoHkwO7EDodmBbVEVRkvZODkL
 kLa7O4Z/nOO8YHMPoWcfmWSc+fzEiGGQD7NtR8Z4pbmtoUgPu1p3rEmUlTVSQWXCg5qQ
 39kA==
X-Gm-Message-State: APjAAAWa8KX98Zwa2A1ny41tERMvAYFxzcuGQaj3eUbGNRPRV75RP762
 L5uCJqh6be8k0Bl8p7HPOrJ7Fw==
X-Google-Smtp-Source: APXvYqzeWFmeRLULBlr2vnTMfyZYEat6vJfMS/ZThzAvf4q0qtVCyH1Msj30oS29RC880pkBoNodsA==
X-Received: by 2002:aa7:8ac9:: with SMTP id b9mr70662639pfd.260.1560264961782; 
 Tue, 11 Jun 2019 07:56:01 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:01 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 63/92] ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
Date: Tue, 11 Jun 2019 20:21:06 +0530
Message-Id: <20190611145135.21399-64-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075602_369388_204769F1 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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

PHY_898, PHY_919 would require to configure PHY LP4 boot
pll control and ca for lpddr4.

So, configure the same in pctl_cfg for LPDDR4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1abeee7198..7d2359740c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -579,6 +579,13 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	writel(sdram_params->phy_regs.denali_phy[911], &denali_phy[911]);
 	writel(sdram_params->phy_regs.denali_phy[912], &denali_phy[912]);
 
+	if (sdram_params->base.dramtype == LPDDR4) {
+		writel(sdram_params->phy_regs.denali_phy[898],
+		       &denali_phy[898]);
+		writel(sdram_params->phy_regs.denali_phy[919],
+		       &denali_phy[919]);
+	}
+
 	dram->pwrup_srefresh_exit[channel] = readl(&denali_ctl[68]) &
 					     PWRUP_SREFRESH_EXIT;
 	clrbits_le32(&denali_ctl[68], PWRUP_SREFRESH_EXIT);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
