Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9B5660D2
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 22:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZwK7CYGH3T0mO4DkWQbodlPEXSJSUvW6qR0oz5uh+8=; b=U6KhPmIZ1sxkzr
	7L/FP1sy6gQM134l4fnvV+C3ToAWlC7o2rsRl5HPgl4LCBsK9hymTU9KerxAQGtq6+E5gD90p2kgh
	XxwVm4nj9F84V3GzpZhg2zJUopxbpd1nJVyD2rtNt1lK+HH2OWIi76SaS25JNdBFVfC+Uuf1JjscZ
	qFtKcjb9+GxESoYNMtU1kCbp4FNaT5BjpGHrabFKqHuenauccjt5VJBhw64AjfRxf/OmljeiSVcAZ
	CT+HKcp4nbb9yQ7RyGXTU91wD4OXaPAAZeskkq1g++OxwiBtGxYzOJ30WhgrWnjOEIBrm6W69S5Lx
	QloyLsI2Nzci1yPVajUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlfwH-0008BW-80; Thu, 11 Jul 2019 20:45:13 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlfw8-0007Gp-Nb
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 20:45:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id m4so3503116pgk.0
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jul 2019 13:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MLdzftGH/gFul7iiOHMklLGxy/NCS/NGh67QDWN64SU=;
 b=MhB4/1cUL+NhY0J5GWsbsrd3eTLDSU+tbUVIlifszTmidPxecNapqdD0z5bq8OPmcV
 BD68gn+Iz22nEW6WBNmOGATWc/CmyRFYE6uwNsJd4YRbbIoj+oXWV9pGjQI8zCvdS4eS
 GRdqJ9Y1/ZJi4k0YQnQV7MG0weCWBo9tc0g6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MLdzftGH/gFul7iiOHMklLGxy/NCS/NGh67QDWN64SU=;
 b=EPlnNtfHQS/PKOMo9hfWIChuAR/DuxN51yPD2j/sSvpllFleoT/SlFH4nxVSHsW8gQ
 z01vNiNtUf0mA1SIf92GRLfaIobaNG4Uw401bvUEfD09eIJk76acM7x4hMI/vvyQ2BzB
 5zNv3ht3qDnjaPpYw2quEQtLnhxVtFsF30gOeOX4DYtLFu3+CUEUZXjxcVhKc0GP2ADf
 BzLBCQpIkAPLj+5WK74PuTWnHAd4v5jPmfdAY7MHm2QPZBJC8EgbnR6U24cZ+idQcPT+
 vLOkzIESCiEH+yg73KdRKYInz5XXGWlcu4YU6kHUqEPeDnkIRS5slyf6IjET+Ax4vKXX
 AxTg==
X-Gm-Message-State: APjAAAXxbyEsN0JcZxP2VRU8O2EQVo1zadoCQNHNe7QPlGSAZ9CXOvQg
 pXamG31M8Qf5pLSKXJDSDmbdug==
X-Google-Smtp-Source: APXvYqwroM5R2J8TNfLYHSWaQlIk+XkN1UktVue3p11E50fR61dSB3pcJ91/MyRyFDfLxvoJmMQjww==
X-Received: by 2002:a63:c20e:: with SMTP id b14mr6295215pgd.96.1562877903778; 
 Thu, 11 Jul 2019 13:45:03 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f17sm5320110pgv.16.2019.07.11.13.45.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 13:45:03 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>
Subject: [PATCH v6 3/3] drm/panel: simple: Use display_timing for AUO b101ean01
Date: Thu, 11 Jul 2019 13:34:55 -0700
Message-Id: <20190711203455.125667-4-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190711203455.125667-1-dianders@chromium.org>
References: <20190711203455.125667-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_134504_797516_9B8BA02E 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Convert the AUO b101ean01 from using a fixed mode to specifying a
display timing with min/typ/max values.

The AUO b101ean01's datasheet says:
* Vertical blanking min is 12
* Horizontal blanking min is 60
* Pixel clock is between 65.3 MHz and 75 MHz

The goal here is to be able to specify the proper timing in device
tree to use on rk3288-veyron-minnie to match what the downstream
kernel is using so that it can used the fixed PLL.

Changes in v4:
 - display_timing for AUO b101ean01 new for v4.
Changes in v6:
 - Rebased to drm-misc next
 - Added tags

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
---

 drivers/gpu/drm/panel/panel-simple.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 602809f6da6a..226f068fb679 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -595,22 +595,21 @@ static const struct panel_desc auo_b101aw03 = {
 	},
 };
 
-static const struct drm_display_mode auo_b101ean01_mode = {
-	.clock = 72500,
-	.hdisplay = 1280,
-	.hsync_start = 1280 + 119,
-	.hsync_end = 1280 + 119 + 32,
-	.htotal = 1280 + 119 + 32 + 21,
-	.vdisplay = 800,
-	.vsync_start = 800 + 4,
-	.vsync_end = 800 + 4 + 20,
-	.vtotal = 800 + 4 + 20 + 8,
-	.vrefresh = 60,
+static const struct display_timing auo_b101ean01_timing = {
+	.pixelclock = { 65300000, 72500000, 75000000 },
+	.hactive = { 1280, 1280, 1280 },
+	.hfront_porch = { 18, 119, 119 },
+	.hback_porch = { 21, 21, 21 },
+	.hsync_len = { 32, 32, 32 },
+	.vactive = { 800, 800, 800 },
+	.vfront_porch = { 4, 4, 4 },
+	.vback_porch = { 8, 8, 8 },
+	.vsync_len = { 18, 20, 20 },
 };
 
 static const struct panel_desc auo_b101ean01 = {
-	.modes = &auo_b101ean01_mode,
-	.num_modes = 1,
+	.timings = &auo_b101ean01_timing,
+	.num_timings = 1,
 	.bpc = 6,
 	.size = {
 		.width = 217,
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
