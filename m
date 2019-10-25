Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E458BE4C44
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 15:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ezEHyIg5TT/lCMJr8WA/jB/SCngKbi/+RwOvwJGGLY=; b=uuEKYt2onnkM9M
	bOTto7WMB5W2yo3pYr7rEe8JQkNNS+CYUYIBii9jV0OPLxF0hq5mHBzabcWXxHSPh+9AQx2cGt7Hi
	XlUNP+XPl50UiyC5XhebDsBVza0FPMCaPCamwl5cvN6ZqSV/RcKjpmI1KFjtsB2DuxKuR7FFn3ic/
	zlGEP7FcJ/doIYvthPPmdnDu7/+u2PSUwKH3umy+/MFtLst6DTbsqcU4Bc5hnT9cUG0AnD5arjIIW
	Kdj0RO+DwBCtxTMRlQt0Spaqz1YzGQM7RVfdeiuimwVaSdy9sBgsAZ+T4P7c7kLXb6caahjfrcX29
	KWOfkDIj7XKBmF4GyoJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzh2-0008J8-KU; Fri, 25 Oct 2019 13:31:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzgC-0007cc-FX
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 13:31:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id 23so1571192pgk.3
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 06:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ve3UtPvtc/xYkzxdt2g2jT6KC14vNaRw1VSiMrx2k+M=;
 b=DK2nUf+FP8kZb9OOpfloe4MHcvJFz2/rv7k5yAQK83PBDj4jh15Z+fI3qR98PHrYgw
 BWhr0pj65MZmG/uTpX+k5yiYagE4bTizChAfOggclPZjhzHVoe/rDN4fZg+p+XFiCzTe
 ZF3c6QKMJ387PjbCa+kDDAiCkRSPcs8Vp2Xt4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ve3UtPvtc/xYkzxdt2g2jT6KC14vNaRw1VSiMrx2k+M=;
 b=tNPq2svOVqDDNUhY58spJ0ySkWf47VXTBAbMi95jR7uPd1wUEnyJlTZVE64B2pTipZ
 T2KFSAAt5aKmBFLXBcObwQU9uhHW+nNcUeifMyv7XNYH2J6POkV/X3CL3dLx1d8kCOsT
 IqsLGbuI78KtWgPTQ/knnsLko4GgFzs0uU/J/Y0g49HU11O3eqgUCwVKYvbdXIejP6ee
 C7avY9RnthD/Ntxfhlo9nEXUwRMcflMzvSlOeJWbwAZcnKan1QlWRXlmN5hi+su+wmfz
 YXNfIGoJ7OxN+8kcM82DeNgU5MoyDm2wrrydNaORUjHSZXTAVrqBvSj1J2s21BSOjj6N
 RIMQ==
X-Gm-Message-State: APjAAAXuPSEcDlb4qoD9/e6Q5JiFV0IJ2XgEOirj+LItWT/3+Xea6VcL
 5rRYvBhqd+33CQK/jeC/vs7Geg==
X-Google-Smtp-Source: APXvYqwiC2BqHWw3Cqka033jfN2e+Ph/X2FqnMG3562MQjdYekANvaSdM2so/agTcj766/MpFJOtXw==
X-Received: by 2002:a17:90a:730a:: with SMTP id
 m10mr4184984pjk.80.1572010259258; 
 Fri, 25 Oct 2019 06:30:59 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id e23sm2677354pgh.84.2019.10.25.06.30.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:30:58 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 3/6] ASoC: rockchip_max98090: Optionally support HDMI use
 case
Date: Fri, 25 Oct 2019 21:30:04 +0800
Message-Id: <20191025133007.11190-4-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063100_579738_94E2A0BE 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Support three different use cases with rockchip_max98090 driver:

- max98090 only: Current usage, where HDMI link is missing.
- HDMI only: Needed use case for veyron_mickey board.
- max98090 + HDMI: Ideal use case for veyron_jerry, veyron_minnie..etc.

Note that we keep max98090 only usage for backward compatibility.
From devicetree, different compatible string can be passed to configure
the usage.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
The checkpatch error
"Macros with complex values should be enclosed in parentheses"
seems not suitable for the macro usage for DAPM widget, route, and controls.

 sound/soc/rockchip/rockchip_max98090.c | 371 ++++++++++++++++++++-----
 1 file changed, 303 insertions(+), 68 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 0097df1fae66..550e57789719 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -6,11 +6,13 @@
  */
 
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/gpio.h>
 #include <linux/of_gpio.h>
 #include <sound/core.h>
