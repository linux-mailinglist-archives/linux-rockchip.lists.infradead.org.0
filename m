Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958F4327B9
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 06:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvxZWBQbN4pPaICkzIFx6I2GGKpOD9sXtHP9yjQVe64=; b=WMCg99mwZLuJ+7
	uN5MDfW+9a6MKuvB3K3hUuwEugFXG3m8GYXAj4dnjqTd6aQZa8hZi6afbvU1oSagQ9c0PN+0Q+rs1
	MW5o2i4fsx+m386R2ML3c6L4g0XJVTMMIDxFX8tnCzFWjIXJkwQNEgH2dbxRF/3SswDfXqZp8+xBJ
	xo5T9ETxXym0csSADdIQ6ACCOReNtYvK6s/LQAyuNonQnh1YuCcF7Uzz6hNdfW+sQjY9v/T/dcfWo
	6sVvmQqNKRhT0fJTeY4sSRPG8e04On3XQj43vm5OaNv07BWEoF7EMps1z5HCRQOOyHbBjY0RT/MNc
	kMtrqwk5VaSuk9p30mHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXegD-00043G-4p; Mon, 03 Jun 2019 04:34:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefd-00035t-92
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 04:34:35 +0000
Received: by mail-pl1-x643.google.com with SMTP id s24so6316860plr.8
 for <linux-rockchip@lists.infradead.org>; Sun, 02 Jun 2019 21:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cjn+fe9pHSnglvx4T5q/xNRom5yt6XJeMvAMIuyqpGU=;
 b=Hfq6ax4j9v67eMl3jzhORUV9xlodMxfyEB5jUFylBnMvGjbup0xltWak92wPnYo8jT
 z0URgg2rd1r5wg+Oy3xrddVqdvePsxYBMv74zKntc+d+vjFpS0hNfzpdzd1s9AT5d4X1
 i8E4gAcDkyjhrEy5aOZTU8DXTpX6OpurnFU4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cjn+fe9pHSnglvx4T5q/xNRom5yt6XJeMvAMIuyqpGU=;
 b=g/yxivHl3X7d+iRR860R6j0QEK6sTku1HXHy9PfpYs/mYA+6CrfA/4BDDFosUqKFBt
 X/AL0xKx6t7Gvn4zJze9+F6otTlmkjqMI9pAHuW3iK6W3lsMBP3uJZ4vK2SFMPSe4/qZ
 PtUlvaqji+mAyLApa4GWZE2FR2P5Jlo3QlEo+kkLQG2m9sLuLFGXbRm5mlgJtX8oPkR4
 S0ygup6H1mRiMfBStK0ZCwvTucbW8y71Sga5njSdanAAH9TaxsjSeT0AzPfn/+9vH1lW
 ZqQzHXrZxnVeuL5a63uF1Y3l9KFPhtRt2UFu7iyE4lgY6ADLHLMvXypDbD5u462iLdu9
 SHAw==
X-Gm-Message-State: APjAAAXIwb4D8uFMOBJ/2ol/49jMHx/uGUQ3BFSikUcFzimIMek/4Ank
 vsb6n5asJft1yQorHwuWxO295A==
X-Google-Smtp-Source: APXvYqwtsOJ5Pc96EE50WIzahRr4M7P5Cn839A0uqq7pGgYj7JP4xpqAWFOhLexsz8HaBDU7wChTEA==
X-Received: by 2002:a17:902:9885:: with SMTP id
 s5mr27565604plp.102.1559536444754; 
 Sun, 02 Jun 2019 21:34:04 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id r64sm16094840pfr.58.2019.06.02.21.34.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:34:04 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] ASoC: rockchip_max98090: Add HDMI jack support
Date: Mon,  3 Jun 2019 12:32:50 +0800
Message-Id: <20190603043251.226549-7-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213405_646790_F3E40684 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

In machine driver, create a jack and let hdmi-codec report jack status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 2dd247670c7a..17c50d9fbac1 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -18,6 +18,7 @@
  */
 
 #include <linux/module.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/gpio.h>
@@ -27,6 +28,7 @@
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
+#include <sound/hdmi-codec.h>
 
 #include "rockchip_i2s.h"
 #include "../codecs/ts3a227e.h"
@@ -131,6 +133,26 @@ enum {
 	DAILINK_HDMI,
 };
 
+static struct snd_soc_jack rk_hdmi_jack;
+
+static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
+{
+	struct snd_soc_card *card = runtime->card;
+	struct snd_soc_component *component = runtime->codec_dai->component;
+	struct device *hdmi_dev = snd_soc_card_get_drvdata(card);
+	int ret;
+
+	/* enable jack detection */
+	ret = snd_soc_card_jack_new(card, "HDMI Jack", SND_JACK_LINEOUT,
+				    &rk_hdmi_jack, NULL, 0);
+	if (ret) {
+		dev_err(card->dev, "Can't new HDMI Jack %d\n", ret);
+		return ret;
+	}
+
+	return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack, hdmi_dev);
+}
+
 /* max98090 and HDMI codec dai_link */
 static struct snd_soc_dai_link rk_dailinks[] = {
 	[DAILINK_MAX98090] = {
@@ -148,6 +170,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
+		.init = rk_hdmi_init,
 	}
 };
 
@@ -200,6 +223,8 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct device_node *np_cpu;
 	struct of_phandle_args args;
+	struct device_node *np_hdmi;
+	struct platform_device *hdmi_pdev;
 
 	/* register the soc card */
 	card->dev = &pdev->dev;
@@ -248,6 +273,22 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	/* The hdmi device handles HDMI hotplug detection */
+	np_hdmi = of_parse_phandle(np, "rockchip,hdmi", 0);
+	if (!np_hdmi) {
+		dev_err(&pdev->dev, "Failed to find HDMI node\n");
+		return -EINVAL;
+	}
+
+	hdmi_pdev = of_find_device_by_node(np_hdmi);
+	if (!hdmi_pdev) {
+		dev_err(&pdev->dev, "Waiting for HDMI device %s\n",
+			np_hdmi->full_name);
+		return -EPROBE_DEFER;
+	}
+
+	snd_soc_card_set_drvdata(card, &hdmi_pdev->dev);
+
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
 	if (ret) {
 		dev_err(&pdev->dev,
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
