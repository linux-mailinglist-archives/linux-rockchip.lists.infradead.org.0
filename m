Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD97E6CDB
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 08:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/y/23oLZvicXlkHLneksyvSIosDnoBeqMl+1Kl/rXxU=; b=Cc+Q1tjhNCuTBS
	frr/DlI/19o2iv0yq+YL0Grwu3lmdI5fWEk9ns5GbnyYYBkN64+NHtQ5WsUG9D4S6XXYXXQPXhCK6
	1PzzzlHZ7pIG74qpYwK0ifzdScdZd5Zw+W6Vs2zZxBEY/ZCx6MJgAF4KobZXtJJzex+I9x1fQKQnl
	ZPyMeBaLh0eV+X5+oGkzrPpeijcfqRCnIcZSLgIal1V4gRb4sNdOAO3kY22mB8iAJcymvjFmZtlNU
	zfFA534SS2n2PyUpfI9bj/m1Th9OeZVZoSaPNMbkIT+qUxi16knVh7abU9AHDwkOKjxv60wWxLZAs
	zP6CPpjE7SCOKsutgmQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzKW-0006CH-L3; Mon, 28 Oct 2019 07:20:44 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzKH-00062I-SV
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 07:20:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id r1so6270910pgj.12
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 00:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z189/JbsrejSxg4snj1cfmf7WABylQJkAzsniyW058U=;
 b=hzDxQcpe8ZAozCEeLby7W+1X3EA8e4bzhLTQhRD7Xv7NjwoILlXBFKw9g5Qz82uVIg
 dK78qiaeJFX0mr5gn9tGU7l+LqaGNq0GN5NbdZ3FnYqFy1qadcN/aQmj6+GIum/V59FX
 3mukg7LneVke61YvVEM5GJ1xgjhgeVwO2Tp3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z189/JbsrejSxg4snj1cfmf7WABylQJkAzsniyW058U=;
 b=tWodINw+d61ec3MBNgWGQHycnr0XYZmq1rbDvtuKnh2hLyOvKso++bbBc/bpzvIpTs
 GGZSAAI+NRTex7N9MrTRBxFo0dvyM1umkMG3D8bC1Z/2u5h+VvWVC4odvqH9Te7CN95S
 4EJVDZqAaNyjga3mjKfsbZID7p5RK0EKBJ2mxCSDcPw4+EW3kNNQgom5iuyeLM7Z8rdF
 HLPkwtPQKzDeHRjSQZ5sc6KTaecC6sxNf2wJr+u5ixBuVx5NtrrVnkFYZrXa0ra3jxSE
 RN6EbSRWVDMpOK1pfUs2B0dCjCgMZSzZeV+CSixw2BKf8/AzHqQVuC/WPARXvhWa+GvS
 F0KQ==
X-Gm-Message-State: APjAAAV1I9ipo7+LsI5/IYTAHv8FHS04v6UXVdVA0sGGPq7YqgjwunFK
 TWy36sjgVBdm+Z6eXE95VvGabw==
X-Google-Smtp-Source: APXvYqynZ80n84TQmrGPDXJ/uLqAF9zvNS+XaPloiSLuy5wxnfKDe0atLwUdhr4dRrZ0BFGcPPLXZA==
X-Received: by 2002:a63:1417:: with SMTP id u23mr11445620pgl.279.1572247228043; 
 Mon, 28 Oct 2019 00:20:28 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id 16sm9908856pfn.35.2019.10.28.00.20.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 00:20:27 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/6] drm: bridge: dw-hdmi: Report connector status using
 callback
Date: Mon, 28 Oct 2019 15:19:25 +0800
Message-Id: <20191028071930.145899-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191028071930.145899-1-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_002029_917976_B6C3AB5E 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
