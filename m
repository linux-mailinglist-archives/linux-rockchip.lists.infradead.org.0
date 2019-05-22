Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1983B26577
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 16:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eb/rciKdR41C7YkRMF7zXZw7Chm/UL1B8B3rEoT+OIw=; b=VCTu5SDoKb7eIW
	5tAsAh6IHpFCSdx86kdfBBC7sc7UmpSNkoarWfu5JVDg16B6jN05GxBOwIvD06Ik99+4F/tgbcKDe
	f38ciTmrzVeNKW6huFl2qasnyFx4FlvwMGqcs30LgdOQ0Xo/3NkkY+Q8AmYKRAn2SWGc7gjFkqyuo
	NIeVKq86iK75d0i2AwzwVL8IioXGOPCB2ZAezNUV65ARufVc8QpLolr4B/pu9ZEBoW8EXWh0dkEwm
	ihBI/9hhOK8bjqTV+fLUNY+bnsJ4BXCTReakPa4vddAjHt41J1ku4E0CAn0+9GHJ+90SquBxEJAnP
	8yTyAZqM2qJuAtdCcedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRz9-0001R8-E6; Wed, 22 May 2019 14:12:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRz5-0001Qc-QR
 for linux-rockchip@lists.infradead.org; Wed, 22 May 2019 14:12:49 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTRyy-0001BD-5k; Wed, 22 May 2019 16:12:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: edubezval@gmail.com,
	rui.zhang@intel.com
Subject: [PATCH] Revert "thermal: rockchip: fix up the tsadc pinctrl setting
 error"
Date: Wed, 22 May 2019 16:12:36 +0200
Message-Id: <20190522141236.26987-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_071248_010261_1F670537 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: zhangqing@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-pm@vger.kernel.org, eballetbo@gmail.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This reverts commit 28694e009e512451ead5519dd801f9869acb1f60.

The commit causes multiple issues in that:
- the added call to ->control does potentially run unclocked
  causing a hang of the machine
- the added pinctrl-states are undocumented in the binding
- the added pinctrl-states are not backwards compatible, breaking
  old devicetrees.

Fixes: 28694e009e51 ("thermal: rockchip: fix up the tsadc pinctrl setting error")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/thermal/rockchip_thermal.c | 36 +++---------------------------
 1 file changed, 3 insertions(+), 33 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index bda1ca199abd..7ef9c7efe950 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -172,9 +172,6 @@ struct rockchip_thermal_data {
 	int tshut_temp;
 	enum tshut_mode tshut_mode;
 	enum tshut_polarity tshut_polarity;
-	struct pinctrl *pinctrl;
-	struct pinctrl_state *gpio_state;
-	struct pinctrl_state *otp_state;
 };
 
 /**
@@ -1283,8 +1280,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		return error;
 	}
 
-	thermal->chip->control(thermal->regs, false);
-
 	error = clk_prepare_enable(thermal->clk);
 	if (error) {
 		dev_err(&pdev->dev, "failed to enable converter clock: %d\n",
@@ -1310,30 +1305,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	thermal->chip->initialize(thermal->grf, thermal->regs,
 				  thermal->tshut_polarity);
 
-	if (thermal->tshut_mode == TSHUT_MODE_GPIO) {
-		thermal->pinctrl = devm_pinctrl_get(&pdev->dev);
-		if (IS_ERR(thermal->pinctrl)) {
-			dev_err(&pdev->dev, "failed to find thermal pinctrl\n");
-			return PTR_ERR(thermal->pinctrl);
-		}
-
-		thermal->gpio_state = pinctrl_lookup_state(thermal->pinctrl,
-							   "gpio");
-		if (IS_ERR_OR_NULL(thermal->gpio_state)) {
-			dev_err(&pdev->dev, "failed to find thermal gpio state\n");
-			return -EINVAL;
-		}
-
-		thermal->otp_state = pinctrl_lookup_state(thermal->pinctrl,
-							  "otpout");
-		if (IS_ERR_OR_NULL(thermal->otp_state)) {
-			dev_err(&pdev->dev, "failed to find thermal otpout state\n");
-			return -EINVAL;
-		}
-
-		pinctrl_select_state(thermal->pinctrl, thermal->otp_state);
-	}
-
 	for (i = 0; i < thermal->chip->chn_num; i++) {
 		error = rockchip_thermal_register_sensor(pdev, thermal,
 						&thermal->sensors[i],
@@ -1404,8 +1375,8 @@ static int __maybe_unused rockchip_thermal_suspend(struct device *dev)
 
 	clk_disable(thermal->pclk);
 	clk_disable(thermal->clk);
-	if (thermal->tshut_mode == TSHUT_MODE_GPIO)
-		pinctrl_select_state(thermal->pinctrl, thermal->gpio_state);
+
+	pinctrl_pm_select_sleep_state(dev);
 
 	return 0;
 }
@@ -1450,8 +1421,7 @@ static int __maybe_unused rockchip_thermal_resume(struct device *dev)
 	for (i = 0; i < thermal->chip->chn_num; i++)
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
 
-	if (thermal->tshut_mode == TSHUT_MODE_GPIO)
-		pinctrl_select_state(thermal->pinctrl, thermal->otp_state);
+	pinctrl_pm_select_default_state(dev);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
