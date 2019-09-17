Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B80B48EC
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScLzGqeGtIleQXidCfbUw1bfcg/lldqjMbIH3ypLBao=; b=qTY+EGdekgq102
	LwTj5ac4fI9hJk17pnJB7M0RpmyA04/rpI07iCzQJfAccHhi9V4LUc/us3HnYoHcT5SoQiVJ1HTP2
	P2DR6WVgGLG7654UzjpXo8wz22IMHcGVHCjYXJiL6ZXp8Ehr71KiOWYh1+zyLVjQ2I9Qfl9vo3ied
	iBNcm1OJdGBkm2ck46n23mhgX90E87r9Cnq/z/v9g2pJ9aLrtKFc8BVFlLkyqhbZ2WKtrClGDJyyW
	QgAYF+6JEdNO6/BZMPmiES9JcPXKRIMvGsWDl8JKHtR+ISXCTSjEJsXt1o9+hxK/m9v97zNlKTmOv
	/QpvnUZ1/Xlh3yqIes2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8cE-000567-Ur; Tue, 17 Sep 2019 08:13:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8c7-00051u-0p
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:13:33 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8c0-0005RU-Hh; Tue, 17 Sep 2019 10:13:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee.jones@linaro.org
Subject: [PATCH 3/4] mfd: rk808: set rk817 interrupt polarity to low
Date: Tue, 17 Sep 2019 10:12:55 +0200
Message-Id: <20190917081256.24919-3-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
References: <20190917081256.24919-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011331_274425_6A5C7CF5 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: d.schultz@phytec.de, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

All other rk8xx operate with the polarity on low and even the old
submitted devicetree snippet for the px30-evb declared the irq as low.
So bring the rk817 preset in line with this, as there is really no
reason for it to be the only with with a high polarity.

The rk809/rk817 hasn't been added to any devicetrees so far, so this
won't break anything.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/rk808.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 966841744ee6..c0e5e921766d 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -207,7 +207,7 @@ static const struct rk808_reg_data rk808_pre_init_reg[] = {
 
 static const struct rk808_reg_data rk817_pre_init_reg[] = {
 	{RK817_RTC_CTRL_REG, RTC_STOP, RTC_STOP},
-	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_H},
+	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_L},
 	{RK817_SYS_CFG(1), RK817_HOTDIE_TEMP_MSK | RK817_TSD_TEMP_MSK,
 					   RK817_HOTDIE_105 | RK817_TSD_140},
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
