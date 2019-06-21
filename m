Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B714ECAF
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 17:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=op0nV/GpwN/IZlgwR30AEqarxiORsxxDdr8EjbygHEE=; b=FZtjCmYvxLjMpk
	nU/qWvqrHLDsuC0sS2GdQFArUAB8GCjhpOcuz9dGz0MiIRTVnbk7vPDQ8ZczXDxK+r/WtFUyHuMAm
	uAK9652rZ9cd7qDJu3WTQXtq7f6syDdgMt28tQvlWR9VNMqtNNY9/wcCQgo5nkh190kXUY37h+NNA
	Mc1ilt8P/0IKo6OegEmt6gnIYlMUy65Mej8kUChYnJSbQR/ZX7mP9ejQN1HmHJj2PciPuqMVacHfG
	mZiopj3B8JNgFf/beB9m4AYHcquoyowM0TXm4wlU1qECZZcXzp9jUfbahZbRiNaLuwMJS8yXmAZsm
	i8IW5KA1lO3aWjAbLPJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLvv-0005lA-Mj; Fri, 21 Jun 2019 15:58:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLve-0005Zo-Eb; Fri, 21 Jun 2019 15:58:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id E48D9260D87
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] ASoC: rk3399_gru_sound: Support 32,
 44.1 and 88.2 kHz sample rates
Date: Fri, 21 Jun 2019 17:58:08 +0200
Message-Id: <20190621155808.17182-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085818_620172_99997F49 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Xing Zheng <zhengxing@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kernel@collabora.com, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

According to the datasheet the max98357a also supports 32, 44.1 and
88.2 kHz sample rate. This support was also introduced recently by
commit fdf34366d324 ("ASoC: max98357a: add missing supported rates").

Actually the machine driver validates the supported sample rates but
this is not really needed because the component driver can all apply
whatever constraints are needed and do their own validation. So, remove
the checks from the machine driver as are not needed at all. This way,
we also support 32, 44.1 and 88.2 kHz sample rates and we get rid of the
errors like the below.

  rk3399-gru-sound sound: rockchip_sound_max98357a_hw_params() doesn't support this sample rate: 44100
  rk3399-gru-sound sound: ASoC: machine hw_params failed: -22

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v2:
- Instead of add supported sample rates, relegate the work to the
  component drivers (Mark)

 sound/soc/rockchip/rk3399_gru_sound.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 3d0cc6e90d7b..8cbeeb013a1a 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -55,19 +55,7 @@ static int rockchip_sound_max98357a_hw_params(struct snd_pcm_substream *substrea
 	unsigned int mclk;
 	int ret;
 
-	/* max98357a supports these sample rates */
-	switch (params_rate(params)) {
-	case 8000:
-	case 16000:
-	case 48000:
-	case 96000:
-		mclk = params_rate(params) * SOUND_FS;
-		break;
-	default:
-		dev_err(rtd->card->dev, "%s() doesn't support this sample rate: %d\n",
-				__func__, params_rate(params));
-		return -EINVAL;
-	}
+	mclk = params_rate(params) * SOUND_FS;
 
 	ret = snd_soc_dai_set_sysclk(rtd->cpu_dai, 0, mclk, 0);
 	if (ret) {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
