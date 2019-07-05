Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9C16079D
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWnuS29/nyqOFcWkSxQOYd/Q8K80FQhrtz/mn+Iz5o4=; b=LydeOrBfcw9R0I
	mLcPDOtxTwIRTkij9BVLvYuTUYYNHfKCklT5/tbhfM6SjNA71YllAARlxVLVbFT7/V/PK/mahiDe8
	xGSVAo/0zIrMrq2UXrGTMi86noyBqRmSraBJHR4xq8qD39aSKMuRnN8HscHrwlzQEvuceaK6NVx7X
	sTWOuGv1GjJkGy2gEVAdiXx21FI/i8vdfAhaRv8Evfgwb3vayeK6zIWvoIC8VrKyrRkrCGb729YIs
	WpygqFI226D2PXkFSKWs7PNnkYBT6FvJDw3WDx/iZdxE9z/MCiXVSfyfUxmzUPKF4WoFH8UioRloM
	r9nyq14m+BYV5YhIPvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOzn-0000UV-2r; Fri, 05 Jul 2019 14:15:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOzl-0000TV-Ea
 for linux-rockchip@bombadil.infradead.org; Fri, 05 Jul 2019 14:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FfAso7efMu/aA+eHOC+kWuha2DdRu+sIyUVZpYri0wk=; b=rRs0b7GDzwA5oCDF97aQF4c1AV
 W36T3BtWG570sOGKNpSfqAhCDNZYevK8iXuT6V7AXm6VnJuKOoNRbjJA/l5+SuSfKVl7oVuWCwERt
 iQFU/Pf0EIQTV9RRrwTQzx/IYQeef7LJCykMl/5pufsVbGd8Rr4dQaKn+Y3bxZOoBvYSaR7GEaCgj
 1TSuPoZTKmHwyHnolOVax/FDMB0NIUp95b20XpKQPIU8fxIpSvO4oFQHT+wyfVI8Sel27fMlrxEaF
 I6vglvaVmdDAxTcpE3/gJ0hMTTvS6/ChB6SBNuWN1fjKginycA5w/07zpRS6eobtFyJ2sxXNvI9ob
 mMkfHCSg==;
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFqD-0006ax-T2
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 04:28:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id c13so3701086pgg.3
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jul 2019 21:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FfAso7efMu/aA+eHOC+kWuha2DdRu+sIyUVZpYri0wk=;
 b=NQaaID67Y+LZwPST2LvJBza5Z0GadFPix/sAuAKZfbGHz2qYjWAokPh73WmpEZVBX+
 ovAj5OC9r9vmp+giPJWm6aGtvcx9wCAxNasdbMQrs46bEhkDxQItAQ/gc7xQSOMGIiwi
 y1c+dcnmFLnIFj+8Cj21PpTCMX3HNEnakazQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FfAso7efMu/aA+eHOC+kWuha2DdRu+sIyUVZpYri0wk=;
 b=WfmY6eMD0yFi9quX93RVTq0a1ey52gzd15+b0j2/MTpNMW3U56s+DveOG/Ww/06lqp
 YKCwNaaYGVanHwkCHs+epB2IX5j9gBcN6v7NPIwLC+jfnU6D0cQLr2Cw8zJf1EFIwdmt
 Rh2yA7K9hdiMlBaA6IHcLIr+YUEpxTJADWWQZ8XNwnTa4BxWj4hkIwBUXzLqoB0tYQsb
 ATGN2Yv70mSsnTaggAw4/QiOrmUV5CnXdcBzcUl/XANWxO5sS9F0nA5IK4tCfawLhqmW
 jXq/MW7P5Hw0hq8qbTU/3xyDfKqShLz+UufwvKxrWMyekAcfyITO/d0ZjJtTgHDPVBjx
 zWow==
X-Gm-Message-State: APjAAAVQXvLbKdmPrA5vsG364oJ5LESpfCRFm/VNydaqxz72oNuEuoLT
 zmT8PKbJz576lDYtuJa6jbK1RQ==
X-Google-Smtp-Source: APXvYqwZbL+s761iX960bRQQcsfHBESYYHX6caI+DhUbiPV9OOsTfm5vhRVAxh6UChQM0IMk+bwDTw==
X-Received: by 2002:a63:24c1:: with SMTP id k184mr2425512pgk.120.1562300810605; 
 Thu, 04 Jul 2019 21:26:50 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id h2sm6126547pgs.17.2019.07.04.21.26.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:26:50 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] drm: bridge: dw-hdmi: Report connector status using
 callback
Date: Fri,  5 Jul 2019 12:26:21 +0800
Message-Id: <20190705042623.129541-3-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190705042623.129541-1-cychiang@chromium.org>
References: <20190705042623.129541-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_052858_014428_EABF75A6 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Allow codec driver register callback function for plug event.

