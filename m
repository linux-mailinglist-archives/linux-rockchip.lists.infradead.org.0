Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF171CC7C
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 18:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dzmDwxcw2Lb1FzC3CwsBisxzxAsE2AsEA9A+wo8C7WE=; b=pke6SD4DKIxQGI
	HsT6L5DGyqkzjsduxLwsbbCqXKxkE0dBTY58c2EhqYcp9ZYWg3i/2Iupg2RbdtAa+vwocdj/QN913
	wnPpsbhMMAgNEs5Xpj/GreiFFjHrBlTekY69JHvqUaCv4n9TYhX4sw6uCr+gixnykbtKCwrlO7e3k
	eNjvv8RP4rEZ4glG+OJsPGfkLWIOKMhG94hqvokz/Pcko4/hDFZ+iIJl++SityQNQc/Jud1Tx+Cu3
	7u+kzQuGA/2ba6+ik9yL+FJGNwjW5PC9lOI1RMxcbflsZI7A0vML/JsfWchrkWiOfi4Jn7NTl1TM2
	m94WGB2MN5dpsLRCCHYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZx4-0003Fp-Eo; Tue, 14 May 2019 16:06:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZws-00038E-Fq
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 16:06:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so3465773wml.4
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 09:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=jPE7CBRqH5HXjnrbQiifD/Ul0H9caUyvMOcc1BzciPo=;
 b=fng5q5pdI1sg1TGIfbcLdD7oudqH5yxs2v6QcuZuYI5decRZq+Kq5lHjvQHZeM2Bij
 bDRkYTcfFVcBuJRqiRwSGtFla/btDXyicNNFMUWyJJicZpS/gcvjNosTlk9tqpkwnR+r
 4aD8fc7y34Q1k0PHPrRu7w3K7jCYBa6ZmGqOW6yeY8Qer9tPUWIwt/7PdkkmU/6C6ZUm
 kvhtSr01c2SOActTYxEWxwA1I4fCwcSu0smBxNqWjS2uXfObxPPbVW47hVEnksFSjoZ8
 gw7lzy9kR4f6SkYtU+ePtNPBMpPYzwAEXKAI9OMiqzoxXqjM9sXrLqh05a+5TBvcYu8d
 zbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=jPE7CBRqH5HXjnrbQiifD/Ul0H9caUyvMOcc1BzciPo=;
 b=gvXGwqvvDcfsbwTVsQ92/Q8R7rRXcj5LngE+76gKbdv4sWq8QzCFNzMhNYzaevS2Gy
 gRPATrM4GPKjxxiwW/DqzlZVK3xCbfeqkY0W1X79KEdtPepG3JH0rgL3aI3mIdaEoZZn
 LLB7F8A6XwEhg0TxHU8IObJyKwvDupMcnE2leRPH79QkCjnFvp02Xk97gwQaKQX05ghN
 o1GUv4OqbAqozptnV6n9lXfHZ5fdp5p6ex2snnBpE8Z7cjqEIV4hdJO25ORFG4oKHeRV
 sPOcDb/+6pYinu5q7bubiRz6oHjNZKzj2imhpZ0poT1dmlEYcf4cua3bp8FXEIWuxJvd
 2prw==
X-Gm-Message-State: APjAAAVoEIu/1G3lo6OpHrhfhC6dYCMtYBrN9Uo7FyRllHrVh8cZgvy0
 /foGIJL0PGs6tnUOp2oY+8rymg==
X-Google-Smtp-Source: APXvYqwiW5Sc3nxqI/9mvmmbQDgeivZVpMGps7i/Q2JNloMCgWPZl3XPC0+Vc4ynQZLbStD1O7Ixjg==
X-Received: by 2002:a1c:6783:: with SMTP id b125mr20727387wmc.41.1557849996400; 
 Tue, 14 May 2019 09:06:36 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id d3sm4780111wmf.46.2019.05.14.09.06.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 09:06:35 -0700 (PDT)