+#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
@@ -21,6 +23,17 @@
 
 #define DRV_NAME "rockchip-snd-max98090"
 
+enum rk_snd_usage {
+	RK_USE_MAX98090, /* Only use max98090. */
+	RK_USE_HDMI, /* Only use HDMI. */
+	RK_USE_MAX98090_HDMI, /* Use both max98090 and HDMI. */
+};
+
+struct rk_card_config {
+	enum rk_snd_usage usage;
+	struct snd_soc_card *card;
+};
+
 static struct snd_soc_jack headset_jack;
 
 /* Headset jack detection DAPM pins */
@@ -36,28 +49,73 @@ static struct snd_soc_jack_pin headset_jack_pins[] = {
 
 };
 
-static const struct snd_soc_dapm_widget rk_dapm_widgets[] = {
-	SND_SOC_DAPM_HP("Headphone", NULL),
-	SND_SOC_DAPM_MIC("Headset Mic", NULL),
-	SND_SOC_DAPM_MIC("Int Mic", NULL),
-	SND_SOC_DAPM_SPK("Speaker", NULL),
+#define RK_MAX98090_WIDGETS \
+	SND_SOC_DAPM_HP("Headphone", NULL), \
+	SND_SOC_DAPM_MIC("Headset Mic", NULL), \
+	SND_SOC_DAPM_MIC("Int Mic", NULL), \
+	SND_SOC_DAPM_SPK("Speaker", NULL)
+
+#define RK_HDMI_WIDGETS \
+	SND_SOC_DAPM_LINE("HDMI", NULL)
+
+static const struct snd_soc_dapm_widget rk_max98090_dapm_widgets[] = {
+	RK_MAX98090_WIDGETS,
+};
+
+static const struct snd_soc_dapm_widget rk_hdmi_dapm_widgets[] = {
+	RK_HDMI_WIDGETS,
+};
+
+static const struct snd_soc_dapm_widget rk_max98090_hdmi_dapm_widgets[] = {
+	RK_MAX98090_WIDGETS,
+	RK_HDMI_WIDGETS,
+};
+
+#define RK_MAX98090_AUDIO_MAP \
+	{"IN34", NULL, "Headset Mic"}, \
+	{"Headset Mic", NULL, "MICBIAS"}, \
+	{"DMICL", NULL, "Int Mic"}, \
+	{"Headphone", NULL, "HPL"}, \
+	{"Headphone", NULL, "HPR"}, \
+	{"Speaker", NULL, "SPKL"}, \
+	{"Speaker", NULL, "SPKR"}
+
+#define RK_HDMI_AUDIO_MAP \
+	{"HDMI", NULL, "TX"}
+
+static const struct snd_soc_dapm_route rk_max98090_audio_map[] = {
+	RK_MAX98090_AUDIO_MAP,
+};
+
+static const struct snd_soc_dapm_route rk_hdmi_audio_map[] = {
+	RK_HDMI_AUDIO_MAP,
+};
+
+static const struct snd_soc_dapm_route rk_max98090_hdmi_audio_map[] = {
+	RK_MAX98090_AUDIO_MAP,
+	RK_HDMI_AUDIO_MAP,
+};
+
+#define RK_MAX98090_CONTROLS \
+	SOC_DAPM_PIN_SWITCH("Headphone"), \
+	SOC_DAPM_PIN_SWITCH("Headset Mic"), \
+	SOC_DAPM_PIN_SWITCH("Int Mic"), \
+	SOC_DAPM_PIN_SWITCH("Speaker")
+
+#define RK_HDMI_CONTROLS \
+	SOC_DAPM_PIN_SWITCH("HDMI")
+
+static const struct snd_kcontrol_new rk_max98090_controls[] = {
+	RK_MAX98090_CONTROLS,
 };
 
-static const struct snd_soc_dapm_route rk_audio_map[] = {
-	{"IN34", NULL, "Headset Mic"},
-	{"Headset Mic", NULL, "MICBIAS"},
-	{"DMICL", NULL, "Int Mic"},
-	{"Headphone", NULL, "HPL"},
-	{"Headphone", NULL, "HPR"},
-	{"Speaker", NULL, "SPKL"},
-	{"Speaker", NULL, "SPKR"},
+static const struct snd_kcontrol_new rk_hdmi_controls[] = {
+	RK_HDMI_CONTROLS,
 };
 
-static const struct snd_kcontrol_new rk_mc_controls[] = {
-	SOC_DAPM_PIN_SWITCH("Headphone"),
-	SOC_DAPM_PIN_SWITCH("Headset Mic"),
-	SOC_DAPM_PIN_SWITCH("Int Mic"),
-	SOC_DAPM_PIN_SWITCH("Speaker"),
+static const struct snd_kcontrol_new rk_max98090_hdmi_controls[] = {
+	RK_MAX98090_CONTROLS,
+	RK_HDMI_CONTROLS,
 };
 
 static int rk_jack_event(struct notifier_block *nb, unsigned long event,
@@ -122,15 +180,20 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 
 	ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
 				     SND_SOC_CLOCK_OUT);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+	if (ret) {
+		dev_err(cpu_dai->dev, "Can't set cpu dai clock %d\n", ret);
 		return ret;
 	}
 
 	ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
 				     SND_SOC_CLOCK_IN);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+
+	/* HDMI codec dai does not need to set sysclk. */
+	if (!strcmp(rtd->dai_link->name, "HDMI"))
+		return 0;
+
+	if (ret) {
+		dev_err(codec_dai->dev, "Can't set codec dai clock %d\n", ret);
 		return ret;
 	}
 
@@ -152,20 +215,67 @@ static const struct snd_soc_ops rk_aif1_ops = {
 	.startup = rk_aif1_startup,
 };
 
-SND_SOC_DAILINK_DEFS(hifi,
-	DAILINK_COMP_ARRAY(COMP_EMPTY()),
-	DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
-	DAILINK_COMP_ARRAY(COMP_EMPTY()));
-
-static struct snd_soc_dai_link rk_dailink = {
-	.name = "max98090",
-	.stream_name = "Audio",
-	.init = rk_init,
-	.ops = &rk_aif1_ops,
-	/* set max98090 as slave */
-	.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
-		SND_SOC_DAIFMT_CBS_CFS,
-	SND_SOC_DAILINK_REG(hifi),
+SND_SOC_DAILINK_DEFS(analog,
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()),
+		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "HiFi")),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+SND_SOC_DAILINK_DEFS(hdmi,
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()),
+		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "i2s-hifi")),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
+enum {
+	DAILINK_MAX98090,
+	DAILINK_HDMI,
+};
+
+/* max98090 dai_link */
+static struct snd_soc_dai_link rk_max98090_dailinks[] = {
+	{
+		.name = "max98090",
+		.stream_name = "Analog",
+		.init = rk_init,
+		.ops = &rk_aif1_ops,
+		/* set max98090 as slave */
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(analog),
+	},
+};
+
+/* HDMI codec dai_link */
+static struct snd_soc_dai_link rk_hdmi_dailinks[] = {
+	{
+		.name = "HDMI",
+		.stream_name = "HDMI",
+		.ops = &rk_aif1_ops,
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(hdmi),
+	}
+};
+
+/* max98090 and HDMI codec dai_link */
+static struct snd_soc_dai_link rk_max98090_hdmi_dailinks[] = {
+	[DAILINK_MAX98090] = {
+		.name = "max98090",
+		.stream_name = "Analog",
+		.init = rk_init,
+		.ops = &rk_aif1_ops,
+		/* set max98090 as slave */
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(analog),
+	},
+	[DAILINK_HDMI] = {
+		.name = "HDMI",
+		.stream_name = "HDMI",
+		.ops = &rk_aif1_ops,
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+		SND_SOC_DAILINK_REG(hdmi),
+	}
 };
 
 static int rk_98090_headset_init(struct snd_soc_component *component);
