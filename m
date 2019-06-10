Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1E23BB5F
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Jun 2019 19:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WgpTlwj3HYEJIjecuoThYGsW/XZNsiQ/UZ0+WGIK6EU=; b=uAEbbWBVuchqrx
	6cIZpkVFTsb+/EjQF6GYWx01jBZFEdG1qqdzSoW6jWKZaXPa9zXYEzGXKoGIjG/PdykQX0ToRb0Db
	slch7H6cgTeBkjzoba4hlr6V5Qc2tImTnTCOvfcRHO+KebKIHlvuSXJAGulfWJyuvsuedrz2V3hGV
	S1JPyGJAuWTtXly7yb11MWgun6um/nmfIJyuP2knvtao93on21KjzcLn+fNKAvFOUEYPsvSSavHvA
	u/eCKdC/dKjO/6bIV06P5AmUbQxwK2adMQg3Wa1l21TpftQKjpZMMiekDGRyhKHLfXDH0HPV7ePgd
	Ijw+sKlFT3i8eGgy+f2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOTX-00074w-2p; Mon, 10 Jun 2019 17:52:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haOTS-00074c-3a
 for linux-rockchip@lists.infradead.org; Mon, 10 Jun 2019 17:52:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so5741584pfd.2
 for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2019 10:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e+j33U/KoRlNgTFzxm2+JBRTgicwoY0lYBd07TSgrA8=;
 b=cxF1nMuo6dYPyZe7IW550Tuvt/62sqAH3zxqkBDBP60Zvf09/H9NyJ84Hes67AMcs+
 FT0mKqC866kkF5lMJa9TjElrohQWwc7L7NecmxSE5p/88FgBlI315lwC72hDmcLD12FS
 La1s9o0nVajzrUxY6540kLZ1wY50dWzDdtCIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e+j33U/KoRlNgTFzxm2+JBRTgicwoY0lYBd07TSgrA8=;
 b=qQcH35q/8n7/0W0mVPhxW9Dp66Fk366QJRgDTE3XS2m2MAlsTG39jTb/20ARyq1DKl
 7dAFmAVv8DOriylZbcvq+NpH6ZwmSUvT0/qjIiDtQmmvKol+VbYUodBNdKcRLcVr6Nu6
 +hh0PYprXcIImpg6w37LKY+hcCaHJA5bPNw3Ne/O4UjtMSa0pDIUnaLRIHUzNXX+vher
 R82G5uhayLDK6muu2OoYLdhdGoNLLZIhnYDjsY1iv/xjx1iyTFzp8hWXOY1rs5fPrEd0
 /BeIzwhb3q81AyORI5VXIfl7ah9qa83UlTS/Q+tNLlkPJ+/NQUxfeX6hLZbrHi+GJ4+4
 oEfg==
X-Gm-Message-State: APjAAAWCo9n1S4JTMlvpF/PiFOGdGul6XZUTyffBYezWhtsTuPV0jP/F
 8tl49eNB0XCHRoG5fTAnC9PyDw==
X-Google-Smtp-Source: APXvYqzU1Wm58XzoJcqWjPmPcWmK6k9fe25HmAb+1sgysyHkY4qvbyB6DYlP3+BcnzlJSNDd0YA7aA==
X-Received: by 2002:a17:90a:e397:: with SMTP id
 b23mr22154592pjz.140.1560189169114; 
 Mon, 10 Jun 2019 10:52:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o192sm12247158pgo.74.2019.06.10.10.52.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 10:52:48 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Sean Paul <seanpaul@chromium.org>
Subject: [PATCH] drm/bridge/synopsys: dw-hdmi: Fix unwedge crash when no
 pinctrl entries
Date: Mon, 10 Jun 2019 10:52:34 -0700
Message-Id: <20190610175234.196844-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_105250_180272_3B196DCF 
X-CRM114-Status: GOOD (  10.46  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: heiko@sntech.de, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, Jonas Karlman <jonas@kwiboo.se>,
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Erico Nunes <nunes.erico@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In commit 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge"
for ddc bus") I stupidly used IS_ERR() to check for whether we have an
"unwedge" pinctrl state even though on most flows through the driver
the unwedge state will just be NULL.

Fix it so that we consistently use NULL for no unwedge state.

Fixes: 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus")
Reported-by: Erico Nunes <nunes.erico@gmail.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index f25e091b93c5..5e4e9408d00f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -251,7 +251,7 @@ static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
 static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
 {
 	/* If no unwedge state then give up */
-	if (IS_ERR(hdmi->unwedge_state))
+	if (!hdmi->unwedge_state)
 		return false;
 
 	dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
@@ -2686,11 +2686,13 @@ __dw_hdmi_probe(struct platform_device *pdev,
 			hdmi->default_state =
 				pinctrl_lookup_state(hdmi->pinctrl, "default");
 
-			if (IS_ERR(hdmi->default_state) &&
-			    !IS_ERR(hdmi->unwedge_state)) {
-				dev_warn(dev,
-					 "Unwedge requires default pinctrl\n");
-				hdmi->unwedge_state = ERR_PTR(-ENODEV);
+			if (IS_ERR(hdmi->default_state) ||
+			    IS_ERR(hdmi->unwedge_state)) {
+				if (!IS_ERR(hdmi->unwedge_state))
+					dev_warn(dev,
+						 "Unwedge requires default pinctrl\n");
+				hdmi->default_state = NULL;
+				hdmi->unwedge_state = NULL;
 			}
 		}
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
