Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06C266AB3
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 12:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cx7RPcs+TPp6Gd5TtJZQHe2pgmGdbT9ML8bzoEmjHDI=; b=CdS1lAWuti055+
	ZiEWj5WuBf+UW26zU3MaYvF4k3fADF24iqm0ERZtFhIGe2yNb2EYXwm9iEwKkXrI73XciY2pq91OI
	+6zFSX0ZlwPJob2eOM5OkkGXZD0w2vtPk2eODpIfwqSmK4dxj8UB83vW2F+m54fEuGossAcFKChyb
	HovkqJhAfUORlbTTMOgaS/EAU3Bqx1XnI2BYkrmugncvdhtFY9HhXizbnj/4AMI4N8rI1zqxb+9pY
	Ne+ocvSWohAfGrNoKzPq327hPBAauQbeJVVNaMEyUeVgdW/07t1xqwRdoHgPA2dI3Bz6FOOlaYF6G
	9fOISWi8cn2/shEn3sXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsSH-0002Hd-H2; Fri, 12 Jul 2019 10:07:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsR6-00014m-R6
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 10:05:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so4306128pgm.13
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2019 03:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nJ9T4k4yWMJOAaiUcAIMxLuNgP/0Z4a1nwB48vdQUdo=;
 b=LIB+Rre0v7/4eGBzlbZVV4iXe63QiDwXFv6Pu5pDZ5CU9oH53Bf5meBibasUu47y1o
 fKey8dlXGs3cFXeiByS/PWsiYLqc86igrAvoKaHxdDQ+sBb/1zQRUDvm0VGq+Ft3iO9H
 WfI+8Jm/oHJVtEx5ysuu5u5hE0wk0Y6PD5SlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nJ9T4k4yWMJOAaiUcAIMxLuNgP/0Z4a1nwB48vdQUdo=;
 b=SqcXXubReJ6Hb1qS9II15Vr9uy2bFtVJY6Vtd4jrzIS9fGWn0U2RSb4WkL7xNcd45R
 zhtDd1cmsOFjNV9aoKwpt7xZUWgr2V85AtVf8ALofl2F3o6dkPyg8kyy0l4F9RkN1IUL
 mU3XkawxWOIexM7ZSWYKQUMDtoewgfe5tsuUvO0rg2mN9MB/x6Pdoz3EL2O2sJExzRma
 TXTEWUOTF3IzDKA0iRRD4//XXntg+8qiB+3ISo5qeJRV+bIQzFFN8DjCCZP8+n6R9BoE
 D39Sr/Q3L5dXrM0Uoa9p/2K01Y6wzEVhpwqOciFZnYRZI2yDpDUK1vQnyU/2NU7r9LUL
 9QHw==
X-Gm-Message-State: APjAAAWQVcqBvpVzyQkt/dJ4HH/jenBsMBEovH7KWOM0DiMVkL5sXPFI
 If/Qu+4FLV6O6uc8QYBoHe4tdA==
X-Google-Smtp-Source: APXvYqzcKtPuhjN3ijrX729Do7YsSN+gK9Xr22OXFsbtMH8dYsUUfVeTSwF+bRxflD1NC8uUuIDzXg==
X-Received: by 2002:a63:ef4b:: with SMTP id c11mr8249027pgk.129.1562925951980; 
 Fri, 12 Jul 2019 03:05:51 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id p1sm9585097pff.74.2019.07.12.03.05.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 03:05:51 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] FROMLIST: ASoC: rockchip_max98090: Add HDMI jack
 support
Date: Fri, 12 Jul 2019 18:04:43 +0800
Message-Id: <20190712100443.221322-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190712100443.221322-1-cychiang@chromium.org>
References: <20190712100443.221322-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030553_103009_27435DE9 
X-CRM114-Status: GOOD (  10.31  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

In machine driver, create a jack and let hdmi-codec report jack status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index c82948e383da..c81c4acda917 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -134,6 +134,25 @@ enum {
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
 /* max98090 and HDMI codec dai_link */
 static struct snd_soc_dai_link rk_dailinks[] = {
 	[DAILINK_MAX98090] = {
@@ -151,6 +170,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
+		.init = rk_hdmi_init,
 		SND_SOC_DAILINK_REG(hdmi),
 	}
 };
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