@@ -175,19 +285,47 @@ static struct snd_soc_aux_dev rk_98090_headset_dev = {
 	.init = rk_98090_headset_init,
 };
 
-static struct snd_soc_card snd_soc_card_rk = {
+static struct snd_soc_card rockchip_max98090_card = {
 	.name = "ROCKCHIP-I2S",
 	.owner = THIS_MODULE,
-	.dai_link = &rk_dailink,
-	.num_links = 1,
+	.dai_link = rk_max98090_dailinks,
+	.num_links = ARRAY_SIZE(rk_max98090_dailinks),
+	.aux_dev = &rk_98090_headset_dev,
+	.num_aux_devs = 1,
+	.dapm_widgets = rk_max98090_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk_max98090_dapm_widgets),
+	.dapm_routes = rk_max98090_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(rk_max98090_audio_map),
+	.controls = rk_max98090_controls,
+	.num_controls = ARRAY_SIZE(rk_max98090_controls),
+};
+
+static struct snd_soc_card rockchip_hdmi_card = {
+	.name = "ROCKCHIP-HDMI",
+	.owner = THIS_MODULE,
+	.dai_link = rk_hdmi_dailinks,
+	.num_links = ARRAY_SIZE(rk_hdmi_dailinks),
+	.dapm_widgets = rk_hdmi_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk_hdmi_dapm_widgets),
+	.dapm_routes = rk_hdmi_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(rk_hdmi_audio_map),
+	.controls = rk_hdmi_controls,
+	.num_controls = ARRAY_SIZE(rk_hdmi_controls),
+};
+
+static struct snd_soc_card rockchip_max98090_hdmi_card = {
+	.name = "ROCKCHIP-MAX98090-HDMI",
+	.owner = THIS_MODULE,
+	.dai_link = rk_max98090_hdmi_dailinks,
+	.num_links = ARRAY_SIZE(rk_max98090_hdmi_dailinks),
 	.aux_dev = &rk_98090_headset_dev,
 	.num_aux_devs = 1,
-	.dapm_widgets = rk_dapm_widgets,
-	.num_dapm_widgets = ARRAY_SIZE(rk_dapm_widgets),
-	.dapm_routes = rk_audio_map,
-	.num_dapm_routes = ARRAY_SIZE(rk_audio_map),
-	.controls = rk_mc_controls,
-	.num_controls = ARRAY_SIZE(rk_mc_controls),
+	.dapm_widgets = rk_max98090_hdmi_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(rk_max98090_hdmi_dapm_widgets),
+	.dapm_routes = rk_max98090_hdmi_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(rk_max98090_hdmi_audio_map),
+	.controls = rk_max98090_hdmi_controls,
+	.num_controls = ARRAY_SIZE(rk_max98090_hdmi_controls),
 };
 
 static int rk_98090_headset_init(struct snd_soc_component *component)
