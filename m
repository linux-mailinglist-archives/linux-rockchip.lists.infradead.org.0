Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0719817DC8
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 18:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPILVkGp5HWBeX/QI5XUNG99HFxpfQMWDGmLozxmtCM=; b=Fd4LRXqQRa9ge3
	NIYLNyTMh70FgOXfblMwZSOjRmjXTiA0fR8G+IA7Vfdoxdpz4cwnJN3/w0FFN4DbCXDOzLsogqAkd
	icaQRKZtw3YbItYadV09fuK6zg4zzZ5XoRQPwkNVJ7fZhvCiCvngcUamiHe0yL4QO8mJsBndoCqg3
	jTy36j6qSHWX4JapSCJ3Qbyzm3CCFMlpl3E5OZU4wYEaRp+8AmqeV6VkTVvvCIYu4XreTQbM0nOti
	6tYURHRst5ZlWb00ci/k5VZ8JAHS+u0SVpfbxd135UXGFocWj0vVjbkG4J0qujO+pwOPAtKCLdkay
	JqNOJJ1Lds3VfJXvYzOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP8e-00011e-42; Wed, 08 May 2019 16:09:48 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP8T-0000qj-0s
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 16:09:38 +0000
Received: by mail-qt1-x842.google.com with SMTP id f24so13412040qtk.11
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 09:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SSjzGScI7FWnThDcb7L6+9NbYWPOU1oEmSq7ubXMBrA=;
 b=b/Mzvp9NPtpNHKqVRbANgyrQcwT3N1aJFNvie3Z04eQTbUk6Qao33USN2IESlcHCOO
 4qnWQ0OSFA9kRNfw0U84tm6awagkWYPwG6lxiGHkQlacBIqYLmHbCoID7pE85RwJ6oWW
 fxCjWj0loJl7dr1aQl440frgop0Fsx3+xqDuR0iu3DGH+kYO/XBZ91bJw22MT3cefWmv
 9y+gjvaQnQ096PQRKvgg8gbPFShyevAenHdukkPFwgfEZVmYe7qW4oVd48HxFgI6IQar
 Fn788RAuaJM5XZ7ORF6O6nrqX9mxUfX5QCSmGbyiJwTNTf6qDqASZNABfmLhhypMhWKJ
 h7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SSjzGScI7FWnThDcb7L6+9NbYWPOU1oEmSq7ubXMBrA=;
 b=DOjsgQdNUd7w8C4yk50nXVxtqdgtXQOlo+CqiwpBZG/HH4+i1428qfpIVLD51C/JEK
 T/V/+8Md+dbo3YoWglB2TAYzyzPBZflHAnH8Oup/NxxVUBlCEX3kDPjveW0wOiyEDvrk
 3Vkou0YcBzL7BBCZn13CJBTSk45gv17vuHuvA4oI4OE/JJwiL6a/gHgkDXCTdhdS9Q4q
 h7dFxhbq9kXy5mLxITf9l2VoS+9sP1n/p8nue3RQ0WMB9y6LV/jc1kxoLwuZumJoSRcp
 kcyZSDEBnK+KfC2LYOKMFdqofIO3yGReNKNbjcJSDm1kEn4DICYQGC7CysNU8Hqf3NvF
 lvKQ==
X-Gm-Message-State: APjAAAXNKDjCUdBCNgfVxEvWeo0Api7z8b+Ef1byzq8tKA0hx+yabylN
 KYwvy8jYV2pddlt8THtU+CiJ9g==
X-Google-Smtp-Source: APXvYqyZLDk2aXR6xfKMLulFGaYRoZh1EvXTEYMzxva9aBfDueLN4c20IV9V9OJciZpl/JQmHfwuKQ==
X-Received: by 2002:ac8:2cc1:: with SMTP id 1mr32738783qtx.389.1557331775692; 
 Wed, 08 May 2019 09:09:35 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id s50sm10936877qts.39.2019.05.08.09.09.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:09:35 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 06/11] drm/rockchip: Use dirtyfb helper
Date: Wed,  8 May 2019 12:09:11 -0400
Message-Id: <20190508160920.144739-7-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508160920.144739-1-sean@poorly.run>
References: <20190508160920.144739-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090937_061434_C1F26C2B 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Changes in v4:
- None

Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-7-sean@poorly.run

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
