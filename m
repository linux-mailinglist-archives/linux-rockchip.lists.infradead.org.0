Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAF1A1078
	for <lists+linux-rockchip@lfdr.de>; Thu, 29 Aug 2019 06:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qz0xpF3DmCJubS1PRxD/tm8KfbKA0XRQ0IS2dVte1k8=; b=CGt3zPk+c2/mur
	jdcRn4GJdqZaMljgjvi7NwHShu/ZOw8kcdQI08fo7gaYVHrffQOEEANFUd86YQ1IDU49vHQzTLqFa
	TAwOXnM8l9/jx1oPqsfykr5ypqQX7EQLqk5mhcBGRuFiRznqH3ZYRLVl9HhIISjZMqAY6JM9nAZ1m
	Jt3+g4VMFBlLrr3WL5SKcB3ldAOgPEAUFA9s8Q/LT7bPk/k0JoN2vu7tvRR1ZNNopGJzbnydRWbJw
	tMzGWKeUTb8et8nMbVnotV3XmtzdWmOFRD7ksUzVDDY5hHxZ2tZOraZj5mQ6TaLQ72oi0JigKATEe
	0zrhi+lnv5Evv66nFLjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3C4f-0000fY-Fc; Thu, 29 Aug 2019 04:30:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3C4c-0000ep-Ph
 for linux-rockchip@lists.infradead.org; Thu, 29 Aug 2019 04:30:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id y200so1178708pfb.6
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Aug 2019 21:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WjPTSP9KK2QsqjmhzaDx1khiUa3+dCf9cZMoVMaAshk=;
 b=MMK7O5IUDss97+ZReyNXw062RBZnNuHPYc45XAcCIE0DL5/DB+mNF+5x81uwfZZ9fh
 LrEZ3DrQ4CCRN2P4AHfiQxbBoS/6fKM2ZqMmGV4BBMpM31+fR4kYqVAjtWFGBilNpbqJ
 XVYy0EPLnGvGvc2zVSJPSyF8gdUOu4Vu4gvIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WjPTSP9KK2QsqjmhzaDx1khiUa3+dCf9cZMoVMaAshk=;
 b=KY7Ruy4eZyDb7RAQx1oWSkWDf7/ul81DCAi9auJISqzPd6gj5/PqkRrhyY0mlAGl7f
 5quU5Th5Dl6pFHr9M+nj5RI+pLGH82FPuH3H7KfnZbmh/QhYv6lgLTHqmfGtzA7ctAdY
 M0HJvziWHpGYw6LzQ4hsuv44IIgIuT3/bUx63w342E9EW/zQ6s4yhT+zMKUKHPgHnBcd
 +VVzJeeFYZWCR7WYwF6FFDUWtFLDtSuDyMIlID7kvSTGi8d4zxbCVCQ4kqbkxj6yrcUR
 yJO5op6lpzADrDlDchJNpcnt2QczsXb9c/hRRPjRXpx9uZcFn89gJGsPkBl4u7XsYDYl
 IBpw==
X-Gm-Message-State: APjAAAXHoG26+rM1/SliLedgeFkK+y8hdFGjJrM05zTR+/l/u6lTglzP
 B7+D/ShmsUEhOIqkaCuwohbmOw==
X-Google-Smtp-Source: APXvYqyPaVF6cNmZOG33dRsz6I4yq7+2LHI4Ys4JgoXMTN5eZVkbgzvy71GI5pd6/ByGdtUhZbRStg==
X-Received: by 2002:a17:90a:2525:: with SMTP id
 j34mr8022406pje.11.1567053013589; 
 Wed, 28 Aug 2019 21:30:13 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id s72sm717756pgc.92.2019.08.28.21.30.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Aug 2019 21:30:12 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Date: Thu, 29 Aug 2019 12:29:57 +0800
Message-Id: <20190829042957.150929-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_213014_853127_23CBE165 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org, zhengxing@rock-chips.com,
 kuninori.morimoto.gx@renesas.com, a.hajda@samsung.com, airlied@linux.ie,
 jeffy.chen@rock-chips.com, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com,
 linux-rockchip@lists.infradead.org, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch,
 enric.balletbo@collabora.com, dgreid@chromium.org, sam@ravnborg.org,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In the designware databook, the sequence of enabling audio clock and
setting format is not clearly specified.
Currently, audio clock is enabled in the end of hw_param ops after
setting format.

On some monitors, there is a possibility that audio does not come out.
Fix this by enabling audio clock in audio_startup ops
before hw_param ops setting format.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 5cbb71a866d5..08b4adbb1ddc 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -69,6 +69,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
 	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
 	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
 
+	return 0;
+}
+
+static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
+{
+	struct dw_hdmi_i2s_audio_data *audio = data;
+	struct dw_hdmi *hdmi = audio->hdmi;
+
 	dw_hdmi_audio_enable(hdmi);
 
 	return 0;
@@ -105,6 +113,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
 }
 
 static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
+	.audio_startup = dw_hdmi_i2s_audio_startup,
 	.hw_params	= dw_hdmi_i2s_hw_params,
 	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
 	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
