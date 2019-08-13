Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519DC8B15C
	for <lists+linux-rockchip@lfdr.de>; Tue, 13 Aug 2019 09:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBSoTt76gEYuGWhrbj5tBB3XBwrz2+02XuW8IyOqSPI=; b=Srx0QHPxNxkvsZ
	EpauAl4ztliLV3RjnseCDaaYh0cec3BXAWuv0VmoeWHIOFN6f74mVLsjIi3kGhULcf676Tpm9dElg
	UQDhsNw0R/oHGr83RpR6vsBCZAHeJ+GqLvabrKIBc8abREcuqBDE4onqyZHSItMXZ23JW0QEalDTz
	MA/i3lPBGbNPJkIam/6jiGm02QHjlhz25o6GBlStq4cyfsDXRINrpQU35VwdaB3EEqGY6atavq84X
	tIAPnHLs6azHHmHHbWrcJ/Xm2Omu+7cUpXt7TcJOElUd8f2wtW2HF45sr3tOKHEtoDC+2pJ3Yo9xY
	oq6S4xMyvAopk7IU/F9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRU8-0005Bk-PM; Tue, 13 Aug 2019 07:44:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRU4-0005B2-En
 for linux-rockchip@lists.infradead.org; Tue, 13 Aug 2019 07:44:45 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so9086310pgv.2
 for <linux-rockchip@lists.infradead.org>; Tue, 13 Aug 2019 00:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wGWISY3VrJOIlFf6UspJXH4MK7kN0CsW/Y8ULJ0Kwsg=;
 b=gr2P6VZATnnB9+lPemtkV6oz7hDqDZRqLEIsHSwg3T/hclit7LQRxjp93NpWl2MES2
 Um+PzAS1Kko5EqOad+bjxXZKqx+uymm1exp3k8E1foMXH74iYttXfc4Iy13TYyEllztv
 hUB/V1Le4fDSi6DYbcaFO7khLFTIlpHwS5Qy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wGWISY3VrJOIlFf6UspJXH4MK7kN0CsW/Y8ULJ0Kwsg=;
 b=HCVOwtoAWwjysSU6L45eYdlbYqHhPEiSx5CjnRhRVOivNex3d9i4LhoyoPhPCXDYrY
 7AqYo0cNJ9EE1arXhqNQoF0g6VTGmBLCPgVWoggL9JftlWF1PJRBvcUbzHyO0K0mB6L/
 XHuNiNoA4vX7vY3pBFZUXEe5hmT/wlha8HAFJZqiAE8M+qIBIwCIQeESyeA9JdfcDZlH
 BnyFGXEe8vdGSWOcWv+647tAiJJEhuFEPzmJ+uTcfyVsW596Ya5BDtraIKKscxLP3Mqv
 oX2dwcmXkJozwWBmjG2saSaFeji63Wtv2gFzpLLkAsg3sqJShabcV/+FSKNZV2qaSX99
 TN8Q==
X-Gm-Message-State: APjAAAXjHvlNX4naIq5x3YnSDVkP09ujiKrqaOtv6UeqIQdfHEhX8e9q
 snwgERQzLxgKFTwyH+FxBOZKIw==
X-Google-Smtp-Source: APXvYqzkzDTF0AwWSIcaHQgPLZiwdVjeEy+ci5i4EwVLcCB8uW8sIMX56ixAY+7bZj0RLkfelhwRAg==
X-Received: by 2002:a63:db45:: with SMTP id x5mr16250861pgi.293.1565682283264; 
 Tue, 13 Aug 2019 00:44:43 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id p3sm682260pjo.3.2019.08.13.00.44.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 00:44:42 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: rockchip_max98090: Set period size to 240
Date: Tue, 13 Aug 2019 15:44:30 +0800
Message-Id: <20190813074430.191791-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_004444_503381_11DD8E0D 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Heiko Stuebner <heiko@sntech.de>, zhengxing@rock-chips.com,
 Liam Girdwood <lgirdwood@gmail.com>, jeffy.chen@rock-chips.com,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, eddie.cai@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, enric.balletbo@collabora.com,
 dgreid@chromium.org, cain.cai@rock-chips.com,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

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
---
 sound/soc/rockchip/rockchip_max98090.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 7b0c21fa6dca..0097df1fae66 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -137,8 +137,19 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
