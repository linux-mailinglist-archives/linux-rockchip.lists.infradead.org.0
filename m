Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63553C2B75
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 03:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TSFyLqI9wbR9L9oi4416jRsZZg7SiLp27KKmFmA9nCs=; b=hWQ0D/5ke3eMtY
	NIe7zBeQ9+yfMRB271Q1fSa/o982ZSB595s32gAPvKJv2pQJ/772eoeEyM+8jOpj2ktEeF/q68EmR
	nGGTuJavfzyebohiUBROODwwyEHGSTRQ0I745Nv+hvAGmlQ/dI1ImJId9lFvF3JMoGoS9OIbxYdW2
	HieHopJ3peOYk04glcSchTxBdJwrHT0tSVLCTElRuKU3BSGpEqrW2W6ri8IZ25xJV3L9WVNYeqL+u
	IODy1Qv9U2swxKavLjUAedeOpzfAnPaLpId4HloLDzgFRITehAdRfpqWiZ0mcbjtypBeEHJbJ1LVt
	06EEq1zTZthETENRWO3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF6Wr-00025V-5x; Tue, 01 Oct 2019 01:00:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF6Wo-00024f-2f
 for linux-rockchip@lists.infradead.org; Tue, 01 Oct 2019 01:00:35 +0000
Received: by mail-pg1-x544.google.com with SMTP id x10so8411215pgi.5
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Sep 2019 18:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6c31Z8bqLagiMFjesWQuytu80YEed1XWODDuNsW24s=;
 b=epI3ugdyCvOb4zVNWfia360x2V+v1fm0AgFUCheJyZoUPJVy8ggRSIGIk4NaAVbcs8
 glkEUdVmFN63+q25+HfwPVyF7/WpBLgRjU2E3olV+ADe28YhCAQg+TX6TAKvCx31/fjd
 mDk4bYpvHaWJVnZyiYSSnbKK3bGoR5ynIr//c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E6c31Z8bqLagiMFjesWQuytu80YEed1XWODDuNsW24s=;
 b=A2KzNViPunP2m0UvT91vRffFXiAfi5mCdsFHrP6zVBtJ4/buuJDwd3jbxkPyZH9EyT
 51uwVJ0XiM7edaMPwneyUry7zWV3BHoHkdf41+7CvCfbqFn7i7muDwmc5iNA33YF9hrR
 2O/Ke2hxjVhnvV/YRT4LmTP+EUwMfbxoRFPHJJ4hConjwcX614o/b4gBJZ5ZyaAcGh8a
 CA1SvcswTrYoN95B8WNBFeAR6/yXYYx1GLzkKc4iIiVZ6MoapIPvFg3sfmjQcWCln02R
 JILohI4yhFy1KlzCg2c6jhD8bf7zsRwI1aAxDwUtoBnuZ9XfefWfd09bHtUPq+ZXhbWm
 XYuQ==
X-Gm-Message-State: APjAAAU6BtgoftHXw63FeqHI5gmsK1phunwPADMYL001avmkq5gK0o0n
 Rr/P8Xd8OJtP38BRVEq/Wem3+Q==
X-Google-Smtp-Source: APXvYqxIwQ/Z/NG15bD/vJSTi2QXMxa4a8imVSlOMCNDTKdY/6Mm2LE1FlsEyH4TWT/43exPRAlWBQ==
X-Received: by 2002:a63:1950:: with SMTP id 16mr28046453pgz.213.1569891631964; 
 Mon, 30 Sep 2019 18:00:31 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id 62sm13146047pfg.164.2019.09.30.18.00.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 18:00:31 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/bridge: dw-hdmi: Restore audio when setting a mode
Date: Tue,  1 Oct 2019 09:00:20 +0800
Message-Id: <20191001010020.122134-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_180034_128459_D659B1E6 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, tzungbi@chromium.org,
 alsa-devel@alsa-project.org, Jonas Karlman <jonas@kwiboo.se>,
 Neil Armstrong <narmstrong@baylibre.com>, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Daniel Kurtz <djkurtz@chromium.org>, Yakir Yang <ykk@rock-chips.com>,
 dgreid@chromium.org, Cheng-Yi Chiang <cychiang@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Daniel Kurtz <djkurtz@chromium.org>

When setting a new display mode, dw_hdmi_setup() calls
dw_hdmi_enable_video_path(), which disables all hdmi clocks, including
the audio clock.

We should only (re-)enable the audio clock if audio was already enabled
when setting the new mode.

Without this patch, on RK3288, there will be HDMI audio on some monitors
if i2s was played to headphone when the monitor was plugged.
ACER H277HU and ASUS PB278 are two of the monitors showing this issue.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
Signed-off-by: Yakir Yang <ykk@rock-chips.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index aa7efd4da1c8..c60e951122c9 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -1982,6 +1982,15 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
 		    HDMI_IH_MUTE_FC_STAT2);
 }
 
+static void dw_hdmi_audio_restore(struct dw_hdmi *hdmi)
+{
+	mutex_lock(&hdmi->audio_mutex);
+
+	hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
+
+	mutex_unlock(&hdmi->audio_mutex);
+}
+
 static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 {
 	int ret;
@@ -2045,7 +2054,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
 
 		/* HDMI Initialization Step E - Configure audio */
 		hdmi_clk_regenerator_update_pixel_clock(hdmi);
-		hdmi_enable_audio_clk(hdmi, true);
+		dw_hdmi_audio_restore(hdmi);
 	}
 
 	/* not for DVI mode */
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
