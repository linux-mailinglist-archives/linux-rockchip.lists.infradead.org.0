Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FCA124A4
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 00:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2pN+Z1uglEfvohqyOBDlVm4Rb1A59h1K9imGIkUaeU8=; b=aDac3q73pUwikk
	D8LWnaaIMCXZmzaK8JoUm/lbDZDCb2S9dgoPG0Ul0YBv4vG5PIAzi2vcRK3bqQLvTmIe4OF4RyPsv
	GBzX/04LdlOadQYSZVtai1bxPsdnk4rI9GrgLTdgJjrMiAYw6QEdQXSOEwfiNeQVeB0mcEjdFI4ph
	8iesyzmI2SdBW7wvS7ZcBnO88q7/JaFc9CbD+s/hejvbL1cYB/e9Ldnqd4yn5/4Wx4lnppMBsbHY+
	hipPdV6UuRwSCGjqyTlJ+hIsO6aCvUefBU7InM+0BypZ1+axQMYhwY5SVRyGmb2l+pmUPrEsmzgn4
	UocvU+7PRa1ALZ7kbj/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKLc-0007i8-D2; Thu, 02 May 2019 22:38:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKLY-0007gt-5l
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 22:38:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id t87so1261197pfa.2
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 15:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oGCfMQkKfqkKFZ8erX0b7VyU7ofDCnx2g9X0TKrb/HA=;
 b=DJKuaiHXmnpN5NHgJx3Ha85ILyIu0e1kfwt5qnKUaJz9o3ZLF8arJytmHtO7FqiFBV
 MBWtO7EXORv02Y2abZgYE36pxCrS+zMp4GRVryBr0oj3TWALLhx8FtS6V3FpEWfVdzdW
 96PKjpxXBqXPpYBCEru2M2NeyILoFnAEQplI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oGCfMQkKfqkKFZ8erX0b7VyU7ofDCnx2g9X0TKrb/HA=;
 b=lvccxHGVvSgaTdiXRt9Ij0nDMnyygTz44Gk/1RIxHVE+0oeKA/+H6pmIR/TFmluqBk
 sXwknjN6D6fO4RaFci89SdlbipoBsuPVbEvT0y6aGt4bZKVGmjaBWNorntFcxk56xwAG
 JKwtWkOrLyWjz/GqdofSIXWcl43aSeBj13TiEwlo0sHhZ2OG6MT4Te1GV4X01dnpSO6k
 mUXnmynEzRKy9+zRnFPfcmJcSuLHQZUITfqhyHupLQe1sKcS0ziteYH9KWgYnpTtJx/N
 Is5OIRjMtB0139N8jJiT3ddSMriKfOLZyT0MjN9xQjUfhs48bu0/oxrWKc1EXvWIu/e0
 fN3A==
X-Gm-Message-State: APjAAAUArQRhjzkVakw83PVelX0eLAW0dUuOveoOVuqd2wzxQbNo5hgh
 c4CvbmR/AoMeabcboJozkT/lKw==
X-Google-Smtp-Source: APXvYqzegNUKwWVFGK5+OSJGRGvk9lnvVlziVA8BSgZO2xFC57BLteuXPc+lxQ5gyK9oIUqE+P1Q3g==
X-Received: by 2002:a63:cd15:: with SMTP id i21mr6626004pgg.269.1556836711151; 
 Thu, 02 May 2019 15:38:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id k186sm244151pfc.137.2019.05.02.15.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:38:30 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
Date: Thu,  2 May 2019 15:38:07 -0700
Message-Id: <20190502223808.185180-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_153832_244749_D8F96D22 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's add a hook to the core dw-hdmi driver so that we can call it in
dw_hdmi-rockchip in the next commit.

NOTE: the exact set of steps I've done here in resume come from
looking at the normal dw_hdmi init sequence in upstream Linux plus the
sequence that we did in downstream Chrome OS 3.14.  Testing show that
it seems to work, but if an extra step is needed or something here is
not needed we could improve it.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 +++++++++++++++++++++
 include/drm/bridge/dw_hdmi.h              |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index db761329a1e3..4b38bfd43e59 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2780,6 +2780,27 @@ void dw_hdmi_unbind(struct dw_hdmi *hdmi)
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
 
+int dw_hdmi_suspend(struct dw_hdmi *hdmi)
+{
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_suspend);
+
+int dw_hdmi_resume(struct dw_hdmi *hdmi)
+{
+	initialize_hdmi_ih_mutes(hdmi);
+
+	dw_hdmi_setup_i2c(hdmi);
+	if (hdmi->i2c)
+		dw_hdmi_i2c_init(hdmi);
+
+	if (hdmi->phy.ops->setup_hpd)
+		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_resume);
+
 MODULE_AUTHOR("Sascha Hauer <s.hauer@pengutronix.de>");
 MODULE_AUTHOR("Andy Yan <andy.yan@rock-chips.com>");
 MODULE_AUTHOR("Yakir Yang <ykk@rock-chips.com>");
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 66e70770cce5..c4132e9a5ae3 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -154,6 +154,9 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
 			     struct drm_encoder *encoder,
 			     const struct dw_hdmi_plat_data *plat_data);
 
+int dw_hdmi_suspend(struct dw_hdmi *hdmi);
+int dw_hdmi_resume(struct dw_hdmi *hdmi);
+
 void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
