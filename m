Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4585CE4C38
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 15:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/y/23oLZvicXlkHLneksyvSIosDnoBeqMl+1Kl/rXxU=; b=aK/WeSFx45646o
	yxapzaYA9LWZyJ9R7BaRkbxbIHmlfMTIxmE8NjWD3S0kIMDNaIPlS+vCqhIoB7W/Enge/3lb0tO6Q
	p+3cCkxFkcP+kF7UQPMU9006gTfDwIPjBgLa65Z/AlEqcVAo0byHzIo5fj2tTE7WPxDL37NEx3jMP
	Sc5+TjxewZdYuuXwaVxnY/952RKSbJD8UpRuc2ztO9a7nEbWQ6PRQ8c/JRMInmBP6lDUaERuDMDda
	peBGoNeCgA9GR1Qb6pLZPtnTjgwo6XSIshnROfxEs60Lsi4BVM+ej5RQkhZLhR2GRMK51XFxt3jnR
	1rQFJSLCmy4TbvetR/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzgE-0007aG-5m; Fri, 25 Oct 2019 13:31:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzfk-0007CC-84
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 13:30:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id d13so540711pfq.2
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 06:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z189/JbsrejSxg4snj1cfmf7WABylQJkAzsniyW058U=;
 b=YO0uC703Es0XdjSv+m/Qvwu2lBMBC4mcrx3S+PZ3tgy66mjDryhZaRvLDwL/pXRP2H
 aq7u/poJrjwWeLjKlcgLmsKbWuG4KVXftD2iynBeU0SD9eczQoK9xFxSNAZ0zm4i2a+E
 35gOqlCyReRVKsQEuloTZAlL1wuOaWcf5j0Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z189/JbsrejSxg4snj1cfmf7WABylQJkAzsniyW058U=;
 b=bk3svjzgvp+Q/qZ/BvGBV/P4Shw5XrOHoNP5PJO5a/GTbW00RqDdfuO8tGYLHLDJt2
 HRIT4kJhjf4TMbgGocmRGIkzVLg39I8pyzZ1svYGI3xsDg3SmTKQYfS6IouMflhu6Iod
 bdWPpBHR855MMqmjuArWinBEtMmFoU/3bq9Geu0rG0NvDQGSXLS9fLTwj22yClz3ZZfE
 aG1/zFjQj7+vu8pyzx8mPKuycWZbC9mWkTwWazqk2BSR+J5Qxe42nxu/tWfGV5ECQghq
 eh11cX00NLBhd3k+QKch5Bu7kjPsm5c8LwDEQJuJZD7cKeQMtF3nf7PREg7TFF5p2RGh
 PxVQ==
X-Gm-Message-State: APjAAAX0TRq/oQCMC5ClDL1ppQ+y45YECMFLV8T4uzNhevlSrDs7G86D
 aFv2enecLhs18cxofyQbRwBaVw==
X-Google-Smtp-Source: APXvYqxi4mEioSOvnZSstCvEdaPRDehU+qNtltuvOKs5XJhHTym2spuCEtz8YYOQ8GJPg3Uj1/K9Sg==
X-Received: by 2002:a62:6842:: with SMTP id d63mr4348012pfc.16.1572010231077; 
 Fri, 25 Oct 2019 06:30:31 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id e17sm3749293pfl.40.2019.10.25.06.30.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:30:30 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/6] drm: bridge: dw-hdmi: Report connector status using
 callback
Date: Fri, 25 Oct 2019 21:30:02 +0800
Message-Id: <20191025133007.11190-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063032_363436_686B84AC 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Allow codec driver register callback function for plug event.

The callback registration flow:
dw-hdmi <--- hw-hdmi-i2s-audio <--- hdmi-codec

dw-hdmi-i2s-audio implements hook_plugged_cb op
so codec driver can register the callback.

dw-hdmi exports a function dw_hdmi_set_plugged_cb so platform device
can register the callback.

