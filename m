Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3A9A78BC
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 04:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PNYY42wZpAlFsEUoo6wB69mA4Mj+bl7O0B5BKgrHKdE=; b=lHP
	GgkNaeEAUE8h2VM/CIlwguxO38QXH1AymGnMpRN80FKRSgxzLtbKmKuHnx/0tGOilh5qwIe5GsQ7l
	W+kmpb29DFPKyY06lmt7K+ASSPURELD35Pr/qMvZmB52/o468qN/3K23KvPtijoh+Gi5GGydCT8CO
	1EJGxvn/bWGkCrPHWj/zs776YI0/Zn3++S90l0honUsR+4k07W/C9sG34qEV7J9b7Es9euP26x1DN
	OQxxXv21acm3y9qWJ7t1lDsmW85E+ju6C+nEZjEH/tUjphAMxzRjXVE3duxIB0IyjkB7M8eOafHCY
	xS8Cc7V92Qp8NKZ4xFfw5ySig/3vpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5L2G-00035b-AJ; Wed, 04 Sep 2019 02:28:40 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5L2C-00034y-GE
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 02:28:38 +0000
Received: from shawn.lin?rock-chips.com (unknown [192.168.167.177])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0803063E54;
 Wed,  4 Sep 2019 10:28:27 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10084T140370216199936S1567564098828954_; 
 Wed, 04 Sep 2019 10:28:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fd477a8e067e3326f6773ed9a13e4d86>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: ulf.hansson@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH] mmc: dw_mmc-rockchip: Using 180 sample phase if all phases
 work
Date: Wed,  4 Sep 2019 10:27:10 +0800
Message-Id: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_192836_705965_6DF5D059 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-mmc@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

default_sample_phase is used to make sure the cards are enumurated
properly and will be set to 0 if not assigned. However, the sample
phase should depends on the tuned phase if running higher clock rate.
If all phases work but default_sample_phase isn't assigned, driver
set sample phase to 0 for this case, which isn't the best choice,
because we always expect to set phase to the middle of window. To
solve the following continually issues we have seen in the test, we
need set phase to the more stable one, 180, if all phases work.

mmcblk1: error -84 transferring data, sector 1735064, nr 8, cmd
response 0x900, card status 0xb00
mmcblk1: retrying using single block read
dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
mmcblk1: retrying because a re-tune was needed

.....

mmcblk1: error -84 transferring data, sector 1728672, nr 248, cmd
response 0x900, card status 0xb00
mmcblk1: retrying using single block read
dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/dw_mmc-rockchip.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index d4d0213..9ef9723 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -209,9 +209,8 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	}
 
 	if (ranges[0].start == 0 && ranges[0].end == priv->num_phases - 1) {
-		clk_set_phase(priv->sample_clk, priv->default_sample_phase);
-		dev_info(host->dev, "All phases work, using default phase %d.",
-			 priv->default_sample_phase);
+		clk_set_phase(priv->sample_clk, 180);
+		dev_info(host->dev, "All phases work, using phase 180.");
 		goto free;
 	}
 
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
