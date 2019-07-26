Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F6976532
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 14:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RhULZub449L2vMrXzGZKLgRalEAEcE26P6bos5KU2QY=; b=NccyGnR23VhMnH
	qKZgX5m3McSZipwkjt+4iaIlGCN5sH/4EpT2dCFEsjoViQLmetQ/8f9iv4I8qv5MkXVGxocVk54qC
	SEJ1LBOL9LpmJOmmk4d84kVzr+fmsByTTZdmqPps6+sp8/apBK3x2ONyWDHmiaJyzusYdJ2kO0ihq
	GV64Isk5qxcaLyHZNvKHsrN/g2RNT1fepbeHNN6fFdgEmpXoEH/s4CFEjaEk6Mm61YWXVVy/5GAIn
	JBPt3c9sVfHCQbuHbNuI+Dipe+N5zlaYuSGJROD7D4Fp5slPqbl+WauEvn8j+KFGGOdKRBFeEF5UQ
	094KnBXpOgO9F6xBa4Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz1w-0003wP-DW; Fri, 26 Jul 2019 12:09:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz1e-0003jD-0m
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 12:08:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so24444042pfq.0
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2019 05:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cbwmacy9vNq4B+n0PukpHrIPl4ScNgVEPcJ32HL8owE=;
 b=AObi35zUYJig2WeybEddiDzaj/fnCxwM2Qj8U5BZrRxfR7DqT4XA6WSF7zyiUwBiqg
 7yBr/+X/fyFPhrst6RV5yT7Jak4QkmSzMlIGvboPQSv6DlB5VgLqLjkRyDrp1/cFZCE5
 paPvLI+dXkBmqIhc5bCOvjWN7Fk+X7xb919Ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cbwmacy9vNq4B+n0PukpHrIPl4ScNgVEPcJ32HL8owE=;
 b=AoN+3P5jzAniKdLa16W9ANT067aToZjAHFEhad+QgrFy8GVVwirwZwxpqubvXFoiiR
 VOMPQMZQ3tExfnCIOK8qy6Tv2aNrJdd0wJAVUr9VufBjIVVdMqjgYW2bIWKXLteBL+6m
 2dn4Ux2nrB55zDnogtwVNGMaozVYJzFbVpPMGUEBNX/1dAS/N8VweFx7BPWydgMB16YD
 wOf9XyMtdcNqxBv0mt0Tluk23rgzQZjVhE+vRs/voQrBq8Ud3TuhTiPf92qYH6+AzivM
 wplSJe3oRm7JxlF7dNP3qX2qtM22UJ0pHj0OpS1AudDZ3H0w3J1IbjBGKb0+tlol3d23
 ycHA==
X-Gm-Message-State: APjAAAW28LBLLDDgB3bfJL5qfaeGeN2XyB9vBwsqartzj5gb65u7uJsq
 5bFUO4l7ccGOdkD3qh7fOIDF3A==
X-Google-Smtp-Source: APXvYqz9ldY9m4MPhE5vPXUihPALYRe2GG7mFkrh7mMDn8k9KRoYh+ADGCd1vq8cRpZmJBcyhGuM9A==
X-Received: by 2002:a17:90a:bc0c:: with SMTP id
 w12mr65162344pjr.111.1564142920570; 
 Fri, 26 Jul 2019 05:08:40 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id m20sm54800981pff.79.2019.07.26.05.08.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 05:08:39 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: rockchip: i2s: Revert "ASoC: rockchip: i2s: Support
 mono capture"
Date: Fri, 26 Jul 2019 20:08:33 +0800
Message-Id: <20190726120833.186833-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050842_055872_E1604C33 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, dgreid@chromium.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This reverts commit db51707b9c9aeedd310ebce60f15d5bb006567e0.

Commit db51707b9c9a ("ASoC: rockchip: i2s: Support mono capture")
adds support of mono capture to rockchip_i2s_dai.

However, I2S controller is still generating a 2-channel stream
because it only supports even number of channels.
When user space reads the data and assumes it is a mono stream,
the rate will be slowed down.

Revert the change so the DAI no longer claims that mono capture
is supported.

Fixes: db51707b9c9a ("ASoC: rockchip: i2s: Support mono capture")
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 0a34d0eb8dba..88ebaf6e1880 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -326,7 +326,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 		val |= I2S_CHN_4;
 		break;
 	case 2:
-	case 1:
 		val |= I2S_CHN_2;
 		break;
 	default:
@@ -459,7 +458,7 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
 	},
 	.capture = {
 		.stream_name = "Capture",
-		.channels_min = 1,
+		.channels_min = 2,
 		.channels_max = 2,
 		.rates = SNDRV_PCM_RATE_8000_192000,
 		.formats = (SNDRV_PCM_FMTBIT_S8 |
@@ -659,7 +658,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	}
 
 	if (!of_property_read_u32(node, "rockchip,capture-channels", &val)) {
-		if (val >= 1 && val <= 8)
+		if (val >= 2 && val <= 8)
 			soc_dai->capture.channels_max = val;
 	}
 
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
