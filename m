Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E63B133710
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 00:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VCUzrWr5M3yByAvqxvFB+OQ7A26d4b1j0f+dHLKG/w=; b=q2lfZ59PLkSqPD
	nr3CaVu+XZKf8nyJX3HK5cPVChk2MFadgy5fzRXbb5Wo0qUA0Z6ZCpePByRqwiec34qpeMlxUxngq
	e5db3ayIayx67J0mschixwapgK0Z0giFmmttqMGEPfp9lCM9WXT3U1k9x49v+Ai3W72c28PQ9gz39
	q+IaXPrZOJSWj7WE0EbBtqV9TU7RppXoKSEZeSNjz9DS7xjhgiQvRsb7+ixcMUI5EUEWXSz/1jOe6
	zVWotqWNZzdNF0KAnU2SD94QqToVykRDH8v1pl5zLpC6NtO1/yyGqNYXh9trboaXO6Arutnnb0Wrn
	BnQeymsMAaQ3GdmOJDag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxwH-0004Dt-QT; Tue, 07 Jan 2020 23:07:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxw4-0003xU-NE; Tue, 07 Jan 2020 23:06:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so1435237wro.2;
 Tue, 07 Jan 2020 15:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UXJ/0vyPOcylwX7dQ7AqYqzbWcm6Xny6nu2+z0FOmf4=;
 b=SzQP3MkkW9JiVVLB0Q5AWl9ynYczk1eWo56lKzhjHMYAgL4dqVwYVe+d4zLq7IGG+E
 6sjyRLDJcEljD4GDsoPqvuOXsfPBIXaZlV/7JQOkyCuXehAwjJhNybHUYy5Z5vlzNnDZ
 ojm8VASMXfBBnvdvuzRV37VlFgzD5KE4fzvicM94upMV58FI4Iz7SwtNdHRMPFmsse7V
 TAIL1Kz1SjxRxXsrpRd8sbRc/pyYzPY08UVCol5DeDNVgOzhjeB1iuSUkO+ZbVO0xDl8
 rT/WVhULD1GLl7l7FXJord3q/+308mnMIkdoHgox2+tnRgVZhARDTbdy+O32aBsGmQQM
 Mkgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UXJ/0vyPOcylwX7dQ7AqYqzbWcm6Xny6nu2+z0FOmf4=;
 b=GQTPp137L0UnPnPjJdGhTHgOO3N+JUU8HJfd9F2mkCXyhLmP4oSuKDf6ReL7c4LjYf
 5mlJnbCZM/6SWc5xm+rk6BzSHU7K5R2unu1hoBrTtv/j5qRa5CUs+RezmZV++UFW+aby
 fx8v+TlwZKqcllX58urpyU+3qd/k1RzI3RaLqG9iORZlsND0iEZRcw2zBOPKZ1oi73Y8
 nfI+9Pmji3KWUGIh/hJw1MiZPp4kNwNyI8DDtc1IEBUgtj+l3Z321RcRM1PMLz/pzlCI
 N1VMBkzYtcssSDV7kTZaRnG1z33iUna9ZAk3PZ0ClkkxUr8VpFIUY7HApjJcQK/fb2zM
 EJ7w==
X-Gm-Message-State: APjAAAUMoCnFgk3q+uYR6N1tKC4akxf8C8+p7KeXoYsKsD8iAC5x/b0E
 urxHn4QAjJlq1ecwV9faqpY=
X-Google-Smtp-Source: APXvYqyTpkD+YLeAxyWAoG8+IkEVG2zuH4q7SHZOXRueqxuzGo3+htimrqNb87QNSjKXFAZDdhKYXw==
X-Received: by 2002:a5d:4984:: with SMTP id r4mr1253219wrq.137.1578438411229; 
 Tue, 07 Jan 2020 15:06:51 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id g21sm1335912wmh.17.2020.01.07.15.06.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 15:06:50 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v1 3/3] drm/panfrost: Use the mali-supply regulator for
 control again
Date: Wed,  8 Jan 2020 00:06:26 +0100
Message-Id: <20200107230626.885451-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_150652_754237_134CC1F2 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch,
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
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 22 ++++++++++++++++++++-
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 170f6c8c9651..4f7999c7b44c 100644
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
@@ -84,9 +85,24 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
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
-	if (ret)
+	if (ret) {
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 		return ret;
+	}
 
 	panfrost_devfreq_reset(pfdev);
 
@@ -95,6 +111,7 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
 	if (IS_ERR(opp)) {
 		dev_pm_opp_of_remove_table(dev);
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 		return PTR_ERR(opp);
 	}
 
@@ -106,6 +123,7 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	if (IS_ERR(devfreq)) {
 		DRM_DEV_ERROR(dev, "Couldn't initialize GPU devfreq\n");
 		dev_pm_opp_of_remove_table(dev);
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 		return PTR_ERR(devfreq);
 	}
 	pfdev->devfreq.devfreq = devfreq;
@@ -124,6 +142,8 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
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
