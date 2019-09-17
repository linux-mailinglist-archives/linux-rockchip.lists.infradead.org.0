Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFD0B48ED
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1ohBKn50adgTaplE8D1u/dVeuItqOh1cnX+A102g9Q=; b=SmDZ8sXlGv3WBA
	0wRSzmllsR555uQc/j9oEyOmFZgoidBW0KgRo+K6uRXZ+EHCc1eEi8uCdka4xy2aanVwnPTaRMk+x
	qfxKiKbTEn5forI1PpfOyYVbCFjdLGRvgZ6erxW1kDhjm6F63NmAuYHfXAOi5h2BxJ2Q9h0n377tg
	2I+Gh41u+3lhzzAbZkr7YqQFq1F2EhMUfQgGKidGbyRrbpIAd7YYkKrUThwIBilb2AwbMegmTiNFm
	kKiFBlNkqKrnGoQva8ngleRC0Wnu4aSJ95JTWPJVWNcXdn63hYjyaLQRYI5tbtm5oB/sAyQoT/56X
	mYRJGimvbg/dmYl96EQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8cI-00057U-Uo; Tue, 17 Sep 2019 08:13:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8c7-00051r-0V
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:13:33 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8c0-0005RU-QY; Tue, 17 Sep 2019 10:13:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee.jones@linaro.org
Subject: [PATCH 4/4] mfd: rk808: use DEFINE_RES_IRQ for rk808 rtc alarm irq
Date: Tue, 17 Sep 2019 10:12:56 +0200
Message-Id: <20190917081256.24919-4-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
References: <20190917081256.24919-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011331_289421_B2E99802 
X-CRM114-Status: GOOD (  10.17  )
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

Do not open code the definition, instead use the nice DEFINE_RES_IRQ
macro for it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/rk808.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index c0e5e921766d..a69a6742ecdc 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -109,11 +109,7 @@ static const struct regmap_config rk817_regmap_config = {
 };
 
 static struct resource rtc_resources[] = {
-	{
-		.start  = RK808_IRQ_RTC_ALARM,
-		.end    = RK808_IRQ_RTC_ALARM,
-		.flags  = IORESOURCE_IRQ,
-	}
+	DEFINE_RES_IRQ(RK808_IRQ_RTC_ALARM),
 };
 
 static struct resource rk817_rtc_resources[] = {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
