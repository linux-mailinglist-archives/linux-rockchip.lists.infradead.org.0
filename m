Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFCE327B0
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 06:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV0LNpjIX9IoTnRXnmFFPl7MDCsio5jWus2JUi6yN4k=; b=S4zF3TBP4WTjRw
	yUyZReXABwuDhxfVMhr93iGVC1DJwsH2E9EQY5xu41ZVfOXfvFe0itNPS2IfmfU511VMctyMtjcc6
	LVXznLPQIo7VSwoYY4eA+LTw8t5t1Lhwgc4IN4BM36sNgtqzIX0xqsjXuBtrasqGnRjgNpjy9rwb1
	hQCJsXBh4xb89IVK65jMjbcJFYYyY12kN+NeQoCuUSFn2KBHuYdrqahtVif315AMCvDXgzcJS+dtW
	t1SdWtvP8aE1E1EhP8egBdUYx7Z4L+LrVpHAho2hqklTP+vil38au99UTAts6HTtRoLbkuZ86fOUz
	XIW85sah8V1MumCapXTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXefa-0002z7-Lk; Mon, 03 Jun 2019 04:34:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefJ-0002WR-2U
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 04:33:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so119500pgb.3
 for <linux-rockchip@lists.infradead.org>; Sun, 02 Jun 2019 21:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MaZJTXi3Kb+zP1LdC2+ckQjoA/4H+fjgGV1LvJAeRMw=;
 b=kedjugWkJGjbZv4u3cVdp4XDkL/2UujV324hi4xDMTOTYbHYPbUnOtVV/E696ygI4t
 cYwfGz01X+eBCKlr5xigVC+q17FBxGkqMRIQmN2Tb9LkEM0x9vaOqC8GKJiYJv2aslY2
 TItexnk2xcMcs/1c/Ex771hoN5UH0dq13eh48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MaZJTXi3Kb+zP1LdC2+ckQjoA/4H+fjgGV1LvJAeRMw=;
 b=OHNNJH4+uUJxXvz3u/bEPHmQz6azsYdTXCu70IAbXxj2Heo3/kHkSC7D6AwhSEH+MX
 Lj5tGzj77Vt+QAty/17+MDKa/0S4cfYDAvgC5ZbylI7oVcAZhDokq6O0AffzFvxjIUqg
 7FX2MwX+NRRZeuJ0B6NSmZCj7RbHjGjheAWzlT3mDP3D6U1W0bAG4Si/7pwfcdPiT4sW
 K9lo3P5QWadnR2nymTaBUQLy6H3UIFlOvot+j6F2N+ZPGfx3J9RcJow2GNpazhgGW/ON
 0OmZGmKY8hGrq+JNG6hGv+9zdu5FUXNBGRdRR4yKcha8e2lte7oMLiNYVP65SL5MU/mg
 yGcA==
X-Gm-Message-State: APjAAAVWIa3yP6CsNRJfU9CibdWhzju97/uXXJQqgdNk35E2Ozx2nk+0
 7VURtrOerFB1hD8vj7Z9AlUw6w==
X-Google-Smtp-Source: APXvYqwQPHtm3t6nVseAhWV9BUbWtxWUQBMFPxBiyn3rh2KIclbVwhWbmFhQyEfEQ9mmHbprMFiaUg==
X-Received: by 2002:a17:90a:a789:: with SMTP id
 f9mr27039120pjq.20.1559536424466; 
 Sun, 02 Jun 2019 21:33:44 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id m11sm10827627pjv.21.2019.06.02.21.33.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:33:43 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] drm/bridge/synopsys: dw-hdmi: Add HDMI notifier support
Date: Mon,  3 Jun 2019 12:32:47 +0800
Message-Id: <20190603043251.226549-4-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213345_969312_2F56C531 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use hdmi-notifier to notify codec driver that there is HDMI plug/unplug
event.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 drivers/gpu/drm/bridge/synopsys/Kconfig   |  1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 28 +++++++++++++++++++++--
 2 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
