Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1982102A
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 23:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mfn6AmXm6pJngb9DYKWn5ncFjnXNmr2rhyf9PU6KxY=; b=m5oCAaaXjzGpqA
	ezsoWQvIlF7ZgXAQw8oizrbYjwMVxQjCHU79l9vA4StuIGaI2CDT0ZpiP87AewL0qFHk8fkJqURun
	sXZXYmArygTa1E2R1vYOGntdQC6PnxBLwGtldAsT7GMhjAegClbvpjKFwCdfn8Wx+eFCPbv0xXuIr
	8KzLHijiHQQjXZOacfYriyKyhFqZV1VZphCl46GhXwQF7f+39xMjhz5aHQaZZhfwP6Wcb/K646UZf
	j970qQVtp2xp7KH7C1MZC8LWP3VTL9y4EVSZQ4XJRlNxdWk4buwj40eV5CJCyQDIvrPnBoIM5u0rp
	/ubLjOsSjNyiBIEMC8rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRO7V-0001K6-CT; Thu, 16 May 2019 21:40:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRO7O-0001IW-TI
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 21:40:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id n19so2532791pfa.1
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 14:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hVv4kB5Ecy4Nzot5JSmd+w2kmDQzag6YdAwhTawAS+o=;
 b=C2mEaCV5q7RRlPDkTl+jNc69GKmHQGbUzwdCXb4uJuIQRqjiwjE8vEVrEuUybINuD1
 CaXvTTgS7AqB5rKqV9O2SfHGsVPYh/UdIAMeuPT128yOp4EI0fA8af3ZBM+HxlhYaScP
 IQMWJsOKUNzn9FS7aX/h9q0stQ3lFpm6IpUEk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hVv4kB5Ecy4Nzot5JSmd+w2kmDQzag6YdAwhTawAS+o=;
 b=iCpUOSUftaLkZaGRoqHSslG/ErApz8V4ueBjITyygjyuFzXZ2FlaQuNuAjiP7mt4Wo
 SCQWZ4pFPrjmbonvVahsdGJSH1f0nGkvWAM40nhkTeCOBbO58MonOmRzmUXPJwMn3EiB
 BLgISXEFXazt9HMepf+VVJgMGYns1crGBTalPANYZRABJdy8h90wfgO3ygh5lwXm2rHv
 cbq2zKncBF8yWQNiCE5wAxF+6uaiFrU/+7tbcxDJG0GuezeIKqxWGyWrbfaV1KH+RVnf
 pq6UDeApEnaXu6D2zIMm+TUuyN73uUeRy0fmFldgoa560OAAQ3L1YGA8FhXJMa38MLOp
 OnNA==
X-Gm-Message-State: APjAAAUOHd3PuX0MvpsCx+QlKbD3WIfqQlM6BSq87eacKy4IpUPAIkGf
 QGVX0lOP923Ux+EKAYG85HbDZg==
X-Google-Smtp-Source: APXvYqyP0E6DNadrM+r5JhT3uOu5deldF8xqqkH34aEOJ4KlNc8FJkCV2ERtDfIFBJk2wFdQq4Is2w==
X-Received: by 2002:a63:d343:: with SMTP id u3mr53012185pgi.285.1558042850353; 
 Thu, 16 May 2019 14:40:50 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v4sm13127252pff.45.2019.05.16.14.40.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 14:40:49 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu, 16 May 2019 14:40:22 -0700
Message-Id: <20190516214022.65220-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516214022.65220-1-dianders@chromium.org>
References: <20190516214022.65220-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_144053_379505_48695C24 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Rockchip rk3288-based Chromebooks when you do a suspend/resume
cycle:

1. You lose the ability to detect an HDMI device being plugged in.

2. If you're using the i2c bus built in to dw_hdmi then it stops
working.

Let's call the core dw-hdmi's suspend/resume functions to restore
things.

NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
"late/early" versions of suspend/resume because we found that the VOP
was sometimes resuming before dw_hdmi and then calling into us before
we were fully resumed.  For now I have gone back to the normal
suspend/resume because I can't reproduce the problems.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Add forgotten static (Laurent)
- No empty stub for suspend (Laurent)

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4cdc9f86c2e5..beffe44c248a 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -542,11 +542,23 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
+{
+	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+
+	return dw_hdmi_resume(hdmi->hdmi);
+}
+
+static const struct dev_pm_ops dw_hdmi_rockchip_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume)
+};
+
 struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
 	.probe  = dw_hdmi_rockchip_probe,
 	.remove = dw_hdmi_rockchip_remove,
 	.driver = {
 		.name = "dwhdmi-rockchip",
+		.pm = &dw_hdmi_rockchip_pm,
 		.of_match_table = dw_hdmi_rockchip_dt_ids,
 	},
 };
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
