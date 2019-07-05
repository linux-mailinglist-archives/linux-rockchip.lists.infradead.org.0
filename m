Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51296078F
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWrBsV3ZJyoCzTeBseNyWHNpHFvWnTm2W+hs+mAv7tg=; b=up2V7HyYw4+Ksl
	uX/mGqpByLM24YHyU98rr+t2WRlPIJfNpY/GEOziVAe+E6jr1sfVy3SjQQHmcelXbzIP/1fZuKOhb
	6yUOv6DFYhqcoxPlLkG/HgOz6j+lEwTkmy9OjdnQaD+Oe8hQSX5qSJg5sZtK2Z3CydgEA2JC1p9NY
	iyEGIhGDRtO0AwsdclkvradCpz5VTVjNV2ARO0/UPFDE96UKyXhBb4G6wJUja2f1iCPdpiOwcSdvQ
	xHAo6PfYDH4bFRPGGgJ5Sgsk6HrXNVdvi0v7tJ1rWEDcWN+LhFy4aZ06G8NK+ZYIQkRKYFNNoJJss
	nTrz3H6jj4YOMLom5Ojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOxi-0006oV-Hb; Fri, 05 Jul 2019 14:13:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOxh-0006oM-5p
 for linux-rockchip@bombadil.infradead.org; Fri, 05 Jul 2019 14:13:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mt+OhzkdZXuABUeOm3oIQQxV+A0uMRzmq60uCRJmAJE=; b=moyaN+3hdSeOz55pQvQpMorrZh
 76HS8vs3T+xA6ucLyhhDGRpMN7m1Ov+ehf38PjYha4lthP8hebo96kV8X5oVEvxM4AAGKC8v4vnVm
 XIiltUyJYl7JeR7lkITak1w4Lem3Bt4KVp8SfcBsoItNNoGGCyz+98aCQV9R0LsN9yQYSwtOhZa97
 Qcw31Ob5Ii57OSaZHGaloQKNTU7DcZaKY6Hvlz5+w7nGCpDmA+3ux4kHOhEqhAVZSWQzp7x940OiN
 yWBUu/CUOqeHn9s+BCX98FujYX55XI733C/AAIIMoMGXMaPAAd2IzZhkR83c6WskzwcJVopfOlR8H
 WgFHvDpg==;
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFqQ-0006cX-IP
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 04:29:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so3711376pfe.11
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jul 2019 21:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mt+OhzkdZXuABUeOm3oIQQxV+A0uMRzmq60uCRJmAJE=;
 b=Hbexc+aCBum/RZ12dI3r5/XyzyiK+MvJQgQ2XO3/HVioP3PM/nCddAlz1xrMohN7M1
 S0TUfchH1at/5Y1i17XhZAcSUqCKCip2aybO7YsuTVjIwJXSYImaa+d0n/+JHH0FYNkL
 NI0/aW8eXuQCvg6kpGPrNaIfIBqJ7QUDBMvFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mt+OhzkdZXuABUeOm3oIQQxV+A0uMRzmq60uCRJmAJE=;
 b=IZPBGq98WIGXbwbPJ+HDG4LgvEzz9EnJQAl/4Hj96XUV2hnsfp2Tt5LngV7oOjmFQu
 knHJ/jStrIXBh4hhbsTqT6xcBmQfjEyG/xwNwKYNe8J05KYSvE1iGwekNvhEOHgKkV0s
 VpNb/ycGE0VJ7cWXgQlHem81iIvF4xcsOxp+u9Gxvb3DvaulLxY7Jb74kfBlKWkU5vZm
 c+x7gmYZJjAqMoonWtoTJOJdPI3B0rq+IaJF68EtvlU8wz6BzgDtmYcDkOjnAnEqDUuT
 11HjV9wGWjy5Lv91M+zlMCprKFFdgN+MnRJGIxtUtq1+fAZxSyOjOR4yDbNGu90etJ97
 ZAlg==
X-Gm-Message-State: APjAAAUd2HscyTzAkGdVkRy3c1rcLYyZ1/rPR0hiFb5qKvS+NM4e0kdT
 HXJzzy+xFxDF6UDRjSEONP7gig==
X-Google-Smtp-Source: APXvYqywd4tkamYO1Fai6BvXNjXkhsYojIRkBX4/rKYkl5GdlfV7TnbJIDpy2ZVfWAPldm8d1RwzHA==
X-Received: by 2002:a17:90a:8d86:: with SMTP id
 d6mr2081909pjo.94.1562300823498; 
 Thu, 04 Jul 2019 21:27:03 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id t10sm6811920pjr.13.2019.07.04.21.27.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:27:02 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ASoC: rockchip_max98090: Add HDMI jack support
Date: Fri,  5 Jul 2019 12:26:23 +0800
Message-Id: <20190705042623.129541-5-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190705042623.129541-1-cychiang@chromium.org>
References: <20190705042623.129541-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_052910_625358_9AF48459 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

In machine driver, create a jack and let hdmi-codec report jack status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 195309d1225a..c0e430ca4d12 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -15,6 +15,7 @@
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
+#include <sound/hdmi-codec.h>
 
 #include "rockchip_i2s.h"
 #include "../codecs/ts3a227e.h"
@@ -129,6 +130,25 @@ enum {
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
@@ -146,6 +166,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
+		.init = rk_hdmi_init,
 		SND_SOC_DAILINK_REG(hdmi),
 	}
 };
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