The callback registration flow:
dw-hdmi <--- hw-hdmi-i2s-audio <--- hdmi-codec

dw-hdmi-i2s-audio implements hook_plugged_cb op
so codec driver can register the callback.

dw-hdmi implements set_plugged_cb op so platform device can register the
callback.

When connector plug/unplug event happens, report this event using the
callback.

Make sure that audio and drm are using the single source of truth for
connector status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |  3 ++
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 10 ++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 34 ++++++++++++++++++-
 3 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
index 63b5756f463b..f523c590984e 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
@@ -2,6 +2,8 @@
 #ifndef DW_HDMI_AUDIO_H
 #define DW_HDMI_AUDIO_H
 
+#include <sound/hdmi-codec.h>
+
 struct dw_hdmi;
 
 struct dw_hdmi_audio_data {
@@ -17,6 +19,7 @@ struct dw_hdmi_i2s_audio_data {
 
 	void (*write)(struct dw_hdmi *hdmi, u8 val, int offset);
 	u8 (*read)(struct dw_hdmi *hdmi, int offset);
+	int (*set_plugged_cb)(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn);
 };
 
 #endif
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 5cbb71a866d5..7b93cf05c985 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -104,10 +104,20 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
 	return -EINVAL;
 }
 
+static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
+				       hdmi_codec_plugged_cb fn)
+{
+	struct dw_hdmi_i2s_audio_data *audio = data;
+	struct dw_hdmi *hdmi = audio->hdmi;
+
+	return audio->set_plugged_cb(hdmi, fn);
+}
+
 static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
 	.hw_params	= dw_hdmi_i2s_hw_params,
 	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
 	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
+	.hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
 };
 
 static int snd_dw_hdmi_probe(struct platform_device *pdev)
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 045b1b13fd0e..c69a399fc7ca 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -26,6 +26,8 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/bridge/dw_hdmi.h>
 
+#include <sound/hdmi-codec.h>
+
 #include <uapi/linux/media-bus-format.h>
 #include <uapi/linux/videodev2.h>
 
@@ -185,6 +187,9 @@ struct dw_hdmi {
 	void (*disable_audio)(struct dw_hdmi *hdmi);
 
 	struct cec_notifier *cec_notifier;
+
+	hdmi_codec_plugged_cb plugged_cb;
+	enum drm_connector_status last_connector_result;
 };
 
 #define HDMI_IH_PHY_STAT0_RX_SENSE \
@@ -209,6 +214,17 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
 	return val;
 }
 
+static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
+{
+	mutex_lock(&hdmi->mutex);
+	hdmi->plugged_cb = fn;
+	if (hdmi->audio && !IS_ERR(hdmi->audio))
+		fn(hdmi->audio,
+		   hdmi->last_connector_result == connector_status_connected);
+	mutex_unlock(&hdmi->mutex);
+	return 0;
+}
+
 static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
 {
 	regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
@@ -2044,6 +2060,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
 					     connector);
+	enum drm_connector_status result;
 
 	mutex_lock(&hdmi->mutex);
 	hdmi->force = DRM_FORCE_UNSPECIFIED;
@@ -2051,7 +2068,20 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 	dw_hdmi_update_phy_mask(hdmi);
 	mutex_unlock(&hdmi->mutex);
 
-	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+
+	mutex_lock(&hdmi->mutex);
+	if (result != hdmi->last_connector_result) {
+		dev_dbg(hdmi->dev, "read_hpd result: %d", result);
+		if (hdmi->plugged_cb && hdmi->audio && !IS_ERR(hdmi->audio)) {
+			hdmi->plugged_cb(hdmi->audio,
+					 result == connector_status_connected);
+			hdmi->last_connector_result = result;
+		}
+	}
+	mutex_unlock(&hdmi->mutex);
+
+	return result;
 }
 
 static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
@@ -2460,6 +2490,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	hdmi->rxsense = true;
 	hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
 	hdmi->mc_clkdis = 0x7f;
+	hdmi->last_connector_result = connector_status_disconnected;
 
 	mutex_init(&hdmi->mutex);
 	mutex_init(&hdmi->audio_mutex);
@@ -2653,6 +2684,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 		audio.hdmi	= hdmi;
 		audio.write	= hdmi_writeb;
 		audio.read	= hdmi_readb;
+		audio.set_plugged_cb = hdmi_set_plugged_cb;
 		hdmi->enable_audio = dw_hdmi_i2s_audio_enable;
 		hdmi->disable_audio = dw_hdmi_i2s_audio_disable;
 
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
