Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6952BC5F
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 01:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6qiYedrT3T71dNTfAthD1tyJgoW56hIuZ1juwyrfhRE=; b=q9Vdv40L40Cfle
	/31BjtaPEEoUFBbK7Xr522xQhKVuOlwK2HL6Py2L0XBZCV2p/rxSQ94e0uwCtNxXSiDuCwf4UUo8v
	uAFHcjUM//5xNXYHkM2JQyqeFi2PGDzLcko4i8u/9ooFE3fjZ9i6vv7HELM5tzM39eKrtneQuUzDN
	LkH7/BGj0BjX0ygSm6qZ6vyhgK7TaMJ07TcHpLufWPkgY5ieDG/fkoryXzPY3uwTdMM6aX+HiOBij
	9MVPXrdh80icJkYPMKBBROzrzuJ7qh01dVvIQ3T9B2I28qnmmB8wB520P3XRObqy/z5MzqpWd2bOc
	WC8nmwvk7L9gDB2ZyV2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVPCG-0005ih-EU; Mon, 27 May 2019 23:38:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVPC7-0005cp-OB
 for linux-rockchip@lists.infradead.org; Mon, 27 May 2019 23:38:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so867636wme.0
 for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2019 16:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=QG/8Rnb0DyTmqkfQVdHwtJUKymSeLn22v1j/v+Zfv10=;
 b=twU3B5G6hUNmvsA+GJSfLQGrc0Wmk8+6hcJHPXC2/O6LR5N6/ST8iHXYC2XCmg16Mh
 4Mahg3OcWbPTu7UROb9BNBXvjG6g24vTI/Qoa8CK75JNGilUKn1Pe7/SCuXi8JoIzarz
 b7rR6I0WKrUhhyPV5cKAwXHG02RySS0OHy0u4L5XCPRqiy9uYwjs3M8/cImJnnFdTRU7
 hxQt2vZKLrz9PuqI0mJ2A/u7Bz4Iy2AL+AWATpCQLbulvVxEmC3CJY1iEdPHpiqbUQJS
 VUItAzWCbZZXR+LVZZPZhjsammviuvqYyvPzVa9TMRxZepmQi1hEuK6wCbFLKDLl1ck7
 UqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=QG/8Rnb0DyTmqkfQVdHwtJUKymSeLn22v1j/v+Zfv10=;
 b=rY8c4Ey/upwLxhaxW4JfO98N8zw6YHu7ff8DQ65evG3fGcBwmGpvcxvJ7i5MjGhTuW
 6A9tF//Mi2SE1atP4ClaoMW00lEomDJXJ4SDoP2o+6X3pGONlShp2Gz+2xO155y7y4EE
 BeXUSr2Ymc9MoPLZjFtyOXWT3fI6cfNeb5R41mFZa2I3RbF0UhiVT3dTX3M/cWOLqfxx
 jqBuw21m5nzFIwpmfDKgIZCaANNOpfJPlMC8R5YwF/V++527bubM/paQqHJe6OV/vowF
 ImPkjRq7Qlck5NlbtOEeELb0nWDh8iXdf7W2PrIswsRY2aOiBs+GwWW+lovaNzvhcNgh
 YNSw==
X-Gm-Message-State: APjAAAWHol9WKG0nOUXea3YgHMnFQv2iaE0OzD3iCYiCzZIoAt4cJ08c
 uVQM1kb9QqL0sHkrpx3+hNh6VA==
X-Google-Smtp-Source: APXvYqycY7TK5ewYXCq0S0cSf/toi0bB8hH+l5xVHEOHdBN5VAaHmUqLJn/igiVGSV9taE8fpH7wUA==
X-Received: by 2002:a1c:480a:: with SMTP id v10mr881424wma.120.1559000297169; 
 Mon, 27 May 2019 16:38:17 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id h6sm10604083wrm.47.2019.05.27.16.38.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 16:38:16 -0700 (PDT)
Message-ID: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
Date: Mon, 27 May 2019 16:38:16 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: linusw
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: for-next
X-Kernelci-Kernel: v5.2-rc1-8-g73a790c68d7e
Subject: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_163819_998766_19377DE4 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on rk3288-veyron-jaq

