Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB818122CF
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 21:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcBSfQVML10J+qI+FUKjgMSarUSYHGvMZr3N4dchGXg=; b=D1BxbaIsTDMUQE
	O6LRs8Qrkdx9UGWw5hoHqiWmnzWh/66R3S+yxZjeFVyYQMFO0GH1T4esttEXOb6Xv3TPZ/OzEGvh0
	yhRZlTLMnYkcvBaZLg1fSQ4mw/TiVAFD0caHyCQiGn5+ucw4x/3IzqULKEMh1J8UsS0aU5P0JTr97
	4ahNOE6k4bia8l7WUDJ+7eWRSLARMSkhQgU/FSGLqQr5qLFNfNlEkH0TZHtOVjsANYVnNCUBQc3WA
	Jteg+ZkMM6y58SxNz7uFU/hcZZn8UjW00xcbJkVzG2j27W2Fjn8pF3FhOGlsrTjTcca/Nel2o28Be
	2dghzUL5AiC/9plJ4qZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHiy-0001Am-NP; Thu, 02 May 2019 19:50:32 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHiw-00019h-1P
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 19:50:31 +0000
Received: by mail-qk1-x743.google.com with SMTP id d14so2253226qkl.11
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 12:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oFVSuZJraJRY8lf7zLGr4Icu987vmHl/cFcB0vPbwTo=;
 b=T4x6TwEZL9VIqTV12O2BFwvKSIPNN7BS9WFC88TrYAEmDjgKlJUnAIv9A8+/WllSG+
 UEKM5WL87d4xq6HgqE3QULfTmN3wFg+WXSaGzcEjqq6uQdn6pexuw5YUxuP5q3MRdpP0
 k3Yla/PYmhA6I8boHirx6ETAqZNcMr0GFIBYTthqChrZ6WnGBeKxuLWO9gDaXat+vsyU
 Js1Q05cJ8VnDT9G7OdqrMODWsVG0DnZXZHIwQlVCV8LvYPk4rP4n+NCw/Sde4IGdPeGU
 uPj25y1BH/NZO8Tv8SuVdgaYxeLGgs9MTgqCN5oTiQBBzshAYGSd2uIJNLvR5KNez/+j
 a3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oFVSuZJraJRY8lf7zLGr4Icu987vmHl/cFcB0vPbwTo=;
 b=Z46cs0ps6KGWULr0hBx7eN51Aq+oBm+TXmIek54eJ0wKSc6WjNGsjHZSPm8LA0UAN4
 b+uG6GvYUZZ6xQtCrNiE07dI/1luYBwdBnd39J3N27vqH+owpXI9w6lv5Jv+BW9MKJJU
 SzecoyCdCpD3IveU/sJrvuNwFLfzX5Lef2PToy6Ia1ohe6SaQ3jMasDurjS+2Tj0LF1o
 AlRkvjUAr+2VT1bdBKh29i4iN+tp+MGM5hs++2GhmiQhBf4QlZky3KRP0j/h/HUzT98E
 FQQL2aD3iYgT41LNIrYLQAeUgmqWBn3zvCoRlaX3AxYSWYkMZ9D83rSpMF5a7U8UuoUR
 I3jQ==
X-Gm-Message-State: APjAAAUOJoYdbJl+AzVWLnAzNV5DEEqjSBuCnnYY9c5R1I+49whY6zNN
 rRXn8x5k0mx6Hvj5e0AI+v/6dg==
X-Google-Smtp-Source: APXvYqxxFG9zgR3WVcDfPdsGy4UEJe7Y+styDVNNm4qQfqbwO4kMeleh9vCf98fyvnm6StgEl1J4Hw==
X-Received: by 2002:a37:4948:: with SMTP id w69mr4703738qka.122.1556826628609; 
 Thu, 02 May 2019 12:50:28 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k36sm34366qtc.52.2019.05.02.12.50.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:50:28 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 06/10] drm/rockchip: Use dirtyfb helper
Date: Thu,  2 May 2019 15:49:48 -0400
Message-Id: <20190502194956.218441-7-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190502194956.218441-1-sean@poorly.run>
References: <20190502194956.218441-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_125030_091903_2B3D78AD 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Instead of flushing all vops every time we get a dirtyfb call, use the
damage helper to kick off an atomic commit. Even though we don't use
damage clips, the helper commit will force us through the normal
psr_inhibit_get/put sequence.

Changes in v3:
- Added to the set

Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 97438bbbe389..02e81ca2d933 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -16,6 +16,7 @@
 #include <drm/drm.h>
 #include <drm/drmP.h>
 #include <drm/drm_atomic.h>
+#include <drm/drm_damage_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_probe_helper.h>
@@ -25,20 +26,10 @@
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_psr.h"
 
-static int rockchip_drm_fb_dirty(struct drm_framebuffer *fb,
-				 struct drm_file *file,
-				 unsigned int flags, unsigned int color,
-				 struct drm_clip_rect *clips,
-				 unsigned int num_clips)
-{
-	rockchip_drm_psr_flush_all(fb->dev);
-	return 0;
-}
-
 static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
 	.destroy       = drm_gem_fb_destroy,
 	.create_handle = drm_gem_fb_create_handle,
-	.dirty	       = rockchip_drm_fb_dirty,
+	.dirty	       = drm_atomic_helper_dirtyfb,
 };
 
 static struct drm_framebuffer *
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
