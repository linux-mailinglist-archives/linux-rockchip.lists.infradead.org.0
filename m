Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11482122DE
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 21:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7orZBR9HNo0QS8cAV1sV+knXR44qN8bhEV/9erZbk4=; b=IrAmbp6y7qpyyg
	U/F1/lqeEnGFoZj19MWKUu0PDl+/zhcL4a0vhlRnEuHr99QkGjIDy+TTGG9G43KyI4BE6vADFR54t
	Ybm2WWdAzuJpzixX4aO6juMWviy0Cd+z2UrFNnlkmcO7oavaQKH0LsB4TFbORnamCSL02t/QIah2N
	65x4fqpic9iUJTRWELBV2Uzm5WIcLgctSRyTjpx2GIkXrJoWvu7/c68Jao+XwV3VS6zvSjHa5HeGI
	+woGvg2ubqlR4ql/+orlYtpTcgqxq4t9d8UaU4Rc32A12YBrZQ361Ung1Ab06v/ACaa/7xtFErByg
	gm/npEB6dvUd9GkZjKtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHjS-0001lb-SM; Thu, 02 May 2019 19:51:02 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHj5-0001JV-0f
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 19:50:45 +0000
Received: by mail-qt1-x844.google.com with SMTP id c13so4064054qtn.8
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 12:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IADIU/EJ9FI/G06p19V/c4J8lEcHwqipgCGxkBiLylg=;
 b=Ix+JXVfo5ioRlNyP7UOsKwtCE1OZDBhyykPeRvW+abKdoCm2K5Iwhtt9QaXnM5CyQT
 QFEfeE1IT/KketqZA5YmdbDSrdGnTEUv2hi+OaOgcE3WEG+scLnzz/ecldOczc8PblKe
 w7t7g/f+LUB23NhiJqV/Amje431fC0KPD9WcMUVbNEwBA38DsWzYUpXxpNdRvbVnzuS6
 RULSnXewuPeKU00sikjI+d2D1Cmc+ZpvMfPDTcg54RpVtubQsm7pvWnTiOYhTRig4Sod
 0yy24k5oVH7rnk8M4EnOgcCx+k/lrqn5jGBDkzYlVas4d8kBKOK0DSjkrRHQddd8i0l5
 zCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IADIU/EJ9FI/G06p19V/c4J8lEcHwqipgCGxkBiLylg=;
 b=bdI7oXM6TyX+jIwBXASn2Pmsxs9mA4azLjtX8VqACbdtMYmCCCWoQLuBbm0dBpnNLp
 c8V4J7oW0cbhTF3PyTnGXllcZJ9NaE3DAiILuGYpVJ2lHozQRQluLRgxb1I0XzzqFHLR
 bpeYVO00gekiCKWjTxwtLGak4yDPFpX87x8zPhpIZPWxpd4rZIoWhz+NDEXU5oemKY2C
 TOgaSplwhpBfqSnn4ZefJNRfTUQs2MHcRlGdTxKQvgML7j92letOhJnIiI6ne2IA4VLj
 Rr7yf0R6DvanBjpIdpETl/ke5PEcMBPfVIEq0FKug0X4Zz92sV1/CLArsCrW3WF43x0B
 3nrg==
X-Gm-Message-State: APjAAAUbMb9oUo/1whLeu22xcj+vd3xUV6Ql9riZmr3S/f5qvkoMI02R
 mwVejgR+dWUIM9tWlPD4THgVhA==
X-Google-Smtp-Source: APXvYqxoEjvDEwkFiRYlf8cfhBENPjVWtZtE47VplWYS6ASODl3pXsDRHDYt5Doku3c45vfLjiwn3g==
X-Received: by 2002:ac8:3166:: with SMTP id h35mr4853635qtb.268.1556826637769; 
 Thu, 02 May 2019 12:50:37 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k36sm34366qtc.52.2019.05.02.12.50.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:50:37 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 10/10] drm/rockchip: Use drm_atomic_helper_commit_tail_rpm
Date: Thu,  2 May 2019 15:49:52 -0400
Message-Id: <20190502194956.218441-11-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190502194956.218441-1-sean@poorly.run>
References: <20190502194956.218441-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_125039_411272_EFBE8686 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
Cc: Zain Wang <wzz@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Now that we use the drm psr helpers, we no longer need to hand-roll our
atomic_commit_tail implementation. So use the helper

Changes in v2:
- None
Changes in v3:
- None

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-6-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-5-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 214064d599ee..1c63d9e833bc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -117,27 +117,8 @@ rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_priv,
 	return ERR_PTR(ret);
 }
 
-static void
-rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
-{
-	struct drm_device *dev = old_state->dev;
-
-	drm_atomic_helper_commit_modeset_disables(dev, old_state);
-
-	drm_atomic_helper_commit_modeset_enables(dev, old_state);
-
-	drm_atomic_helper_commit_planes(dev, old_state,
-					DRM_PLANE_COMMIT_ACTIVE_ONLY);
-
-	drm_atomic_helper_commit_hw_done(old_state);
-
-	drm_atomic_helper_wait_for_vblanks(dev, old_state);
-
-	drm_atomic_helper_cleanup_planes(dev, old_state);
-}
-
 static const struct drm_mode_config_helper_funcs rockchip_mode_config_helpers = {
-	.atomic_commit_tail = rockchip_atomic_helper_commit_tail_rpm,
+	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
 };
 
 static const struct drm_mode_config_funcs rockchip_drm_mode_config_funcs = {
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
