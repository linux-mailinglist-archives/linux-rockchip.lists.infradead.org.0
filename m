Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF74C327B4
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 06:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnMqJjHdIH7FkItnWx/7kN6ZkhYmFVuKICIRxrciV8A=; b=ZKfseehlmFCeI5
	+CyZ1J1wbRxTG0GH+VXxqZ76dLrmM2MlPfTHhca+W7SUvGMyxsVN/AukaNG0rKNG8eS07xFyDKqpO
	Qp3L7Bbj0hJ3303BB5FYXB0HOjqwrFMJkXGtyebQpNlaOQl3tiAQl06rh+AFk+gNU5FXUazs53QVe
	0ZsnKu9ak9xCN7FBdTCLa8VeWk5EWIW9TDFBTlDpAS5QWIUgyPRLFOA8sOPRbqLm8aJaaEDOw26J/
	Q0tFyrXtnd8vHJgiZT1W/sspXLNMZgM5BlQQf9SEudR/ABScwDX62qISb6MchRFNPVCe0uyp819je
	tSNwcRetUwc1EG1b1etg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXefm-0003NG-I9; Mon, 03 Jun 2019 04:34:14 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXefP-0002ik-Mi
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 04:34:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id h2so4277639pgg.1
 for <linux-rockchip@lists.infradead.org>; Sun, 02 Jun 2019 21:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VNhIPfCzhvP16fqORSEWqfVMPdXyoyqEWF63uuLSDrk=;
 b=aS63RSB2MNke62PjJpoyae9QYgwadmzCHxyo/akbQ6j0njb7Qvs1M42x05Nl+STv4N
 aT36WXdgX14k/02Uu5lOtg0gDcVzgC82+oI2MDXRTP2djZfNlQBgktFTbm0TIYz9LeEM
 UQxXP76qGTfkBpPvYmVsorx3tFk+XkOps4S8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VNhIPfCzhvP16fqORSEWqfVMPdXyoyqEWF63uuLSDrk=;
 b=T+xnlJOVrGG2T1CehIegR8VP1vc+Qg7JjAHL2Lwmf1y58zQC9UxM5RIQ+JS9BBzBSy
 OPE4nT8AhD0V51CUji3PBsCyIpAO7bOHNILCXQJ9NqpahRV5+E7e4ir2ykCRCxneUVim
 4Px8uuNTLXjyLiJUKP5XMdtWtZHo3dZ66NLUkV0S2L7/g3DYAbbW69XOzsppQEIarbq0
 ew85orzYCNMyfDOIExWgecbKhf7pzFBu65fBtMFspV+J4eX4td04rochvMdF1j5QmYF9
 KoywoM1hP28usBWgyEjNFBTHXSwb+syVvczhaFy9m1hn53iIn186pnjqJM20fsmO2oOg
 0dDg==
X-Gm-Message-State: APjAAAVZmyQx3rVXtSQQn0mjrhGWvXz+t1a6XiGq9lytYgum+sSyv+sj
 fOrclf9Up7DLGNd7uPcR4iG3Ag==
X-Google-Smtp-Source: APXvYqxCKuyRQ2X1UulsfHVItZDlh+50qnG+L/5rSS2nM2O2Kzttw7fu9DPtrRkmFky1mxn3GQpxbw==
X-Received: by 2002:a65:5302:: with SMTP id m2mr15280720pgq.266.1559536431198; 
 Sun, 02 Jun 2019 21:33:51 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id g22sm13550306pfo.28.2019.06.02.21.33.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 21:33:50 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] ASoC: rockchip_max98090: Add dai_link for HDMI
