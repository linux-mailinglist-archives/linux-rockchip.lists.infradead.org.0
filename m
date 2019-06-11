Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301783D1D5
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 18:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XD9kxthGM72q5yVNwERyafWcc37CfYcXUgDB37Lk4A=; b=FobU8sjxNo1u2M
	xY3c6ZCqdDqFNuIDSzFmhL3pHoQ9Wt4nvWFyZTCsl08VkzLeBPA3w4fqWSZYXJ78SKP0KLPFgp9HR
	YGTHaw2jXhbgl8vw6rx3wKItrH1lsuVSVJgFSAp2stGOzcSe4g+hGZTiY+iO74obMm/mejbB+W2g5
	ozuWJ7B7176HJoaxBDMam+Hito4OTaEI7zisg4IJG1lLstbQbqCisqsYeWmQ0AiNEZFMTttEu8ikx
	CvPjRl8HW1yOn36zG9Iux1Ol2g3nUTDveEi9N25U/JzqgMw0MV1B6lsT0hqk97FoCFXqzQd2bytTy
	2oBi76cG6AUUR+LqQnXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajLe-0004lk-J7; Tue, 11 Jun 2019 16:10:10 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajLJ-0004c1-3t
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 16:09:51 +0000
Received: by mail-qk1-x742.google.com with SMTP id w187so7972723qkb.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 09:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5KL5I0SAkC3HgYY38CLkIrnaNCzSCjH7Gekw6kD3yas=;
 b=Dhyyf6Zs2HJKXIA76COVerElgsDhNbHhr+jXsqwtv8uMA34bUEia2lD2YjSnWtRQkd
 aOfZ+XHC44LA2MnyWyibwejHLvta4yB1SAHpkH1gwGqNFPWrv/XfjUc7ewC1PKLqE6pP
 y4/SIIlXJZQnnuU6ZwYAcs7bnUMnQMqxxcZh2m2LttRmcoZllCMXiLJEr/Co/FKzBtbH
 z+cYWR5m55ciVzS1VYKKy1LL1HmmUA40AxOLfkQm/h7/HL4Z5vgHdGGz69k0qcQz7n64
 3e6aD2610yVgT5q9qbL5NjbeI3FG8rixtayH0FjJcomDORrVIFnNmwtnWPPNo9JBESkW
 4ZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5KL5I0SAkC3HgYY38CLkIrnaNCzSCjH7Gekw6kD3yas=;
 b=fm2yumKS7a1kdtLrmEr0bDtx1OcskKDlIB/5zmQalbeUqfwcSpKHhgLVFQyoc8iYzz
 +v6b6cbQBS5aiG/6OyNgnkJJ865n/VXVGWtIRQrfpSGRwwsWA4ZQnBeoQuZfNteUffgh
 4XHeTvTBA8M0MwMzBZGygkqzDkmKZRC8qeDxV3vXXkxnaUDtl3Msdg/ub3w+5Kldyw2j
 44j9UjjkeX9y++32BHn9RsqwvmLpTxT0a9UE8peQYh9gAoDpC3F4/gAElrSjZdsyz6QC
 cyxJ/8dtxFGEj+Xok85KZleVfSvSyg70sQCxXdRaer3S0u0vD9uhooctUIOhfUf02wtD
 teAg==
X-Gm-Message-State: APjAAAXRYzbHLYl145KCRMoptvK+VV+3n76WFjOEKQ8CCgnjW1sMaG6S
 IWH0z+0bJmzAe1L/bSQs5bL2jw==
X-Google-Smtp-Source: APXvYqyouimZW0B4aAIYOj5G80WyFXPhJBMKXWTYK8Mb73HlKgta+rCD0kZUTBneLOUCeujgCmbY7g==
X-Received: by 2002:a37:502:: with SMTP id 2mr57254612qkf.93.1560269386635;
 Tue, 11 Jun 2019 09:09:46 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d188sm6755094qkf.40.2019.06.11.09.09.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 09:09:46 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 06/11] drm/rockchip: Use dirtyfb helper
Date: Tue, 11 Jun 2019 12:08:20 -0400
Message-Id: <20190611160844.257498-7-sean@poorly.run>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611160844.257498-1-sean@poorly.run>
References: <20190611160844.257498-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_090949_156819_3B023029 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
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
Changes in v4:
- None
Changes in v5:
- None

Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-7-sean@poorly.run
Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-7-sean@poorly.run

Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 31030cf81bc97..a888e31aa545a 100644
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
