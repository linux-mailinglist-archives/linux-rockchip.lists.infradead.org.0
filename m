Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9569F1593CF
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Feb 2020 16:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=14Ea6cwVsSu3IqDd9ZpIbCFxCRasTpY+7yc/JvjyU/c=; b=FsU
	0GKDUUVZtJOSMbNEz9SeRftxz1a9xYIskcSkWxjFerfNtzE6FMd86uSq6D6GbQ/4iD0gl5pbK1aTg
	K2KG/IX+qwkhpEkv/Jj4iMZ3uxbJu7CZOVk7dW+AmNlFnKGbQ/LiPrYJmjzIXBFRYcatvBXd5nmpa
	cq3N4yDU+H/1j5UCxj9dxzu2h/ht7GIpLYIVYNn7ZsClT/1MOsfS0GNTPLnJZ3dDM9HhedATpAvdl
	ExkLJ8W3V/mkbTrGQ6mL1j/dKq7mZI2sO8PeMVGEmkJtxpP5TIh4gwqpp0IeCPTkyB6NR8VIt75SJ
	P5+WIOrDnTWt173UKpYpmBECDs7W0lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xp4-0006Ss-Pm; Tue, 11 Feb 2020 15:51:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xp0-0006Pp-Fz
 for linux-rockchip@lists.infradead.org; Tue, 11 Feb 2020 15:51:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0561031B;
 Tue, 11 Feb 2020 07:51:34 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7FA1D3F68E;
 Tue, 11 Feb 2020 07:51:33 -0800 (PST)
Date: Tue, 11 Feb 2020 15:51:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Applied "regulator: mp8859: add supply entry" to the regulator tree
In-Reply-To: <20200203110034.1448-1-m.reichl@fivetechno.de>
Message-Id: <applied-20200203110034.1448-1-m.reichl@fivetechno.de>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_075134_612838_9A2F5F9C 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, heiko@sntech.de,
 Liam Girdwood <lgirdwood@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The patch

   regulator: mp8859: add supply entry

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.7

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 4d49177f2cd7dce6e669584a5114b073b26a0d0f Mon Sep 17 00:00:00 2001
From: Markus Reichl <m.reichl@fivetechno.de>
Date: Mon, 3 Feb 2020 12:00:33 +0100
Subject: [PATCH] regulator: mp8859: add supply entry

Add vin_supply to the regulator description to support a nice
regulator tree.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20200203110034.1448-1-m.reichl@fivetechno.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/mp8859.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/regulator/mp8859.c b/drivers/regulator/mp8859.c
index 1d26b506ee5b..6ed987648188 100644
--- a/drivers/regulator/mp8859.c
+++ b/drivers/regulator/mp8859.c
@@ -95,6 +95,7 @@ static const struct regulator_desc mp8859_regulators[] = {
 		.id = 0,
 		.type = REGULATOR_VOLTAGE,
 		.name = "mp8859_dcdc",
+		.supply_name = "vin",
 		.of_match = of_match_ptr("mp8859_dcdc"),
 		.n_voltages = VOL_MAX_IDX + 1,
 		.linear_ranges = mp8859_dcdc_ranges,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