Message-ID: <5cdae78b.1c69fb81.a32a9.870f@mx.google.com>
Date: Tue, 14 May 2019 09:06:35 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: next
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20190514
Subject: next/master boot bisection: next-20190514 on rk3288-veyron-jaq
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_090638_588980_10949C43 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

next/master boot bisection: next-20190514 on rk3288-veyron-jaq

Summary:
  Start:      0a13f187b16a Add linux-next specific files for 20190514
  Details:    https://kernelci.org/boot/id/5cda7f2259b514876d7a3628
  Plain log:  https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
  Result:     691d4947face thermal: rockchip: fix up the tsadc pinctrl setting error

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       next
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
  Branch:     master
  Target:     rk3288-veyron-jaq
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 691d4947faceb8bd841900049e07c81c95ca4b0d
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
# good: [63863ee8e2f6f6ae47be3dff4af2f2806f5ca2dd] Merge tag 'gcc-plugins-v5.2-rc1' of ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/kees/linux
git bisect good 63863ee8e2f6f6ae47be3dff4af2f2806f5ca2dd
# bad: [0a13f187b16a77bec4e3b929f9785b57358d74e0] Add linux-next specific files for 20190514
git bisect bad 0a13f187b16a77bec4e3b929f9785b57358d74e0
# good: [886c48ba76f6106efe5af1a2c78c8d03a28f507d] Merge remote-tracking branch 'printk/for-next'
git bisect good 886c48ba76f6106efe5af1a2c78c8d03a28f507d
# bad: [f95f816ab5b76ea666aa7424354177a86c82c898] Merge remote-tracking branch 'battery/for-next'
git bisect bad f95f816ab5b76ea666aa7424354177a86c82c898
# good: [6c81e0d749706abb038417396ec5f1e737022321] Merge remote-tracking branch 'thermal/next'
git bisect good 6c81e0d749706abb038417396ec5f1e737022321
# bad: [0e0b9cb7796a0f9056ac58d10e087467ca1b97b3] Merge remote-tracking branch 'input/next'
git bisect bad 0e0b9cb7796a0f9056ac58d10e087467ca1b97b3
# bad: [97aa7cbeb4bc9081105cb518157323341c976ccd] Merge remote-tracking branch 'drm/drm-next'
git bisect bad 97aa7cbeb4bc9081105cb518157323341c976ccd
# bad: [fb27a6c55da7475509589a5fc4799c058679c5a7] dt-bindings: rockchip-thermal: Support the PX30 SoC compatible
git bisect bad fb27a6c55da7475509589a5fc4799c058679c5a7
# good: [686539daac9f5ed996a9f26de2d2dece3b75a2c0] drivers: thermal: tsens: Add new operation to check if a sensor is enabled
git bisect good 686539daac9f5ed996a9f26de2d2dece3b75a2c0
# good: [f094d4eb07bce4b722427d99783d56a0364093d7] thermal: qoriq: Remove unnecessary DT node is NULL check
git bisect good f094d4eb07bce4b722427d99783d56a0364093d7
# good: [e0e2c0d5895ac818a5c2cae1a745e7ad2e2acada] thermal/drivers/cpu_cooling: Remove pointless test in power2state()
git bisect good e0e2c0d5895ac818a5c2cae1a745e7ad2e2acada
# good: [01c8d0e44e4cb7bbd50748d249904b2bb35f235d] thermal/drivers/cpu_cooling: Remove pointless field
git bisect good 01c8d0e44e4cb7bbd50748d249904b2bb35f235d
# good: [f88f39be23c6cd65674e6d39ae268c7341960d96] thermal: broadcom: Remove ACPI support
git bisect good f88f39be23c6cd65674e6d39ae268c7341960d96
# bad: [691d4947faceb8bd841900049e07c81c95ca4b0d] thermal: rockchip: fix up the tsadc pinctrl setting error
git bisect bad 691d4947faceb8bd841900049e07c81c95ca4b0d
# first bad commit: [691d4947faceb8bd841900049e07c81c95ca4b0d] thermal: rockchip: fix up the tsadc pinctrl setting error
-------------------------------------------------------------------------------

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
