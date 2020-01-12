Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3668313842A
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 01:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YDJdKPYlzOKOkrKo58yRhiT1i4WVaBaZicgTBp7BsI=; b=ACaHE5vBsg/QmJ
	fligN6Od6OxIxfUz2iwO43ju1xRN8LTAqTq8pEedD0hUEuoq+63BkvU1oqYG1F1E3k2ly2OxJxEW3
	4q3+amNwXXLNeSUYQbiDZW9OrX4W3X3EI/RbkOFwCMSoxJ6oOfDzQEekpaxANLSBUOOtEVRoS8gy7
	MmKtqjqWBafXI4wjG+BbfSyMTi8z9Iv8vBghasYkwd7IuiGLFCv0cJ/+VssAaCzXDZpTdmzpTTDPJ
	Tkvsj9avbitxKKUCcihHkDDZQAY7pUxrpOnOVB2DawcWG6FAJyK3NsthM1Wojz9unjqDjbdVJkkPz
	sy+VCMJntT99JE9mZXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqQw2-0005hZ-Nb; Sun, 12 Jan 2020 00:16:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqQvu-0005cV-GP; Sun, 12 Jan 2020 00:16:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so5826354wmi.5;
 Sat, 11 Jan 2020 16:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TO4ro9G4vD3zIHyJt/0agdTa39l4m1TB7ZW3wf7lrf0=;
 b=UH7MWGgmwpk+vFbDOSAfRRM5C2mVjwsDV1I/lidLxqldDbgNh2mQf1YvA9C/MsU15K
 eSNVEdudBaJL3+6RGJN2DaZN3xbK4vXy5fdslb47DmZYmpER4EKUUIMYxqpmcOntHN1l
 h0OGL18OHKnXe/pn/dS+JeYnlNQ36lO5c+iEAPAm95AnQBFva2HCmFAgf9whFsoL3rPk
 vAP5147OME9RQ3F9CGQP5epoyqVAK/twGXgZIFxRjJM97l6b+4qqcaRMLldmjvfZtp/g
 hTifIsQG74JrK5hFgARq04sLxGb7P2nGygPB1DnFV1tFlija8XeEg34NvACoT25k77PD
 2ThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TO4ro9G4vD3zIHyJt/0agdTa39l4m1TB7ZW3wf7lrf0=;
 b=TwZw27TvQI7W3XYlZKcvLqvJgsBT51YofG3RJmIy6uP6UH/zmPOUYwjEZHYWf8qw0C
 rUVJGSfifwBXek28fbIU7kjSvTuufONqoR0B87q9zFk4MuggGf24/HDqPaNFlLqVJZm3
 1K6FKUfXmEgH9gDKPTn1Uwr9s5hCCohZd/7yy44cz/VoasjHSCHdPA2D+XJhV7rmaeE7
 aoW6eo1eFnMz/m7yRP7E9UEeexc/OorNnc9kfqEADjEWUshwZLOIjCiz56pWYa83io+R
 L8scwJsLdHYtkNYzFrkZCfw8iCHJck4O1zLOv4Fw3Xqt/bWkj+BOuQBdCA4jJEpofjQ0
 60bw==
X-Gm-Message-State: APjAAAX9twXFujOt/2qTdxev8xsRuJBUedf4A85uU+iXmug5v+sfX+la
 hpcXb+5FzdbmldFuMJ9GS3I=
X-Google-Smtp-Source: APXvYqxwsOHaGPq94M95EVR5OBQt7fgZiB2P/O5Jg9DgUSfO9JLb4kiGFlvW8Na/knMYtda6GHHQNg==
X-Received: by 2002:a05:600c:230d:: with SMTP id
 13mr11799060wmo.12.1578788204957; 
 Sat, 11 Jan 2020 16:16:44 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id h66sm8575535wme.41.2020.01.11.16.16.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 16:16:44 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v2 1/3] drm/panfrost: enable devfreq based the
 "operating-points-v2" property
Date: Sun, 12 Jan 2020 01:16:21 +0100
Message-Id: <20200112001623.2121227-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_161646_542040_A89DF5B1 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
