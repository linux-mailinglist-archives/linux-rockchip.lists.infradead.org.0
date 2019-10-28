Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76EAE6F64
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 10:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eVtQxHOsnjHRRnq6i8mIzocielsVZuaI8kyEoSeuJnE=; b=GBzmSHNoNlwHDs
	IOHcWFT+0kDzl5ne3xghjAkm5vWwzY02OmqL5WqAGSA0vd/ySya5/GnM4jUObjkgmExeTdLpZtPvx
	8prCSTGncgPs4purLtAi24ax2N0WtMmNUSBkr1VAm7FvW1KaW2E6QukcD6dOuWYfFYUZSDFcuGUam
	j301+Pp7XOUgqSB0IHzIjfmyfUDl//4w5ePot+BLQN7plyqT7NxUUUWpcHj+f06uydRYgjEVSS3j/
	ZZgmF1ghPv+X9zClCblkFqDDkwbp19Ui+XOooGzMoBo8HMuRymMZbQSg3PAxxYutt2liXew03DgKh
	uaB7zn0pztR1UistB2bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1hc-0002zL-IK; Mon, 28 Oct 2019 09:52:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1hZ-0002ye-U9
 for linux-rockchip@lists.infradead.org; Mon, 28 Oct 2019 09:52:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id w3so6567711pgt.5
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Oct 2019 02:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00GH+7MY7gv6VeGZTXVYIreq96BqJ0QE/x20tMZ+6ks=;
 b=Z2BgNGzJ7q4FPtJU4fW2x3DMrNZlTDM5dHyQ8Hf5kSrB3beK/s9ztKON5ojRLhAuMU
 Nyza/b0Moh08dmhqk8Sbj4HZo5KxZBPDr9IKjplFa2wWNOjsepMPXWzF68Gq1+GogWj3
 F5uKtCRH9q/B9Y/z0A5OS6pkzkgTaPndd1a/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00GH+7MY7gv6VeGZTXVYIreq96BqJ0QE/x20tMZ+6ks=;
 b=O6isu6dcBtluYp5GINUgi+akpnw4ZfkrsN3jOjZ9WVmy/RUSrBSpDg44cNPZKoRphi
 R+TmHWW3bdfIdczg9vRqm9Cvqhqv+Sx0AkqVZyvClTPX9Amnp3EDBXJYi03oR++wPc3H
 WJTCkaz6+IlIgUPXgq8uFfvsh2akDcxQckTqhlMPIeIgv9egsoTjFApZO/2dIoELupA7
 jvS82F+2YRSSyf37qmI2lHJ+6KX8GJhrnrATSmtS59wk2OWRfCSvFY/I+BSKEsc2eeBo
 AKjQHNOnHhWDyvN6XgJozA4A5rjeSJX+uDOWme5FbuGb0eldNTD9dQVNzj+znIdWDWRg
 DDBw==
X-Gm-Message-State: APjAAAVm4GzZbOYBho2GO84ZOv7+/TJM/bxhwTYvu1908xm8Xblb2gE6
 eBkHiN9CKVhXtz69hvveE+foiw==
X-Google-Smtp-Source: APXvYqzdMK0gStf/HLg07oXhPJn5lFdaQhPuDeCWUTAcDq3Av+TyeUSuRXkSsM7OLCc3qJH164huew==
X-Received: by 2002:a63:6901:: with SMTP id e1mr19755671pgc.373.1572256360802; 
 Mon, 28 Oct 2019 02:52:40 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id p3sm9897517pgp.41.2019.10.28.02.52.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 02:52:40 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: rockchip_max98090: Enable SHDN to fix headset
 detection
Date: Mon, 28 Oct 2019 17:52:29 +0800
Message-Id: <20191028095229.99438-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_025241_986416_9348E451 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 enric.balletbo@collabora.com, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

max98090 spec states that chip needs to be in turned-on state to supply
mic bias. Enable SHDN dapm widget along with MICBIAS widget to
actually turn on mic bias for proper headset button detection.
This is similar to cht_ti_jack_event in
sound/soc/intel/boards/cht_bsw_max98090_ti.c.

Note that due to ts3a227e reports the jack event right away before the
notifier is registered, if headset is plugged on boot, headset button
will not get detected until headset is unplugged and plugged. This is
still an issue to be fixed.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 0097df1fae66..e80b09143b63 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -66,10 +66,13 @@ static int rk_jack_event(struct notifier_block *nb, unsigned long event,
 	struct snd_soc_jack *jack = (struct snd_soc_jack *)data;
 	struct snd_soc_dapm_context *dapm = &jack->card->dapm;
 
-	if (event & SND_JACK_MICROPHONE)
+	if (event & SND_JACK_MICROPHONE) {
 		snd_soc_dapm_force_enable_pin(dapm, "MICBIAS");
-	else
+		snd_soc_dapm_force_enable_pin(dapm, "SHDN");
+	} else {
 		snd_soc_dapm_disable_pin(dapm, "MICBIAS");
+		snd_soc_dapm_disable_pin(dapm, "SHDN");
+	}
 
 	snd_soc_dapm_sync(dapm);
 
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
