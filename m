Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3CCE4C45
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 15:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GC2rNoO9JUmCRE1fSJa5R1tv7lkLSjOzhE9i4Ipeb4=; b=MpOjbf5F568UYI
	54b+ujVhmbsCacmnh7VKoykEJpGMcUcgGoqytJqK7/aAOuMRgDjrlYFn/vOUr0QmHKHJ8RWvBuLUY
	q9+zCjAeDKuK+HyiZyVu59dw7tPheLD83iIUDjPd2oNt842LYcYws3CDwltKOtGM13AFFbieDytI1
	X5oSbq5YTB3OTTIVu7XtPaKNSw4+CaWhzC+Xik6bDPfd3IbNr8sjEYFPoKzZNOMQIzM8EGKoCUkLa
	OqzDEhIz5vGYNLQZTHGq2NIVL6C8tlSO79Ee6gQlHBJf9taZkiHKNY5dpuvhdDU4h/VyIbyf254XT
	KJFluodch8gYMj7e47RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzh7-0008L3-7U; Fri, 25 Oct 2019 13:31:57 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzgL-0007jW-0a
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 13:31:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id f14so1552424pgi.9
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 06:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nkuQyVXMMyDZQEt3+CjrZIj+e3tZqkaRw9M9fK6dE0A=;
 b=FkUSFr19U5KiA2qhu5pPmrV/ZY3HrBv7vjJg0Wwe8AaE8M1PUpa9xnHOTXOUZE4xB1
 HFKCiPCrF+GU4ZFfCgL9nza4rfRQc8wRxfNAKRq7jSnbcsfLqlwk2aohnXe3wMuvrCGz
 ldWZJPNk0j6Qc0UMX62VQjJeC6YjNt7KNPLbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nkuQyVXMMyDZQEt3+CjrZIj+e3tZqkaRw9M9fK6dE0A=;
 b=rn7GEMA35nW8W4P4X4FZYVhR0ZXWOPSRCObwZ3JOIBJVtVEXPEjKNE+YCImVejhStS
 X9UCRvGUoBpdCz40Q2bYGOJkTaft2tWcHrcwtP4aWhx+UnEr2hO2elvvI527BavgNR0p
 Sd3kW8RN0+AXqkqw7Qki0ioBDerIkCIuXNXZw4owSwxLf5zzSwG6NOYJ3N9UzfjOPPNW
 pxDCD4+7O2YkwkfN2T0WtOf3/zHwjWnEXPvMIt5VxbxCRy80iJF19Sh+ZoIWLq0FLeDj
 jVY+E0Gig7JgDBIqRE3laMnpmee5KBkPMq8UZel9sIj08P9I0nfsy6e3uUcwGvwkoswF
 UfYA==
X-Gm-Message-State: APjAAAUwschOgQoUUB2x5m9NsKinudLrX8Tin8FotO1ov2hMQBrWOrmI
 JuL9JKGB07aqj9rRb1EdIFXRsQ==
X-Google-Smtp-Source: APXvYqypx1iOOLXyzbMO61gMPyKWIWC+7EwZjaBPtphFD0tkNUyB/PtgGJIIMnLo6epNgm/8d1yPOA==
X-Received: by 2002:a63:4304:: with SMTP id q4mr4294927pga.218.1572010268293; 
 Fri, 25 Oct 2019 06:31:08 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id q33sm2430940pgm.50.2019.10.25.06.31.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:31:07 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 4/6] ASoC: rockchip_max98090: Add HDMI jack support
Date: Fri, 25 Oct 2019 21:30:05 +0800
Message-Id: <20191025133007.11190-5-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063109_093065_2634EEE0 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

In machine driver, create a jack and let hdmi-codec report jack status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/Kconfig             |  3 ++-
 sound/soc/rockchip/rockchip_max98090.c | 21 +++++++++++++++++++++
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
index b43657e6e655..d610b553ea3b 100644
--- a/sound/soc/rockchip/Kconfig
+++ b/sound/soc/rockchip/Kconfig
@@ -40,9 +40,10 @@ config SND_SOC_ROCKCHIP_MAX98090
 	select SND_SOC_ROCKCHIP_I2S
 	select SND_SOC_MAX98090
 	select SND_SOC_TS3A227E
+	select SND_SOC_HDMI_CODEC
 	help
 	  Say Y or M here if you want to add support for SoC audio on Rockchip
-	  boards using the MAX98090 codec, such as Veyron.
+	  boards using the MAX98090 codec and HDMI codec, such as Veyron.
 
 config SND_SOC_ROCKCHIP_RT5645
 	tristate "ASoC support for Rockchip boards using a RT5645/RT5650 codec"
diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 550e57789719..fdd1d9921a4e 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -230,6 +230,25 @@ enum {
 	DAILINK_HDMI,
 };
 
+static struct snd_soc_jack rk_hdmi_jack;
+
+static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
+{
+	struct snd_soc_card *card = runtime->card;
+	struct snd_soc_component *component = runtime->codec_dai->component;
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
+	return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack);
+}
+
 /* max98090 dai_link */
 static struct snd_soc_dai_link rk_max98090_dailinks[] = {
 	{
@@ -249,6 +268,7 @@ static struct snd_soc_dai_link rk_hdmi_dailinks[] = {
 	{
 		.name = "HDMI",
 		.stream_name = "HDMI",
+		.init = rk_hdmi_init,
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
@@ -271,6 +291,7 @@ static struct snd_soc_dai_link rk_max98090_hdmi_dailinks[] = {
 	[DAILINK_HDMI] = {
 		.name = "HDMI",
 		.stream_name = "HDMI",
+		.init = rk_hdmi_init,
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
