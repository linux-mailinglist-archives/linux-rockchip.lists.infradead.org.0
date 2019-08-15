Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BABF28F1D3
	for <lists+linux-rockchip@lfdr.de>; Thu, 15 Aug 2019 19:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=mpu7VQFxtGN3Oba9XnvMwwh13E6Y3qvliRX5cVhaRbU=; b=Tmz
	eu23hR7i9w1HCQelm0U/C4pHQvzLMV/5B/wGIiyy+ZZVuEjQRwn0bj9VU5jO3mSj5vX+1ZGOvsfcL
	JyMjtJZcRfNM/G6fvVW1CrnfEVkN0rsjx1WTvGbKglNfcqMHfT5Ie6tLMaXmL5scJFVcKworbLwbb
	rwPo+M7L1gLFB88O7GnDYapELIm+Y73S7cVEuxb3P5ANBjkgo7m07N9X5Z6z4TFcu68iOVG2u/saO
	IJXx501IATSLTOgZFb0bnFSiDTis3Csc3tDl90iKTgdLsYiYFueI6ESCLPrIi3q1fonuccVQAqQQI
	wp4EiZl+p5GiBhNttQuoIR/G93WxFKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJLh-0007su-6J; Thu, 15 Aug 2019 17:15:41 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJKY-0005tn-MA
 for linux-rockchip@lists.infradead.org; Thu, 15 Aug 2019 17:14:40 +0000
Received: by mail-wm1-f99.google.com with SMTP id f72so1873832wmf.5
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2019 10:14:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=CnBCQCl8HgGtRAslD3BhGDm2lZeAd4b8wc+xobzHTtE=;
 b=EslmgLCdQSFwDNbvqF4/1zt5EqKI8g82FpgTbkhK6grK/0VEmA+kIAqkE1DrJS3djp
 KhXIGS8Wekx7e9M0eoqhwK18P0/AuoRKhrFo2RvKAF5EgLEEOYsky4rn6jag9NSvY2zh
 Ajv5xWG28+HPFDDqsXdB051rzaqwvNPnACFb2tFFe5FxfnKYxm1jJx4mBepIhsSQOKJo
 OaJwuooJxwSguadkhf9Rv5JnxUco5uxCE/f6N4JidasJI1cuZTHd1cJ7VsaAFK0cU1iy
 1RRSVLgBnUEcNdDhdD2mCi9qiiLoTnbPEMIvTQKeOQMHSU4+XIKVoTDBIUSEQ5VhGIkF
 da9Q==
X-Gm-Message-State: APjAAAWfHGdAy+Wf8vp4tmfcXVUphokTKNmD3WtKyoKzVVhyRfzaEF7g
 x/8z8y4ZJeOhdY3A5VmS8adsZ4mUoTrXRpBq5jtncm6ElA1UV8gOqry8C/RiLaKcXA==
X-Google-Smtp-Source: APXvYqzF9p1m8pQLSYHcZd54ZXHssvs7mOElBrJ3n7sLNitdfagAUctF4SZiOcG91ZIiZMiKr3Spp9T/hSsU
X-Received: by 2002:a1c:a1c1:: with SMTP id k184mr3836224wme.81.1565889268788; 
 Thu, 15 Aug 2019 10:14:28 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id v11sm7554wmh.27.2019.08.15.10.14.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 10:14:28 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyJKW-00052e-HJ; Thu, 15 Aug 2019 17:14:28 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 16A862742B9E; Thu, 15 Aug 2019 18:14:28 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Applied "ASoC: rockchip: rockchip_max98090: Set period size to 240"
 to the asoc tree
In-Reply-To: <20190813074430.191791-1-cychiang@chromium.org>
X-Patchwork-Hint: ignore
Message-Id: <20190815171428.16A862742B9E@ypsilon.sirena.org.uk>
Date: Thu, 15 Aug 2019 18:14:28 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101430_728242_AEB0136A 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, zhengxing@rock-chips.com,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 jeffy.chen@rock-chips.com, cain.cai@rock-chips.com, dianders@chromium.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 eddie.cai@rock-chips.com, Takashi Iwai <tiwai@suse.com>,
 enric.balletbo@collabora.com, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The patch

   ASoC: rockchip: rockchip_max98090: Set period size to 240

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 7188f656cdf762d4ea8ce16b6aaf4c6b06e119ec Mon Sep 17 00:00:00 2001
From: Cheng-Yi Chiang <cychiang@chromium.org>
Date: Tue, 13 Aug 2019 15:44:30 +0800
Subject: [PATCH] ASoC: rockchip: rockchip_max98090: Set period size to 240

From stress testing of arecord, we found that period size
greater than ~900 will bring pl330 to DYING state and
can not recover within 100 iterations.
The result is that arecord will stuck and get I/O error,
and issue can not be recovered until reboot.

This issue does not happen when period size is small.
Set constraint of period size to 240 to prevent such issue.
With the constraint, there will be no issue after 2000 iterations.

We can revert this patch once the root cause is found
in rockchip's pl330 implementation.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Link: https://lore.kernel.org/r/20190813074430.191791-1-cychiang@chromium.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 782e534d4c0d..d54f672d38d8 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -138,8 +138,19 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 	return ret;
 }
 
+static int rk_aif1_startup(struct snd_pcm_substream *substream)
+{
+	/*
+	 * Set period size to 240 because pl330 has issue
+	 * dealing with larger period in stress testing.
+	 */
+	return snd_pcm_hw_constraint_minmax(substream->runtime,
+			SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 240, 240);
+}
+
 static const struct snd_soc_ops rk_aif1_ops = {
 	.hw_params = rk_aif1_hw_params,
+	.startup = rk_aif1_startup,
 };
 
 SND_SOC_DAILINK_DEFS(hifi,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
