Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8DB138434
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 01:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPHp5+2lgp8AmIfUzXJbYVgaGW09+lmU3pYTd7qsTFY=; b=FeDO3Ky725sUQ6
	Dvg66J6+FGDR5/nF5ayY60kewgJuj5xB0wQqfQEuU9s7HZfgaF27b5kRoX8gtF9+WA83U34fUjub6
	DphJo0Xfcr+qyUy6LMt5fvB7Rv6f4x5KqzgigbGUrB6pfLPgXO0GfUr1i48w0qMgFjfV341nxDgNE
	LrzZChSO5/6yNUeUbCeTm1LNONKP1gCcO7V/zULAOJPXUR02bA9Fi7zwQ05yMwAzRUg5w2CllzTKU
	InJxIQnszFpTto8ttg+PliWkSWFclVG7lIWXbYY2fc89xA8y+4o8PXIj6De0Nvw1fwn02wWMjBr++
	EIBTpFd3qKGzEcqOMv7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqQwB-0005sJ-Bh; Sun, 12 Jan 2020 00:17:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqQvw-0005dL-Pq; Sun, 12 Jan 2020 00:16:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so5832706wmc.3;
 Sat, 11 Jan 2020 16:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=No9N9xYZ+QFAr1x7bc0MPpLHxIMMTgoTSD9/8JFQuIk=;
 b=TvvrlqVKcqkTNLBPSRxaQEpBBhYhQHqg4aoxLtvU4MZaezCkUEbu521TaNR5r0lvEY
 Iwqi+i86WFN2n54aIFXI4MuOFinV6B1wvqZSmNByTKWPizjer/JFcSvcsAsNZdKtPIH4
 gZjTzfqfskCoUy8ldaBYOBNAsP8x9jgh0JP5b3/zwyaMWLYwYixOTiHL7fWzdMAGB1BZ
 ibJ+te6jZOkVTPyQ56ENUWCG9kOArwNe1uvo4uEPXLotkSM8oa6OlVwgmJqb8CV4SUcl
 MTlhOhabjdaZVugYhyxZ4xGim/0h3DhfmyU4182w2D57kKogaApZMgrVB9upj8I644C6
 hMdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=No9N9xYZ+QFAr1x7bc0MPpLHxIMMTgoTSD9/8JFQuIk=;
 b=NcmpbWwkpkiELnl0Sv8p2UuLhqZuTnJCJwp8fgR0eeCbQE0JKij1VIGeS1GAmnLS2v
 vNB1UXiN+erec4dG0yEw/hXmFhLcnLZRVE5AU/INxHQpM9nQlBRc6Bh+cietf+VnjLnh
 ala1YMgzyX5ZvHFE11v8wqgILGXLZFx6metuyAAKp5Tsbd/qkqAct6ZF+nvg3WVVBzz1
 ooQG7ehsXUMoNO1HU5u6yxjgX/nKn67kaoAWgIdEepDyfXnYvKiSk0y6Av1zw2ditf0j
 Yu0FUvdwO2pHEqViXPTUWyhn5TVdT8K4g9h+xP/KYdJ/xtcM3YNTnX3qaIoXrMf4XQv5
 MwHg==
X-Gm-Message-State: APjAAAUiHhhhIFCcpSGzdMQiMMBycoplGZbqsN0JSdutpYKFtR9sPODG
 fhfN6jtBptqWQ2Kiguurb3A=
X-Google-Smtp-Source: APXvYqwyHONLbwGv/sAnDgb6Jev2B1rSuuf3t9Uadi5LTfguJPS85uqYijPkZEdCDdPZ/CHTFuMe1Q==
X-Received: by 2002:a1c:dc08:: with SMTP id t8mr12425668wmg.139.1578788207216; 
 Sat, 11 Jan 2020 16:16:47 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id h66sm8575535wme.41.2020.01.11.16.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 16:16:46 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v2 3/3] drm/panfrost: Use the mali-supply regulator for
 control again