When connector plug/unplug event happens, report this event using the
callback.

Make sure that audio and drm are using the single source of truth for
connector status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 11 +++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 41 ++++++++++++++++++-
 include/drm/bridge/dw_hdmi.h                  |  4 ++
 3 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 1d15cf9b6821..6c2c44d0bdee 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -151,11 +151,22 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
 	return -EINVAL;
 }
 
+static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
+				       hdmi_codec_plugged_cb fn,
+				       struct device *codec_dev)
+{
+	struct dw_hdmi_i2s_audio_data *audio = data;
+	struct dw_hdmi *hdmi = audio->hdmi;
+
+	return dw_hdmi_set_plugged_cb(hdmi, fn, codec_dev);
+}
+
 static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
 	.hw_params	= dw_hdmi_i2s_hw_params,
 	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
 	.get_eld	= dw_hdmi_i2s_get_eld,
 	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
+	.hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
 };
 
 static int snd_dw_hdmi_probe(struct platform_device *pdev)
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 521d689413c8..2102872bf43c 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -191,6 +191,10 @@ struct dw_hdmi {
 
 	struct mutex cec_notifier_mutex;
 	struct cec_notifier *cec_notifier;
+
+	hdmi_codec_plugged_cb plugged_cb;
+	struct device *codec_dev;
+	enum drm_connector_status last_connector_result;
 };
 
 #define HDMI_IH_PHY_STAT0_RX_SENSE \
@@ -215,6 +219,28 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
 	return val;
 }
 
+static void handle_plugged_change(struct dw_hdmi *hdmi, bool plugged)
+{
+	if (hdmi->plugged_cb && hdmi->codec_dev)
+		hdmi->plugged_cb(hdmi->codec_dev, plugged);
+}
+
+int dw_hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn,
+			   struct device *codec_dev)
+{
+	bool plugged;
+
+	mutex_lock(&hdmi->mutex);
+	hdmi->plugged_cb = fn;
+	hdmi->codec_dev = codec_dev;
+	plugged = hdmi->last_connector_result == connector_status_connected;
+	handle_plugged_change(hdmi, plugged);
+	mutex_unlock(&hdmi->mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_set_plugged_cb);
+
 static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
 {
 	regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
@@ -2161,6 +2187,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
 					     connector);
+	enum drm_connector_status result;
 
 	mutex_lock(&hdmi->mutex);
 	hdmi->force = DRM_FORCE_UNSPECIFIED;
@@ -2168,7 +2195,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 	dw_hdmi_update_phy_mask(hdmi);
 	mutex_unlock(&hdmi->mutex);
 
-	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+
+	mutex_lock(&hdmi->mutex);
+	if (result != hdmi->last_connector_result) {
+		dev_dbg(hdmi->dev, "read_hpd result: %d", result);
+		handle_plugged_change(hdmi,
+				      result == connector_status_connected);
+		hdmi->last_connector_result = result;
+	}
+	mutex_unlock(&hdmi->mutex);
+
+	return result;
 }
 
 static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
@@ -2619,6 +2657,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	hdmi->rxsense = true;
 	hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
 	hdmi->mc_clkdis = 0x7f;
+	hdmi->last_connector_result = connector_status_disconnected;
 
 	mutex_init(&hdmi->mutex);
 	mutex_init(&hdmi->audio_mutex);
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index cf528c289857..9a0c8381a069 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -6,6 +6,8 @@
 #ifndef __DW_HDMI__
 #define __DW_HDMI__
 
+#include <sound/hdmi-codec.h>
+
 struct drm_connector;
 struct drm_display_mode;
 struct drm_encoder;
@@ -154,6 +156,8 @@ void dw_hdmi_resume(struct dw_hdmi *hdmi);
 
 void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
+int dw_hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn,
+			   struct device *codec_dev);
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
 void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
 void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca);
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