Date: Mon,  3 Jun 2019 12:32:48 +0800
Message-Id: <20190603043251.226549-5-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_213352_181914_1E62F616 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Use two dai_links. One for HDMI and one for max98090.
With this setup, audio can play to speaker and HDMI selectively.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 82 +++++++++++++++++++-------
 1 file changed, 60 insertions(+), 22 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 789d6f1e2b5f..2dd247670c7a 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -53,6 +53,7 @@ static const struct snd_soc_dapm_widget rk_dapm_widgets[] = {
 	SND_SOC_DAPM_MIC("Headset Mic", NULL),
 	SND_SOC_DAPM_MIC("Int Mic", NULL),
 	SND_SOC_DAPM_SPK("Speaker", NULL),
+	SND_SOC_DAPM_LINE("HDMI", NULL),
 };
 
 static const struct snd_soc_dapm_route rk_audio_map[] = {
@@ -64,6 +65,7 @@ static const struct snd_soc_dapm_route rk_audio_map[] = {
 	{"Headphone", NULL, "HPR"},
 	{"Speaker", NULL, "SPKL"},
 	{"Speaker", NULL, "SPKR"},
+	{"HDMI", NULL, "TX"},
 };
 
 static const struct snd_kcontrol_new rk_mc_controls[] = {
@@ -71,6 +73,7 @@ static const struct snd_kcontrol_new rk_mc_controls[] = {
 	SOC_DAPM_PIN_SWITCH("Headset Mic"),
 	SOC_DAPM_PIN_SWITCH("Int Mic"),
 	SOC_DAPM_PIN_SWITCH("Speaker"),
+	SOC_DAPM_PIN_SWITCH("HDMI"),
 };
 
 static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
@@ -104,33 +107,48 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 
 	ret = snd_soc_dai_set_sysclk(cpu_dai, 0, mclk,
 				     SND_SOC_CLOCK_OUT);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+	if (ret && ret != -ENOTSUPP) {
+		dev_err(cpu_dai->dev, "Can't set cpu dai clock %d\n", ret);
 		return ret;
 	}
 
 	ret = snd_soc_dai_set_sysclk(codec_dai, 0, mclk,
 				     SND_SOC_CLOCK_IN);
-	if (ret < 0) {
-		dev_err(codec_dai->dev, "Can't set codec clock %d\n", ret);
+	if (ret && ret != -ENOTSUPP) {
+		dev_err(codec_dai->dev, "Can't set codec dai clock %d\n", ret);
 		return ret;
 	}
 
-	return ret;
+	return 0;
 }
 
 static const struct snd_soc_ops rk_aif1_ops = {
 	.hw_params = rk_aif1_hw_params,
 };
 
-static struct snd_soc_dai_link rk_dailink = {
-	.name = "max98090",
-	.stream_name = "Audio",
-	.codec_dai_name = "HiFi",
-	.ops = &rk_aif1_ops,
-	/* set max98090 as slave */
-	.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
-		SND_SOC_DAIFMT_CBS_CFS,
+enum {
+	DAILINK_MAX98090,
+	DAILINK_HDMI,
+};
+
+/* max98090 and HDMI codec dai_link */
+static struct snd_soc_dai_link rk_dailinks[] = {
+	[DAILINK_MAX98090] = {
+		.name = "max98090",
+		.stream_name = "Analog",
+		.ops = &rk_aif1_ops,
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+	},
+	[DAILINK_HDMI] = {
+		.name = "HDMI",
+		.stream_name = "HDMI",
+		.codec_name = "hdmi-audio-codec.3.auto",
+		.codec_dai_name = "i2s-hifi",
+		.ops = &rk_aif1_ops,
+		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
+			SND_SOC_DAIFMT_CBS_CFS,
+	}
 };
 
 static int rk_98090_headset_init(struct snd_soc_component *component);
@@ -143,8 +161,8 @@ static struct snd_soc_aux_dev rk_98090_headset_dev = {
 static struct snd_soc_card snd_soc_card_rk = {
 	.name = "ROCKCHIP-I2S",
 	.owner = THIS_MODULE,
-	.dai_link = &rk_dailink,
-	.num_links = 1,
+	.dai_link = rk_dailinks,
+	.num_links = ARRAY_SIZE(rk_dailinks),
 	.aux_dev = &rk_98090_headset_dev,
 	.num_aux_devs = 1,
 	.dapm_widgets = rk_dapm_widgets,
@@ -180,27 +198,47 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	int ret = 0;
 	struct snd_soc_card *card = &snd_soc_card_rk;
 	struct device_node *np = pdev->dev.of_node;
+	struct device_node *np_cpu;
+	struct of_phandle_args args;
 
 	/* register the soc card */
 	card->dev = &pdev->dev;
 
-	rk_dailink.codec_of_node = of_parse_phandle(np,
-			"rockchip,audio-codec", 0);
-	if (!rk_dailink.codec_of_node) {
+	rk_dailinks[DAILINK_MAX98090].codec_of_node =
+			of_parse_phandle(np, "rockchip,audio-codec", 0);
+	if (!rk_dailinks[DAILINK_MAX98090].codec_of_node) {
 		dev_err(&pdev->dev,
 			"Property 'rockchip,audio-codec' missing or invalid\n");
 		return -EINVAL;
 	}
 
-	rk_dailink.cpu_of_node = of_parse_phandle(np,
-			"rockchip,i2s-controller", 0);
-	if (!rk_dailink.cpu_of_node) {
+	ret = of_parse_phandle_with_fixed_args(np, "rockchip,audio-codec",
+					       0, 0, &args);
+	if (ret) {
+		dev_err(&pdev->dev,
+			"Unable to parse property 'rockchip,audio-codec'\n");
+		return ret;
+	}
+
+	ret = snd_soc_get_dai_name(
+			&args, &rk_dailinks[DAILINK_MAX98090].codec_dai_name);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to get codec_dai_name\n");
+		return ret;
+	}
+
+	np_cpu = of_parse_phandle(np, "rockchip,i2s-controller", 0);
+
+	if (!np_cpu) {
 		dev_err(&pdev->dev,
 			"Property 'rockchip,i2s-controller' missing or invalid\n");
 		return -EINVAL;
 	}
 
-	rk_dailink.platform_of_node = rk_dailink.cpu_of_node;
+	rk_dailinks[DAILINK_MAX98090].cpu_of_node = np_cpu;
+	rk_dailinks[DAILINK_MAX98090].platform_of_node = np_cpu;
+	rk_dailinks[DAILINK_HDMI].cpu_of_node = np_cpu;
+	rk_dailinks[DAILINK_HDMI].platform_of_node = np_cpu;
 
 	rk_98090_headset_dev.codec_of_node = of_parse_phandle(np,
 			"rockchip,headset-codec", 0);
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
