Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7596D1FFAA7
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 19:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=047a6YvOjz2E3vj5PNpYb/WtEs0LYcRdNcaTBw0r9Cc=; b=UZLX/7+ttL/RPz
	p7G5ioo0TbBFhqqhi9/S+7aMxv5vu2mSolSm4rMfvQu+jwB1RTPHW8RRqKAdSYqQexLsxRI2Qm2E5
	R3zI3Wd/ZXtbcGvZCymXiu+4d985NJMMtpvQh5Ul4D1FVxsmwDfzBbr7gHfEV4uV47CnXR7i+X/1b
	0j6wHSofSkbdCw2MM7gWMh+GT2LrIt8GqeHf1U7ZZ8/ciBjb2ExfqQcwMAOgvP3WIKx/IROlI2iAM
	Xjb23kZ2CSLEiJczA+orYTl2iCHbHdMcxlj3FvWXTfeZ8hviOU8agVvCHEtrxwTO/oEZR5y+oreKe
	EStrjuF7SIKo6yTnP/Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlymS-0000Ka-To; Thu, 18 Jun 2020 17:56:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlymC-0008An-Pa; Thu, 18 Jun 2020 17:56:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD981101E;
 Thu, 18 Jun 2020 10:56:34 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D4C763F73C;
 Thu, 18 Jun 2020 10:56:33 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de,
	mturquette@baylibre.com,
	sboyd@kernel.org
Subject: [RESEND PATCH] Revert "clk: rockchip: fix wrong mmc sample phase
 shift for rk3328"
Date: Thu, 18 Jun 2020 18:56:29 +0100
Message-Id: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_105636_884444_13A62477 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.

According to a subsequent revert in the vendor kernel, the original
change was based on unclear documentation and was in fact incorrect.

Emprically, my board's HS200 eMMC at 200MHZ apparently gets lucky with a
phase where this had no impact, but limiting max-frequency to 150MHz to
match the nominal capability of the I/O pins made it virtually unusable,
constantly throwing errors and retuning. With this revert, it starts
behaving perfectly at 150MHz too.

Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for rk3328")
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

Resending with the edited commit log I actually meant, rather than the
earlier draft I managed to generate the previuous patch from, since that
one seems to have slipped through the cracks anyway.

ybetter commit message
 drivers/clk/rockchip/clk-rk3328.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index c186a1985bf4..2429b7c2a8b3 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -808,22 +808,22 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
 	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "clk_sdmmc",
 	    RK3328_SDMMC_CON0, 1),
 	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "clk_sdmmc",
-	    RK3328_SDMMC_CON1, 0),
+	    RK3328_SDMMC_CON1, 1),
 
 	MMC(SCLK_SDIO_DRV, "sdio_drv", "clk_sdio",
 	    RK3328_SDIO_CON0, 1),
 	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "clk_sdio",
-	    RK3328_SDIO_CON1, 0),
+	    RK3328_SDIO_CON1, 1),
 
 	MMC(SCLK_EMMC_DRV, "emmc_drv", "clk_emmc",
 	    RK3328_EMMC_CON0, 1),
 	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "clk_emmc",
-	    RK3328_EMMC_CON1, 0),
+	    RK3328_EMMC_CON1, 1),
 
 	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "clk_sdmmc_ext",
 	    RK3328_SDMMC_EXT_CON0, 1),
 	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "clk_sdmmc_ext",
-	    RK3328_SDMMC_EXT_CON1, 0),
+	    RK3328_SDMMC_EXT_CON1, 1),
 };
 
 static const char *const rk3328_critical_clocks[] __initconst = {
-- 
2.23.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