Summary:
  Start:      73a790c68d7e Merge branch 'devel' into for-next
  Details:    https://kernelci.org/boot/id/5cebf03d59b514dd627a3629
  Plain log:  https://storage.kernelci.org//linusw/for-next/v5.2-rc1-8-g73a790c68d7e/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org//linusw/for-next/v5.2-rc1-8-g73a790c68d7e/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
  Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       linusw
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/
  Branch:     for-next
  Target:     rk3288-veyron-jaq
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 28694e009e512451ead5519dd801f9869acb1f60
Author: Elaine Zhang <zhangqing@rock-chips.com>
Date:   Tue Apr 30 18:09:44 2019 +0800

    thermal: rockchip: fix up the tsadc pinctrl setting error
    
    Explicitly use the pinctrl to set/unset the right mode
    instead of relying on the pinctrl init mode.
    And it requires setting the tshut polarity before select pinctrl.
    
    When the temperature sensor mode is set to 0, it will automatically
    reset the board via the Clock-Reset-Unit (CRU) if the over temperature
    threshold is reached. However, when the pinctrl initializes, it does a
    transition to "otp_out" which may lead the SoC restart all the time.
    
    "otp_out" IO may be connected to the RESET circuit on the hardware.
    If the IO is in the wrong state, it will trigger RESET.
    (similar to the effect of pressing the RESET button)
    which will cause the soc to restart all the time.
    
    Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
    Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
    Signed-off-by: Eduardo Valentin <edubezval@gmail.com>

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 9c7643d62ed7..6dc7fc516abf 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -172,6 +172,9 @@ struct rockchip_thermal_data {
 	int tshut_temp;
 	enum tshut_mode tshut_mode;
 	enum tshut_polarity tshut_polarity;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *gpio_state;
+	struct pinctrl_state *otp_state;
 };
 
 /**
@@ -1242,6 +1245,8 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		return error;
 	}
 
+	thermal->chip->control(thermal->regs, false);
+
 	error = clk_prepare_enable(thermal->clk);
 	if (error) {
 		dev_err(&pdev->dev, "failed to enable converter clock: %d\n",
@@ -1267,6 +1272,30 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	thermal->chip->initialize(thermal->grf, thermal->regs,
 				  thermal->tshut_polarity);
 
+	if (thermal->tshut_mode == TSHUT_MODE_GPIO) {
+		thermal->pinctrl = devm_pinctrl_get(&pdev->dev);
+		if (IS_ERR(thermal->pinctrl)) {
+			dev_err(&pdev->dev, "failed to find thermal pinctrl\n");
+			return PTR_ERR(thermal->pinctrl);
+		}
+
+		thermal->gpio_state = pinctrl_lookup_state(thermal->pinctrl,
+							   "gpio");
+		if (IS_ERR_OR_NULL(thermal->gpio_state)) {
+			dev_err(&pdev->dev, "failed to find thermal gpio state\n");
+			return -EINVAL;
+		}
+
+		thermal->otp_state = pinctrl_lookup_state(thermal->pinctrl,
+							  "otpout");
+		if (IS_ERR_OR_NULL(thermal->otp_state)) {
+			dev_err(&pdev->dev, "failed to find thermal otpout state\n");
+			return -EINVAL;
+		}
+
+		pinctrl_select_state(thermal->pinctrl, thermal->otp_state);
+	}
+
 	for (i = 0; i < thermal->chip->chn_num; i++) {
 		error = rockchip_thermal_register_sensor(pdev, thermal,
 						&thermal->sensors[i],
@@ -1337,8 +1366,8 @@ static int __maybe_unused rockchip_thermal_suspend(struct device *dev)
 
 	clk_disable(thermal->pclk);
 	clk_disable(thermal->clk);
-
-	pinctrl_pm_select_sleep_state(dev);
+	if (thermal->tshut_mode == TSHUT_MODE_GPIO)
+		pinctrl_select_state(thermal->pinctrl, thermal->gpio_state);
 
 	return 0;
 }
@@ -1383,7 +1412,8 @@ static int __maybe_unused rockchip_thermal_resume(struct device *dev)
 	for (i = 0; i < thermal->chip->chn_num; i++)
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
 
-	pinctrl_pm_select_default_state(dev);
+	if (thermal->tshut_mode == TSHUT_MODE_GPIO)
+		pinctrl_select_state(thermal->pinctrl, thermal->otp_state);
 
 	return 0;
 }
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [0fbee1df2078fa1f61e2da14f51ceb357c79ae69] gpio: Update documentation
git bisect good 0fbee1df2078fa1f61e2da14f51ceb357c79ae69
# bad: [73a790c68d7e35d1f7092d2b7fbc758f49833bf4] Merge branch 'devel' into for-next
git bisect bad 73a790c68d7e35d1f7092d2b7fbc758f49833bf4
# good: [b3a5e648f5917ea508ecab9a629028b186d38eae] Merge tag 'tty-5.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty
git bisect good b3a5e648f5917ea508ecab9a629028b186d38eae
# good: [8e4ff713ce313dcabbb60e6ede1ffc193e67631f] Merge tag 'rtc-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux
git bisect good 8e4ff713ce313dcabbb60e6ede1ffc193e67631f
# good: [5fd09ba68297c967f5ba6bea9c3b444d34f80ee5] Merge tag 'for-linus-5.2b-rc1-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/xen/tip
git bisect good 5fd09ba68297c967f5ba6bea9c3b444d34f80ee5
# bad: [e8a1d70117116c8d96c266f0b99e931717670eaf] Merge tag 'armsoc-dt' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect bad e8a1d70117116c8d96c266f0b99e931717670eaf
# good: [b45da609a02460c6a34c395f03f891f1fb2a021a] Merge tag 'imx-bindings-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/dt
git bisect good b45da609a02460c6a34c395f03f891f1fb2a021a
# bad: [22c58fd70ca48a29505922b1563826593b08cc00] Merge tag 'armsoc-soc' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect bad 22c58fd70ca48a29505922b1563826593b08cc00
# good: [cc7ce90153e74f8266eefee9fba466faa1a2d5df] Merge tag 'drm-next-2019-05-16' of git://anongit.freedesktop.org/drm/drm
git bisect good cc7ce90153e74f8266eefee9fba466faa1a2d5df
# good: [1895ef4ef229ec1873a78ce31fe50b38cfd2b58a] Merge tag 'ixp4xx-for-armsoc' of git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik into arm/soc
git bisect good 1895ef4ef229ec1873a78ce31fe50b38cfd2b58a
# good: [b4ab114cc6a1bbf8ca1d9a2339f2b5b43374029b] thermal: Introduce devm_thermal_of_cooling_device_register
git bisect good b4ab114cc6a1bbf8ca1d9a2339f2b5b43374029b
# good: [7a0c4c17089a8aff52f516f0f52002be52950aae] Merge branch 'fixes' into arm/soc
git bisect good 7a0c4c17089a8aff52f516f0f52002be52950aae
# bad: [4b984e7bfb6d8e4209838a55af4ae5fbba878867] dt-bindings: rockchip-thermal: Support the PX30 SoC compatible
git bisect bad 4b984e7bfb6d8e4209838a55af4ae5fbba878867
# good: [0fac9e2f1452ffb6f43926609a569372204262eb] thermal/drivers/cpu_cooling: Add Software Package Data Exchange (SPDX)
git bisect good 0fac9e2f1452ffb6f43926609a569372204262eb
# good: [6ec8070b9d48294fbe865535c167a79527eaf357] thermal: Fix build error of missing devm_ioremap_resource on UM
git bisect good 6ec8070b9d48294fbe865535c167a79527eaf357
# bad: [28694e009e512451ead5519dd801f9869acb1f60] thermal: rockchip: fix up the tsadc pinctrl setting error
git bisect bad 28694e009e512451ead5519dd801f9869acb1f60
# good: [fcc6d4cadadcc977911c6bfcdd95d379f4082c74] thermal: broadcom: Remove ACPI support
git bisect good fcc6d4cadadcc977911c6bfcdd95d379f4082c74
# first bad commit: [28694e009e512451ead5519dd801f9869acb1f60] thermal: rockchip: fix up the tsadc pinctrl setting error
-------------------------------------------------------------------------------

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
