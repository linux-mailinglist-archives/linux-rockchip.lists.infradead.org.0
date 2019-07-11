Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAAD660D1
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 22:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7uCzFCMfZhzwswAB5iaFCmaFIcCJmivPy4+AwTTHFc=; b=iu/4joMP9NCay8
	GbH5nYdlvBE4kj0qFgHtx7bhwiB50xjND6vYpKDu9icJmwd4UxPPon9kdJLwR8I/ymd/cPcOcpIfY
	sOflIwUha9WdG+4ZQ0OC0LB73Ikmj/eRdMyr9GCU05rh2cTlPWvLpzcp5QoGeEtM3qWhIv43ER/dY
	POygcChVsjH2/j42AE5QR5eaN0OW+E9Kq7yC0TD7p3zMosmPvSSY5di4xbuOYdDyY3N98n8+NGviO
	pWAJA1yfO+mcUk988LwHNDZM1IxZ2kHVoviYwgzVn3CmS2TbtdsA+KZyUAiW0o48UJVG7JGxJqkqf
	hzE49zLeuPJQb0zJySdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlfwF-0007tj-Bt; Thu, 11 Jul 2019 20:45:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlfw8-000756-0g
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 20:45:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so3276211pfq.12
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jul 2019 13:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VfaHreQJcWraasyrZf5GYXDtQSYM018DK4KSurxUpUw=;
 b=hvexTuQKGLRO3Fn84YVxKLHAYdxljfkDhao9Vd9ieD5AWFmbNzn5IV1OyNsN6HXeL2
 r0ogXqxfy5s8dSmINinMnqm8OpLpSh+KQ4R1GQEoWtqjEPFgFzIqMhWsQLQUIJRkgHrB
 CsDqKbgM6S7ob7Hg0g1fTJloOZdwYjJZ36+3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VfaHreQJcWraasyrZf5GYXDtQSYM018DK4KSurxUpUw=;
 b=niutMcc4n2gMnIo91FOu0OLbTaUfCQ/r8sEpdRMrtdn20PeVHCmFmrGGMnHp34rlyB
 CLcN2EUOxRY99V3DCQTisHYXKRPqdr7v5k/ytRKPa5eVfwH9FwTK+i7GuY6rkJ5IuShK
 PYD+uDz1ST1ij07kKE/z3w8qH5KynD3Lrn8issJeaHP31QiJy45Tqk2U3x3+2+Aart8G
 5G4YE2ooDjKv+SNU+oFhfZEGTjphtdGSMcimPsVQQiuwQyJyZlY7NKO6vjTnVfH4MpH8
 xXQfZz9uLxZ6IMASZZ5G/EgMM/dcj5Rj3f1gso7bGxtAjgcmBlpBT4hPzpu/mp+AHar+
 I+sg==
X-Gm-Message-State: APjAAAVlrZDYQV5q954ryfiaSgt5OLP3VGauUhuvaowt8BOZt0SCWWER
 A5Rs9iBEBzd1G3RVkhKFQ8xkAw==
X-Google-Smtp-Source: APXvYqxOY3wTdInDeKC1jqap/V+JnRXP3q+NQTckRaGJIqycyvEMdNoUrVlPSb+qVZy4DvPgTChwZA==
X-Received: by 2002:a63:5823:: with SMTP id m35mr6509315pgb.329.1562877902320; 
 Thu, 11 Jul 2019 13:45:02 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f17sm5320110pgv.16.2019.07.11.13.45.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 13:45:01 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>
Subject: [PATCH v6 2/3] drm/panel: simple: Use display_timing for Innolux
 n116bge
Date: Thu, 11 Jul 2019 13:34:54 -0700
Message-Id: <20190711203455.125667-3-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190711203455.125667-1-dianders@chromium.org>
References: <20190711203455.125667-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_134504_118937_C34A233E 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Convert the Innolux n116bge from using a fixed mode to specifying a
display timing with min/typ/max values.

Note that the n116bge's datasheet doesn't fit too well into DRM's way
of specifying things.  Specifically the panel's datasheet just
specifies the vertical blanking period and horizontal blanking period
and doesn't break things out.  For now we'll leave everything as a
fixed value but just allow adjusting the pixel clock.  I've added a
comment on what the datasheet claims so someone could later expand
things to fit their needs if they wanted to test other blanking
periods.

The goal here is to be able to specify the panel timings in the device
tree for several rk3288 Chromebooks (like rk3288-veryon-jerry).  These
Chromebooks have all been running in the downstream kernel with the
standard porches and sync lengths but just with a slightly slower
pixel clock because the 76.42 MHz clock is not achievable from the
fixed PLL that was available.  These Chromebooks only achieve a
refresh rate of ~58 Hz.  While it's probable that we could adjust the
timings to achieve 60 Hz it's probably wisest to match what's been
running on these devices all these years.

I'll note that though the upstream kernel has always tried to achieve
76.42 MHz, it has actually been running at 74.25 MHz also since the
video processor is parented off the same fixed PLL.

Changes in v4:
 - display_timing for Innolux n116bge new for v4.
Changes in v5:
 - Added Heiko's Tested-by
Changes in v6:
 - Rebased to drm-misc next
 - Added tags

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
---

 drivers/gpu/drm/panel/panel-simple.c | 37 +++++++++++++++++-----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 1bee197821ef..602809f6da6a 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1702,23 +1702,32 @@ static const struct panel_desc innolux_g121x1_l03 = {
 	},
 };
 
-static const struct drm_display_mode innolux_n116bge_mode = {
-	.clock = 76420,
-	.hdisplay = 1366,
-	.hsync_start = 1366 + 136,
-	.hsync_end = 1366 + 136 + 30,
-	.htotal = 1366 + 136 + 30 + 60,
-	.vdisplay = 768,
-	.vsync_start = 768 + 8,
-	.vsync_end = 768 + 8 + 12,
-	.vtotal = 768 + 8 + 12 + 12,
-	.vrefresh = 60,
-	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+/*
+ * Datasheet specifies that at 60 Hz refresh rate:
+ * - total horizontal time: { 1506, 1592, 1716 }
+ * - total vertical time: { 788, 800, 868 }
+ *
+ * ...but doesn't go into exactly how that should be split into a front
+ * porch, back porch, or sync length.  For now we'll leave a single setting
+ * here which allows a bit of tweaking of the pixel clock at the expense of
+ * refresh rate.
+ */
+static const struct display_timing innolux_n116bge_timing = {
+	.pixelclock = { 72600000, 76420000, 80240000 },
+	.hactive = { 1366, 1366, 1366 },
+	.hfront_porch = { 136, 136, 136 },
+	.hback_porch = { 60, 60, 60 },
+	.hsync_len = { 30, 30, 30 },
+	.vactive = { 768, 768, 768 },
+	.vfront_porch = { 8, 8, 8 },
+	.vback_porch = { 12, 12, 12 },
+	.vsync_len = { 12, 12, 12 },
+	.flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW,
 };
 
 static const struct panel_desc innolux_n116bge = {
-	.modes = &innolux_n116bge_mode,
-	.num_modes = 1,
+	.timings = &innolux_n116bge_timing,
+	.num_timings = 1,
 	.bpc = 6,
 	.size = {
 		.width = 256,
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