Date: Sun, 12 Jan 2020 01:16:23 +0100
Message-Id: <20200112001623.2121227-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_161648_857274_0E81FC2F 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch, sudeep.holla@arm.com,
 linux-amlogic@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

dev_pm_opp_set_rate() needs a reference to the regulator which should be
updated when updating the GPU frequency. The name of the regulator has
to be passed at initialization-time using dev_pm_opp_set_regulators().
Add the call to dev_pm_opp_set_regulators() so dev_pm_opp_set_rate()
will update the GPU regulator when updating the frequency (just like
we did this manually before when we open-coded dev_pm_opp_set_rate()).

Fixes: 221bc77914cbcc ("drm/panfrost: Use generic code for devfreq")
Reported-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 33 +++++++++++++++++----
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 170f6c8c9651..3b580a0123e1 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -74,6 +74,7 @@ static struct devfreq_dev_profile panfrost_devfreq_profile = {
 int panfrost_devfreq_init(struct panfrost_device *pfdev)
 {
 	int ret;
+	struct opp_table *opp_table;
 	struct dev_pm_opp *opp;
 	unsigned long cur_freq;
 	struct device *dev = &pfdev->pdev->dev;
@@ -84,9 +85,22 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 		/* Optional, continue without devfreq */
 		return 0;
 
+	opp_table = dev_pm_opp_set_regulators(dev,
+					      (const char *[]){ "mali" },
+					      1);
+	if (IS_ERR(opp_table)) {
+		ret = PTR_ERR(opp_table);
+
+		/* Continue if the optional regulator is missing */
+		if (ret != -ENODEV)
+			return ret;
+	} else {
+		pfdev->devfreq.regulators_opp_table = opp_table;
+	}
+
 	ret = dev_pm_opp_of_add_table(dev);
 	if (ret)
-		return ret;
+		goto err_opp_put_regulators;
 
 	panfrost_devfreq_reset(pfdev);
 
@@ -94,8 +108,8 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 
 	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
 	if (IS_ERR(opp)) {
-		dev_pm_opp_of_remove_table(dev);
-		return PTR_ERR(opp);
+		ret = PTR_ERR(opp);
+		goto err_opp_of_remove_table;
 	}
 
 	panfrost_devfreq_profile.initial_freq = cur_freq;
@@ -105,8 +119,8 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 					  DEVFREQ_GOV_SIMPLE_ONDEMAND, NULL);
 	if (IS_ERR(devfreq)) {
 		DRM_DEV_ERROR(dev, "Couldn't initialize GPU devfreq\n");
-		dev_pm_opp_of_remove_table(dev);
-		return PTR_ERR(devfreq);
+		ret = PTR_ERR(devfreq);
+		goto err_opp_of_remove_table;
 	}
 	pfdev->devfreq.devfreq = devfreq;
 
@@ -117,6 +131,13 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 		pfdev->devfreq.cooling = cooling;
 
 	return 0;
+
+err_opp_of_remove_table:
+	dev_pm_opp_of_remove_table(dev);
+err_opp_put_regulators:
+	if (pfdev->devfreq.regulators_opp_table)
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
+	return ret;
 }
 
 void panfrost_devfreq_fini(struct panfrost_device *pfdev)
@@ -124,6 +145,8 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
 	if (pfdev->devfreq.cooling)
 		devfreq_cooling_unregister(pfdev->devfreq.cooling);
 	dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
+	if (pfdev->devfreq.regulators_opp_table)
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 }
 
 void panfrost_devfreq_resume(struct panfrost_device *pfdev)
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 06713811b92c..4878b239e301 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -85,6 +85,7 @@ struct panfrost_device {
 
 	struct {
 		struct devfreq *devfreq;
+		struct opp_table *regulators_opp_table;
 		struct thermal_cooling_device *cooling;
 		ktime_t busy_time;
 		ktime_t idle_time;
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