@@ -195,7 +333,7 @@ static int rk_98090_headset_init(struct snd_soc_component *component)
 	int ret;
 
 	/* Enable Headset and 4 Buttons Jack detection */
-	ret = snd_soc_card_jack_new(&snd_soc_card_rk, "Headset Jack",
+	ret = snd_soc_card_jack_new(component->card, "Headset Jack",
 				    SND_JACK_HEADSET |
 				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
 				    SND_JACK_BTN_2 | SND_JACK_BTN_3,
@@ -210,41 +348,112 @@ static int rk_98090_headset_init(struct snd_soc_component *component)
 	return ret;
 }
 
+static int rk_parse_codec_from_of(struct device *dev, struct device_node *np,
+				  const char *codec_property_name,
+				  struct snd_soc_dai_link_component *codecs)
+{
+	struct device_node *np_codec;
+
+	np_codec = of_parse_phandle(np, codec_property_name, 0);
+	if (!np_codec) {
+		dev_err(dev,
+			"Property %s missing or invalid\n",
+			codec_property_name);
+		return -EINVAL;
+	}
+
+	codecs->of_node = np_codec;
+	return 0;
+}
+
+static int rk_parse_headset_from_of(struct device *dev, struct device_node *np)
+{
+	rk_98090_headset_dev.dlc.of_node = of_parse_phandle(
+			np, "rockchip,headset-codec", 0);
+	if (!rk_98090_headset_dev.dlc.of_node) {
+		dev_err(dev,
+			"Property 'rockchip,headset-codec' missing/invalid\n");
+		return -EINVAL;
+	}
+	return 0;
+}
+
 static int snd_rk_mc_probe(struct platform_device *pdev)
 {
 	int ret = 0;
-	struct snd_soc_card *card = &snd_soc_card_rk;
+	struct snd_soc_card *card;
+	struct device *dev = &pdev->dev;
 	struct device_node *np = pdev->dev.of_node;
+	struct device_node *np_cpu;
+	const struct of_device_id *match;
+	struct rk_card_config *config;
+	enum rk_snd_usage usage;
+
+	/* Find the config and card to use based on match table. */
+	match = of_match_device(dev->driver->of_match_table, dev);
+	if (!match || !match->data)
+		return -EINVAL;
 
-	/* register the soc card */
-	card->dev = &pdev->dev;
+	config = (struct rk_card_config *)match->data;
+	card = config->card;
+	usage = config->usage;
+	card->dev = dev;
 
-	rk_dailink.codecs->of_node = of_parse_phandle(np,
-			"rockchip,audio-codec", 0);
-	if (!rk_dailink.codecs->of_node) {
+	/* Parse DTS for I2S controller. */
+	np_cpu = of_parse_phandle(np, "rockchip,i2s-controller", 0);
+
+	if (!np_cpu) {
 		dev_err(&pdev->dev,
-			"Property 'rockchip,audio-codec' missing or invalid\n");
+			"Property 'rockchip,i2s-controller missing or invalid\n");
 		return -EINVAL;
 	}
 
-	rk_dailink.cpus->of_node = of_parse_phandle(np,
-			"rockchip,i2s-controller", 0);
-	if (!rk_dailink.cpus->of_node) {
-		dev_err(&pdev->dev,
-			"Property 'rockchip,i2s-controller' missing or invalid\n");
-		return -EINVAL;
+	/* Parse DTS for max98090-only card. */
+	if (usage == RK_USE_MAX98090) {
+		ret = rk_parse_codec_from_of(dev, np, "rockchip,audio-codec",
+					     card->dai_link[0].codecs);
+		if (ret)
+			return ret;
+		card->dai_link[0].cpus->of_node = np_cpu;
+		card->dai_link[0].platforms->of_node = np_cpu;
 	}
 
-	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
+	/* Parse DTS for HDMI-only card. */
+	if (usage == RK_USE_HDMI) {
+		ret = rk_parse_codec_from_of(dev, np, "rockchip,hdmi-codec",
+					     card->dai_link[0].codecs);
+		if (ret)
+			return ret;
+		card->dai_link[0].cpus->of_node = np_cpu;
+		card->dai_link[0].platforms->of_node = np_cpu;
+	}
 
-	rk_98090_headset_dev.dlc.of_node = of_parse_phandle(np,
-			"rockchip,headset-codec", 0);
-	if (!rk_98090_headset_dev.dlc.of_node) {
-		dev_err(&pdev->dev,
-			"Property 'rockchip,headset-codec' missing/invalid\n");
-		return -EINVAL;
+	/* Parse DTS for max98090 plus HDMI card. */
+	if (usage == RK_USE_MAX98090_HDMI) {
+		ret = rk_parse_codec_from_of(
+			dev, np, "rockchip,audio-codec",
+			card->dai_link[DAILINK_MAX98090].codecs);
+		if (ret)
+			return ret;
+		ret = rk_parse_codec_from_of(
+			dev, np, "rockchip,hdmi-codec",
+			card->dai_link[DAILINK_HDMI].codecs);
+		if (ret)
+			return ret;
+		card->dai_link[DAILINK_MAX98090].cpus->of_node = np_cpu;
+		card->dai_link[DAILINK_MAX98090].platforms->of_node = np_cpu;
+		card->dai_link[DAILINK_HDMI].cpus->of_node = np_cpu;
+		card->dai_link[DAILINK_HDMI].platforms->of_node = np_cpu;
 	}
 
+	/* Parse headset detection codec. */
+	if (usage == RK_USE_MAX98090 || usage == RK_USE_MAX98090_HDMI) {
+		ret = rk_parse_headset_from_of(dev, np);
+		if (ret)
+			return ret;
+	}
+
+	/* Parse card name. */
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
 	if (ret) {
 		dev_err(&pdev->dev,
@@ -252,6 +461,7 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* register the soc card */
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
 	if (ret) {
 		dev_err(&pdev->dev,
@@ -262,9 +472,34 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	return ret;
 }
 
+struct rk_card_config rk_card_configs[] = {
+	[RK_USE_MAX98090] = {
+		.usage = RK_USE_MAX98090,
+		.card = &rockchip_max98090_card,
+	},
+	[RK_USE_HDMI] = {
+		.usage = RK_USE_HDMI,
+		.card = &rockchip_hdmi_card,
+	},
+	[RK_USE_MAX98090_HDMI] = {
+		.usage = RK_USE_MAX98090_HDMI,
+		.card = &rockchip_max98090_hdmi_card,
+	},
+};
+
 static const struct of_device_id rockchip_max98090_of_match[] = {
-	{ .compatible = "rockchip,rockchip-audio-max98090", },
-	{},
+	{
+		.compatible = "rockchip,rockchip-audio-max98090",
+		.data = &rk_card_configs[RK_USE_MAX98090],
+	},
+	{
+		.compatible = "rockchip,rockchip-audio-hdmi",
+		.data = &rk_card_configs[RK_USE_HDMI],
+	},
+	{
+		.compatible = "rockchip,rockchip-audio-max98090-hdmi",
+		.data = &rk_card_configs[RK_USE_MAX98090_HDMI],
+	},
 };
 
 MODULE_DEVICE_TABLE(of, rockchip_max98090_of_match);
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
