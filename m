Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575AEAF7E7
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Sep 2019 10:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BzlTQICXzG1lNhTnaFYe0HiLCaik2IxMPX5ka3Gg2DA=; b=BA6PA1fGZi9mbu
	fcVAp5jYZlBx/JjPoNcWlNzVsYp4aZn457YTQg1KqNp8TUg39E4OMAc/bc4yLwXchCZa93AJ6jRNm
	aXq+D+4W/v1qPJ3hC/sEu/jpdvpxoPyFutBQR5j7hnDVeHwOoX5zdWBBCQBnLdssUGPY5nm09ozd9
	45EWz5axwarDDIrU0B/LeVvKikXF5M/nca+E72zyoMC/I5+vJX9AWl+ypuyOu38Vo9eQkkyior3y2
	BJOSy3y3cD6iWINGAwtn3SVPf8Wx7ZRHo9Knirr4rS+zZkM5XAtriDBZc1QWr3MTnTTXsv2y/XgFW
	5pENprVYNmtZ6w6Oyqww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xyY-00084A-03; Wed, 11 Sep 2019 08:27:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xxq-0007Tv-I6
 for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2019 08:27:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id q5so13179999pfg.13
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2019 01:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4r0nmZkQSsR2gJHf1JrXB09YJMiVgOB3zCW5D3saotk=;
 b=SkDdQyZvW4zi69+lyo92l0Kk3Thw/bwocTopP9fFph6zyBMtEB/3j1KLDMRUxqxdz8
 +GfX2YdSkpKSLb2PvhEGCOF4NwPA/U6Y1kiPxadIOSTS6TyJZFma9bzPGLj2n8QbL23D
 Hr+J8YoPtLhznecB9zPycHkXrnWu5k+PMPJ+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4r0nmZkQSsR2gJHf1JrXB09YJMiVgOB3zCW5D3saotk=;
 b=FgZ6BNxKWUFlh8sdptxRPGRycSPdjZxuJllgQCANArlAguSjzuoSgf7y2MAuEWz8ph
 PXSlCte733MZxFsutoY5zHjZCXZsTg9KYYoUuZGZcUBRa76ffJVsPzXntOXWoOTl9B/j
 vHnwdrk3spjPC9ttjjrzMF7Jwx/NnfNf7SEBW/uTWBkmxKx4V9Ha7c+KU4gpG/Wz/1Fw
 gtktWkrhgkrCu64NfYyGp7UKfqaXHk0aTg9LvvzzapD7gvAgjEvt5kt6DCFk1Om7e5d2
 GqG/Frdj1NqVFG1EjFHyOlovUlIBFLMuJFm7b3avY8VsObec9ZoO33gdwS04QdyGBUKK
 XJ0Q==
X-Gm-Message-State: APjAAAVKIgBQVdgm2xJUtg+5Rbqh+2ft1+UnVykY3IPTk9fz0wa/4IsS
 YBSZbH84l94rBOVxj0YbnIZkdJhot9c=
X-Google-Smtp-Source: APXvYqyu86LR1qJn3qdq+8oCOL+6X9M/yekQdNO+TlGPFuebwd792sRf58JYMVY/Ym+ipZH+zK0xSA==
X-Received: by 2002:a63:487:: with SMTP id 129mr4981704pge.14.1568190416941;
 Wed, 11 Sep 2019 01:26:56 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id t12sm22798655pfe.58.2019.09.11.01.26.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2019 01:26:55 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Date: Wed, 11 Sep 2019 16:26:46 +0800
Message-Id: <20190911082646.134347-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012658_787645_61B7B70C 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, kuninori.morimoto.gx@renesas.com,
 Neil Armstrong <narmstrong@baylibre.com>, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com, a.hajda@samsung.com,
 Laurent.pinchart@ideasonboard.com, Yakir Yang <ykk@rock-chips.com>,
 sam@ravnborg.org, Jerome Brunet <jbrunet@baylibre.com>,
 zhengxing@rock-chips.com, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, cychiang@chromium.org, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, jeffy.chen@rock-chips.com,
 eddie.cai@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 daniel@ffwll.ch, enric.balletbo@collabora.com, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Yakir Yang <ykk@rock-chips.com>

When transmitting IEC60985 linear PCM audio, we configure the
Aduio Sample Channel Status information in the IEC60958 frame.
The status bit is already available in iec.status of hdmi_codec_params.

This fix the issue that audio does not come out on some monitors
(e.g. LG 22CV241)

Note that these registers are only for interfaces:
I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA
(AHBAUDDMA).
For S/PDIF interface this information comes from the stream.

Currently this function dw_hdmi_set_channel_status is only called
from dw-hdmi-i2s-audio in I2S setup.

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---

Change from v2 to v3:
1. Reuse what is already set in iec.status in hw_param.
2. Remove all useless definition of registers and values.
3. Note that the original sampling frequency is not written to
   the channel status as we reuse create_iec958_consumer in pcm_iec958.c.
   Without that it can still play audio fine.

 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  1 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 20 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h     |  2 ++
 include/drm/bridge/dw_hdmi.h                  |  1 +
 4 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 34d8e837555f..20f4f92dd866 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -102,6 +102,7 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
 	}
 
 	dw_hdmi_set_sample_rate(hdmi, hparms->sample_rate);
+	dw_hdmi_set_channel_status(hdmi, hparms->iec.status);
 	dw_hdmi_set_channel_count(hdmi, hparms->channels);
 	dw_hdmi_set_channel_allocation(hdmi, hparms->cea.channel_allocation);
 
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index bd65d0479683..aa7efd4da1c8 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -582,6 +582,26 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
 	return n;
 }
 
+/*
+ * When transmitting IEC60958 linear PCM audio, these registers allow to
+ * configure the channel status information of all the channel status
+ * bits in the IEC60958 frame. For the moment this configuration is only
+ * used when the I2S audio interface, General Purpose Audio (GPA),
+ * or AHB audio DMA (AHBAUDDMA) interface is active
+ * (for S/PDIF interface this information comes from the stream).
+ */
+void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi,
+				u8 *channel_status)
+{
+	/*
+	 * Set channel status register for frequency and word length.
+	 * Use default values for other registers.
+	 */
+	hdmi_writeb(hdmi, channel_status[3], HDMI_FC_AUDSCHNLS7);
+	hdmi_writeb(hdmi, channel_status[4], HDMI_FC_AUDSCHNLS8);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_set_channel_status);
+
 static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	unsigned long pixel_clk, unsigned int sample_rate)
 {
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
index 6988f12d89d9..fcff5059db24 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
@@ -158,6 +158,8 @@
 #define HDMI_FC_SPDDEVICEINF                    0x1062
 #define HDMI_FC_AUDSCONF                        0x1063
 #define HDMI_FC_AUDSSTAT                        0x1064
+#define HDMI_FC_AUDSCHNLS7                      0x106e
+#define HDMI_FC_AUDSCHNLS8                      0x106f
 #define HDMI_FC_DATACH0FILL                     0x1070
 #define HDMI_FC_DATACH1FILL                     0x1071
 #define HDMI_FC_DATACH2FILL                     0x1072
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index cf528c289857..4b3e863c4f8a 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -156,6 +156,7 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
 void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt);
+void dw_hdmi_set_channel_status(struct dw_hdmi *hdmi, u8 *channel_status);
 void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca);
 void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
 void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
-- 
2.23.0.162.g0b9fbb3734-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
