Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B0C1A9706
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 10:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t3Nt1scVAx3DJi6JbSt3MTxw6VK0xpO+r/RscxMLNfU=; b=bUZXDy00/Tle5D
	K+Y7lrsU1f4mXyOPzliG4Bv45IOrXAf7boCVnlvJ8v1l9wzd10kqje9CNrVb3V0L+Lq3iEohN27Br
	aI6AeldBO3sSlWjqb9WEz5ZBhpFhRwKJU9OSxfeXJrDpP/M+Ah0tYUDmW+31c1q0v36z2OaQVJpbp
	WqwC58sdGuPS3qY1y2f3O0Y26Xq+K/BTLo1dGfF455L1mA41b9bZW04NN49DEHjMyt9QPTxrdOpmx
	6LDQnYBcLUcSclzx0gc/TRfCOh281g+quTuPM7k4jxlpPcrlMuk5A/If7xT5IiW48DPGRoULf0Kkx
	x2I44Zk5Bbd6ARr+Cu7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdbv-00074g-Fp; Wed, 15 Apr 2020 08:41:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdZA-00023N-J0
 for linux-rockchip@lists.infradead.org; Wed, 15 Apr 2020 08:38:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jOJjh-00088x-7p; Tue, 14 Apr 2020 13:28:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: jic23@kernel.org
Subject: [PATCH v4 1/2] iio: adc: rockchip_saradc: move all of probe to
 devm-functions
Date: Tue, 14 Apr 2020 13:27:55 +0200
Message-Id: <20200414112756.3015153-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013840_646275_2DCD95F0 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: lars@metafoo.de, heiko@sntech.de, linux-iio@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 xxm@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Parts of the saradc probe rely on devm functions and later parts do not.
This makes it more difficult to for example enable triggers via their
devm-functions and would need more undo-work in remove.

So to make life easier for the driver, move the rest of probe calls
also to their devm-equivalents.

This includes moving the clk- and regulator-disabling to a devm_action
so that they gets disabled both during remove and in the error case
in probe, after the action is registered.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
changes in v4:
- new patch as suggested by Jonathan

 drivers/iio/adc/rockchip_saradc.c | 37 ++++++++++++++++---------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 582ba047c4a6..270eb7e83823 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -193,6 +193,15 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
 	reset_control_deassert(reset);
 }
 
+static void rockchip_saradc_disable(void *data)
+{
+	struct rockchip_saradc *info = data;
+
+	clk_disable_unprepare(info->clk);
+	clk_disable_unprepare(info->pclk);
+	regulator_disable(info->vref);
+}
+
 static int rockchip_saradc_probe(struct platform_device *pdev)
 {
 	struct rockchip_saradc *info = NULL;
@@ -304,6 +313,14 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 		goto err_pclk;
 	}
 
+	ret = devm_add_action_or_reset(&pdev->dev,
+				       rockchip_saradc_disable, info);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register devm action, %d\n",
+			ret);
+		return ret;
+	}
+
 	platform_set_drvdata(pdev, indio_dev);
 
 	indio_dev->name = dev_name(&pdev->dev);
@@ -315,14 +332,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	indio_dev->channels = info->data->channels;
 	indio_dev->num_channels = info->data->num_channels;
 
-	ret = iio_device_register(indio_dev);
+	ret = devm_iio_device_register(&pdev->dev, indio_dev);
 	if (ret)
-		goto err_clk;
+		return ret;
 
 	return 0;
 
-err_clk:
-	clk_disable_unprepare(info->clk);
 err_pclk:
 	clk_disable_unprepare(info->pclk);
 err_reg_voltage:
@@ -330,19 +345,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	return ret;
 }
 
-static int rockchip_saradc_remove(struct platform_device *pdev)
-{
-	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
-	struct rockchip_saradc *info = iio_priv(indio_dev);
-
-	iio_device_unregister(indio_dev);
-	clk_disable_unprepare(info->clk);
-	clk_disable_unprepare(info->pclk);
-	regulator_disable(info->vref);
-
-	return 0;
-}
-
 #ifdef CONFIG_PM_SLEEP
 static int rockchip_saradc_suspend(struct device *dev)
 {
@@ -383,7 +385,6 @@ static SIMPLE_DEV_PM_OPS(rockchip_saradc_pm_ops,
 
 static struct platform_driver rockchip_saradc_driver = {
 	.probe		= rockchip_saradc_probe,
-	.remove		= rockchip_saradc_remove,
 	.driver		= {
 		.name	= "rockchip-saradc",
 		.of_match_table = rockchip_saradc_match,
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
