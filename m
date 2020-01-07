Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A04C13370D
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 00:07:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YDJdKPYlzOKOkrKo58yRhiT1i4WVaBaZicgTBp7BsI=; b=RPMzry7ESqzB9t
	yxjJ0bYW79kJVJo7niZuwKnjixvXZHjkNsBqF8Veqm/t1mQWjhgCuHuEULdITcvXPQK1nq4PP40s0
	fR8tpV6HAos662/R6RDrFxce0fl/3sanfbpEzro7qAZKJf7nGInmE3R6kbqlah1mKLPIROpXVJfIX
	Vu2lMMiIxxSCn0Z3DEwECBlwuNHRpB5V/w5XQg/0a2ItTJd43yG22R7jGGziOj4xdwOZ0VWdnfh1+
	c+J+7aXhJ0XvaRF7dvyxgxp4S4O90lezNdo+TuP5JpyxvfIA3k8GkeDyy90Br2uq5SnSoouAbTPta
	EY6BvErFBAFsIlmhCokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxw9-00042L-HS; Tue, 07 Jan 2020 23:06:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxw2-0003wp-O6; Tue, 07 Jan 2020 23:06:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id d73so588294wmd.1;
 Tue, 07 Jan 2020 15:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TO4ro9G4vD3zIHyJt/0agdTa39l4m1TB7ZW3wf7lrf0=;
 b=ul1VNMWdK7uKGRgck+BrFSydL/s/Tw5QhgyBT4DSfsstUAyGpFR/AU4EDOx+DdfG37
 Y8hsECeqX1FLtrkERluaTjYnbnoJXVYK/+2+EI5+/5eAvHRVVQ4DZE/GY7QsOi1AZkOy
 ub87rujVUaGCIcTefUUmY/uIS7J0zxSUrl2apAjNU+xig9grpK5nrGlzUtcthKZCXmYG
 24pxMeo/tVCAL9pKLtCC522yVhyRmaYVefxrdeoPOam/uyFSLiQqFAC5CTsp0p/5scnN
 mOYq06dZzoJlLIMiBr6QKAWbmoYzQpBiIFyWOEaphB465iDqgpqeJ0NY3W0Gi7xJdDCD
 iDrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TO4ro9G4vD3zIHyJt/0agdTa39l4m1TB7ZW3wf7lrf0=;
 b=mydeKBwyDgT0RWbuZvhUoaVhck3tB3dN9HtEauihfOys6bKqP0eryKMsLlH7kAsITZ
 UxjmGlWVVEmBo5QlwWbslgUAfO0IF3KC5WCOkApN5IqaVDpDLWyzN59mPDaymQYNniqy
 MHEB+sD0vhMK6BjEeaJLXLkuwoBTehl8Ru1rhoBc+dSnmQ8+w39T//QIPCIamSwm+gcb
 zKRq/6QugfRJlyzOjApaUcnCK/P+BSJjFKESNMmPthnLhSIz1k4TV8yS+PJM2Hd4X7TD
 bGY/pKPleAxlNxBCr9NuLcGmHZmDpOIkQIoyxgk4yCcLtPFnt3il4GnaOulL5kEbFH1/
 M4ig==
X-Gm-Message-State: APjAAAWV99VC4wti796B2/8LJ3qHEBucJ2Bl6gnGbyVAUk6ls0S9dulE
 HRXuRkwcyyeLOfpH29dg6uc=
X-Google-Smtp-Source: APXvYqziatvpyvGspQje2BctNA8J7jf+6weefVXmBYuKgiScnQp6glZ8jwEo1oXP5q9Pe6xVNOUXEA==
X-Received: by 2002:a7b:c5cd:: with SMTP id n13mr597432wmk.172.1578438409183; 
 Tue, 07 Jan 2020 15:06:49 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id g21sm1335912wmh.17.2020.01.07.15.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 15:06:48 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v1 1/3] drm/panfrost: enable devfreq based the
 "operating-points-v2" property
Date: Wed,  8 Jan 2020 00:06:24 +0100
Message-Id: <20200107230626.885451-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_150650_783315_DAEEC4EF 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

Decouple the check to see whether we want to enable devfreq for the GPU
from dev_pm_opp_set_regulators(). This is preparation work for adding
back support for regulator control (which means we need to call
dev_pm_opp_set_regulators() before dev_pm_opp_of_add_table(), which
means having a check for "is devfreq enabled" that is not tied to
dev_pm_opp_of_add_table() makes things easier).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 413987038fbf..1471588763ce 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -5,6 +5,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_opp.h>
 #include <linux/clk.h>
+#include <linux/property.h>
 #include <linux/regulator/consumer.h>
 
 #include "panfrost_device.h"
@@ -79,10 +80,12 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	struct devfreq *devfreq;
 	struct thermal_cooling_device *cooling;
 
-	ret = dev_pm_opp_of_add_table(dev);
-	if (ret == -ENODEV) /* Optional, continue without devfreq */
+	if (!device_property_present(dev, "operating-points-v2"))
+		/* Optional, continue without devfreq */
 		return 0;
-	else if (ret)
+
+	ret = dev_pm_opp_of_add_table(dev);
+	if (ret)
 		return ret;
 
 	panfrost_devfreq_reset(pfdev);
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