index 3cc53b44186e..43192d9d7357 100644
--- a/drivers/gpu/drm/bridge/synopsys/Kconfig
+++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
@@ -3,6 +3,7 @@ config DRM_DW_HDMI
 	select DRM_KMS_HELPER
 	select REGMAP_MMIO
 	select CEC_CORE if CEC_NOTIFIER
+	select HDMI_NOTIFIERS
 
 config DRM_DW_HDMI_AHB_AUDIO
 	tristate "Synopsys Designware AHB Audio interface"
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index ab7968c8f6a2..53701921eb1f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -17,6 +17,7 @@
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <linux/hdmi.h>
+#include <linux/hdmi-notifier.h>
 #include <linux/mutex.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
@@ -190,6 +191,7 @@ struct dw_hdmi {
 	void (*disable_audio)(struct dw_hdmi *hdmi);
 
 	struct cec_notifier *cec_notifier;
+	struct hdmi_notifier *hdmi_notifier;
 };
 
 #define HDMI_IH_PHY_STAT0_RX_SENSE \
@@ -2301,8 +2303,15 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
 	}
 
 	if (intr_stat & HDMI_IH_PHY_STAT0_HPD) {
-		dev_dbg(hdmi->dev, "EVENT=%s\n",
-			phy_int_pol & HDMI_PHY_HPD ? "plugin" : "plugout");
+		if (phy_int_pol & HDMI_PHY_HPD) {
+			dev_dbg(hdmi->dev, "EVENT=plugin\n");
+			if (hdmi->hdmi_notifier)
+				hdmi_event_connect(hdmi->hdmi_notifier);
+		} else {
+			dev_dbg(hdmi->dev, "EVENT=plugout\n");
+			if (hdmi->hdmi_notifier)
+				hdmi_event_disconnect(hdmi->hdmi_notifier);
+		}
 		if (hdmi->bridge.dev)
 			drm_helper_hpd_irq_event(hdmi->bridge.dev);
 	}
@@ -2606,6 +2615,12 @@ __dw_hdmi_probe(struct platform_device *pdev,
 		goto err_iahb;
 	}
 
+	hdmi->hdmi_notifier = hdmi_notifier_get(dev);
+	if (!hdmi->hdmi_notifier) {
+		ret = -ENOMEM;
+		goto err_iahb;
+	}
+
 	/*
 	 * To prevent overflows in HDMI_IH_FC_STAT2, set the clk regenerator
 	 * N and cts values before enabling phy
@@ -2696,6 +2711,9 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	if (hdmi->cec_notifier)
 		cec_notifier_put(hdmi->cec_notifier);
 
+	if (hdmi->hdmi_notifier)
+		hdmi_notifier_put(hdmi->hdmi_notifier);
+
 	clk_disable_unprepare(hdmi->iahb_clk);
 	if (hdmi->cec_clk)
 		clk_disable_unprepare(hdmi->cec_clk);
@@ -2709,6 +2727,9 @@ __dw_hdmi_probe(struct platform_device *pdev,
 
 static void __dw_hdmi_remove(struct dw_hdmi *hdmi)
 {
+	if (hdmi->hdmi_notifier)
+		hdmi_event_disconnect(hdmi->hdmi_notifier);
+
 	if (hdmi->audio && !IS_ERR(hdmi->audio))
 		platform_device_unregister(hdmi->audio);
 	if (!IS_ERR(hdmi->cec))
@@ -2720,6 +2741,9 @@ static void __dw_hdmi_remove(struct dw_hdmi *hdmi)
 	if (hdmi->cec_notifier)
 		cec_notifier_put(hdmi->cec_notifier);
 
+	if (hdmi->hdmi_notifier)
+		hdmi_notifier_put(hdmi->hdmi_notifier);
+
 	clk_disable_unprepare(hdmi->iahb_clk);
 	clk_disable_unprepare(hdmi->isfr_clk);
 	if (hdmi->cec_clk)
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
