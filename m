Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F60ACA97C
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 19:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LSGt0+Ciy6HW9geJbFR/20Q4vEMx9H3zRNnxpawEV+w=; b=alvnvLct1WvZhx
	85YuHbGIKibiSaEuaMXW8nQeQNiqgh0rWFNCqJYoMuKculFcKi2jokHh4t0y5rCOo1kGERnzMZ/1N
	lfbJ1g5cjPBtFfuHPkf9Hbc579WgRBRZvdtt403HT8vtwoddejNoSOgOVKbE++PMfibnjVxJwzfZH
	Q0Hbn5bvqOiNi5+uYiWpBhwFO2LAkjtl66gIkX8WP2Eq2Q9RGAUELau3b6+uXdd+T64OrqtZLBWRx
	/V3N2sDFyRMzOKJii49I9LGfkaE0sCjtSQzDn7UagaOjqLt4hXlcgKV76vWl8RUMXUedEIZtFaH9q
	OElVj+9jWirJU7CBDmkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4ml-0003NM-J3; Thu, 03 Oct 2019 17:21:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4mV-0003BP-Lv
 for linux-rockchip@lists.infradead.org; Thu, 03 Oct 2019 17:20:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id z12so2147884pgp.9
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 10:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5YUdKlUjg7izQDgolGpnYHYo+vhd5m2wc6atfBTGDOc=;
 b=HyHetN5bW58UK8pvTmhvXzE8owYnlZMnXW9PjWvCODAS81IDbcZueUkr/Uoczsv9Vc
 bTur5ctetQ58WmGmffdgdCd9BwU66+/P56lnDRZ4y4rtAfxLuKVqeIh6JPJL1KjJbdg+
 FZhdZHeT3uiPdXRTNibqPLDiff8iMuzt7m6Ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5YUdKlUjg7izQDgolGpnYHYo+vhd5m2wc6atfBTGDOc=;
 b=Yz2PTALOswcgWGjqPQt0kbLsp5K7ocs3gw1oBNomWF5y2qudNszsVpWiB79qwazHTB
 z04yxTdKefnpYajXLI24cMNsUMqaqqOfumHhdcoOEfeTN0Iu/IZWeMqjoJ1ndjQseip8
 S3/244GoFFLaFqvb+Hj0I9VqItHE9oG8NYBuCol/oPyNqdV2I9Z0IbouxHJCMWhBypCP
 12/iD//wtMET/Kvb5/6jaY0fuqqDxEBLr0KFHKUZuEjgcpRQ58iMczxTKOzzejcNsY0p
 ZplryKEprW1gUkL96NRsJLuXDIQC39yDBBqtHVn74Tvs2EMH9RG6YpY+srQG3j2qaeM9
 P3vA==
X-Gm-Message-State: APjAAAVwtehsSKtsIrVO89OyMAC2q5baY68rNFEkZkmw2qU3TnlEzS28
 HOO4t6855vbtc4XxGC04KLpgnQ==
X-Google-Smtp-Source: APXvYqwqK3NYUOfm0zqEB+8oEVhfJkq+2Gkte77oRWmOxvpTWnoh+bkvBUCwT7uu3XNO4aStKCP0hw==
X-Received: by 2002:a65:6854:: with SMTP id q20mr10628268pgt.188.1570123246570; 
 Thu, 03 Oct 2019 10:20:46 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id c8sm3432491pga.42.2019.10.03.10.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 10:20:46 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: heiko@sntech.de
Subject: [PATCH] drm/rockchip: Round up _before_ giving to the clock framework
Date: Thu,  3 Oct 2019 10:20:24 -0700
Message-Id: <20191003102003.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_102047_727915_F7812488 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, seanpaul@chromium.org, Daniel Vetter <daniel@ffwll.ch>,
 ryandcase@chromium.org, tfiga@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

I'm embarassed to say that even though I've touched
vop_crtc_mode_fixup() twice and I swear I tested it, there's still a
stupid glaring bug in it.  Specifically, on veyron_minnie (with all
the latest display timings) we want to be setting our pixel clock to
66,666,666.67 Hz and we tell userspace that's what we set, but we're
actually choosing 66,000,000 Hz.  This is confirmed by looking at the
clock tree.

The problem is that in drm_display_mode_from_videomode() we convert
from Hz to kHz with:

  dmode->clock = vm->pixelclock / 1000;

...so when the device tree specifies a clock of 66666667 for the panel
then DRM translates that to 66666000.  The clock framework will always
pick a clock that is _lower_ than the one requested, so it will refuse
to pick 66666667 and we'll end up at 66000000.

While we could try to fix drm_display_mode_from_videomode() to round
to the nearest kHz and it would fix our problem, it wouldn't help if
the clock we actually needed was 60,000,001 Hz.  We could
alternatively have DRM always round up, but maybe this would break
someone else who already baked in the assumption that DRM rounds down.

Let's solve this by just adding 999 Hz before calling
clk_round_rate().  This should be safe and work everywhere.

NOTE: if this is picked to stable, it's probably easiest to first pick
commit 527e4ca3b6d1 ("drm/rockchip: Base adjustments of the mode based
on prev adjustments") which shouldn't hurt in stable.

Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 37 +++++++++++++++++++--
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 613404f86668..84e3decb17b1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1040,10 +1040,41 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 				struct drm_display_mode *adjusted_mode)
 {
 	struct vop *vop = to_vop(crtc);
+	unsigned long rate;
 
-	adjusted_mode->clock =
-		DIV_ROUND_UP(clk_round_rate(vop->dclk,
-					    adjusted_mode->clock * 1000), 1000);
+	/*
+	 * Clock craziness.
+	 *
+	 * Key points:
+	 *
+	 * - DRM works in in kHz.
+	 * - Clock framework works in Hz.
+	 * - Rockchip's clock driver picks the clock rate that is the
+	 *   same _OR LOWER_ than the one requested.
+	 *
+	 * Action plan:
+	 *
+	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
+	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
+	 *    make 60000 kHz then the clock framework will actually give us
+	 *    the right clock.
+	 *
+	 *    NOTE: if the PLL (maybe through a divider) could actually make
+	 *    a clock rate 999 Hz higher instead of the one we want then this
+	 *    could be a problem.  Unfortunately there's not much we can do
+	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
+	 *    practice since Rockchip PLLs are controlled by tables and
+	 *    even if there is a divider in the middle I wouldn't expect PLL
+	 *    rates in the table that are just a few kHz different.
+	 *
+	 * 2. Get the clock framework to round the rate for us to tell us
+	 *    what it will actually make.
+	 *
+	 * 3. Store the rounded up rate so that we don't need to worry about
+	 *    this in the actual clk_set_rate().
+	 */
+	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
+	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
 
 	return true;
 }
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
