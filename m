Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA084CAE7C
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 20:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X200xwOho2fDoJDaW/6OrqDz2ASfxe7vizXAq0rxtR0=; b=C4+G3Gr2jyJaCH
	Q3P6PFRfgVv7RKpZvx4jMRZsUXU8QYAE92v61Fp0MAiDBPpfBD+g06vyhhpKX0TSEfSoivO8viK4e
	Wtq2bKdQ5m5+T4X0dNtOfQC5MOFIaRUDxY8H7TNzPqVo03XyOR6zrtSYYwWLsP28H2PqZ3fkiNX1/
	C+G5ST+lNirHcWZ9f1F+2y2xXQjulQfIV3irTh43Q62POImMtU5QWdhm2A301CYKQpt9IOJWXyI7S
	3IzcwKe0tCjLv3zc6NkFb2njb5ipDhHaT9aBKwCpm5yHkJ1w56flEvCbsQIlr12vYwZWGcRFkUEpg
	HpuVTfYSZIDhe1X9Hz9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG69R-0001Hw-1Y; Thu, 03 Oct 2019 18:48:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG69O-0001HE-6C
 for linux-rockchip@lists.infradead.org; Thu, 03 Oct 2019 18:48:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id q1so2315848pgb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2019 11:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SMux9srIAI9knq9rYMeJgiDQW4HVbC+Jk/8BjWLwEQc=;
 b=ghSRkX0vFVvr9BDMmtqVMBlVFlkNHVD4hFZa9FpY6l1ITk9pwLi08wkKZwW0TON0d4
 4KIsbvAJigEs7jQnKga+xiPXIx1DEqmD3CT5CN0LFYf1WPn1pbKLRFUV4tY1nhc2f+Mo
 vssad7sA++XuthkMymk6sWA1G2zDrMr8u9U7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SMux9srIAI9knq9rYMeJgiDQW4HVbC+Jk/8BjWLwEQc=;
 b=bHtGSdaEs0YMhpxg2mePOX+0KvYSDqentif/wU1A2XjbRXsvAfQT4CBwElfGKQlZWj
 8lV0Fjywd7jHaV7MyKL3H+ZvrxVdB8uqDkehLBZMRzsIk8IGJM/B+MOX+DPVPO1JLrG1
 nL5kBKcJvyEgsw6BsCzYuzZmx0UCtjBFtHpI9kus9zyo0YiQxHahVtLsqcpclFvTuQAT
 6Fx9Bit3IQYhTZ1X+UTjoGi/AgZVc41ZJJBk6s+7jiaIB7C+syCbdZJfJXA1mYQuS/zS
 oieecRLGyjIWIf/WBdGQ9ZiDS2D1y3/gWB8O61HJPTkan0wXvXvx0FOa6MvEYOCj32lV
 c2Jw==
X-Gm-Message-State: APjAAAUpqTaMYjuTcAJsvzDdGvaj6hl3scrEMgEVF57LJ5oW6XaoqLDA
 HXr9x6i8x9j2tLwfYHSwbL+Ziw==
X-Google-Smtp-Source: APXvYqw9SD0WqcikWyFdjpqaesgxfzkZspJGIoFYPr7e/x6TTC+LPSxSFwe+Xe8qzKpx+kTwJQCxBQ==
X-Received: by 2002:a63:4754:: with SMTP id w20mr11328229pgk.134.1570128509058; 
 Thu, 03 Oct 2019 11:48:29 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id k93sm6590355pjh.3.2019.10.03.11.48.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 11:48:28 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: heiko@sntech.de
Subject: [PATCH v2] drm/rockchip: Round up _before_ giving to the clock
 framework
Date: Thu,  3 Oct 2019 11:47:30 -0700
Message-Id: <20191003114726.v2.1.Ib233b3e706cf6317858384264d5b0ed35657456e@changeid>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_114830_257067_AC1FC88C 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

...and drm_display_mode_from_videomode() is called from panel-simple
when we have an "override_mode" like we do on veyron_minnie.  See
commit 123643e5c40a ("ARM: dts: rockchip: Specify
rk3288-veyron-minnie's display timings").

...so when the device tree specifies a clock of 66666667 for the panel
then DRM translates that to 66666000.  The clock framework will always
pick a clock that is _lower_ than the one requested, so it will refuse
to pick 66666667 and we'll end up at 66000000.

While we could try to fix drm_display_mode_from_videomode() to round
to the nearest kHz and it would fix our problem, it wouldn't help if
the clock we actually needed was 60,000,001 Hz.  We could
alternatively have DRM always round up, but maybe this would break
someone else who already baked in the assumption that DRM rounds down.
Specifically note that clock drivers are not consistent about whether
they round up or round down when you call clk_set_rate().  We know how
Rockchip's clock driver works, but (for instance) you can see that on
most Qualcomm clocks the default is clk_rcg2_ops which rounds up.

Let's solve this by just adding 999 Hz before calling
clk_round_rate().  This should be safe and work everywhere.  As
discussed in more detail in comments in the commit, Rockchip's PLLs
are configured in a way that there shouldn't be another PLL setting
that is only a few kHz off so we won't get mixed up.

NOTE: if this is picked to stable, it's probably easiest to first pick
commit 527e4ca3b6d1 ("drm/rockchip: Base adjustments of the mode based
on prev adjustments") which shouldn't hurt in stable.

Fixes: b59b8de31497 ("drm/rockchip: return a true clock rate to adjusted_mode")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Sean Paul <seanpaul@chromium.org>
---

Changes in v2:
- Beefed up the commit message (Sean).

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
