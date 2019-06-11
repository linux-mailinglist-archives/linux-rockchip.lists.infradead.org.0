Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A74E3D1E4
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 18:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sp4QNJmTC7dV8TgI/cNhik21VP5uYZOVQTO4YOPzG/M=; b=JD/O09J4s/zj0x
	SZ2LJcbID2UCCdt8+teW8894bbmEx72thQIF6cS7atzOmUSXQNUIUDZ/f09QYE+7v5s3TtMpuN+li
	fcV5Wzm84b4uZP7nQvtTvoKqcJZq26nOzKpaSPo2FFZaVtyBNfi0HNARfjWBTVpYPmIR16XCg1wGa
	6RtreaHCkwr3YTE47kXuecK+DjNbwXntUao4KkfaIceLcb1gprAAg7ICaI2Nj9OCMaC28YkRUkACK
	9QKa4if5Co5kq47ZDcFAaWzMzihGhqZHw8sgnA/gFRmp4ZYNHJ3aQF0Dd2daBFpYbcOtMqPzNOv0m
	N/Cd+UwMQPoqbTfW1n/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajMs-000712-Ru; Tue, 11 Jun 2019 16:11:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajLk-00066X-L2
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 16:10:25 +0000
Received: by mail-qt1-x841.google.com with SMTP id z24so1981485qtj.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 09:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IcjTX53+88NTX1Of/etOSSbzEJ34gjPlAbSUER4je44=;
 b=E+4k4cMWZkWG3av7jzrtIC9XVpdI/5VCrQzYYUUZFaOv2aA3XbVLpBeS+QGwXUbCao
 Wu1lYE+AcPx4r1athjoPTa0VkbjMv1I75A0myQmIrmyzt/PerOUYf54wJa5QqW7TZT0u
 YRgKvLmepV5WbwGH7f4/weRTTdKa02paJu0yqYtx51vH2SggV3bih5EGwPcs1NzELLkT
 zVvf9wsOLu1qdL0JchKYM5IzAmm8GZPQ2t5NdtyM8O6deLWCveyN+Ls/XaQvMvyXA92Z
 Fa0RvSCgi4j2oF2vjGo9JaQstGXqpfrjqhzi8SFBmUEIibjzNqBHRtlm+ClCLvMeh8mG
 ggkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IcjTX53+88NTX1Of/etOSSbzEJ34gjPlAbSUER4je44=;
 b=ZZJfz6PBTxje+MNUxxPPrhBHQC8QmufSzHKd0MuzWzwFSQ7UJqsAYwqc/rkw+G4wDU
 Ww9ehUl3NJlZLTiRdQhBEnECPm5NmOa0CpbLmW8CA1zASivqSmpF7U/rDzLCLUY5lmC9
 +S7kvpy8beq01a8mEATBsjIBfHUXlgWjZaATXifMWYVnBgE1hDE8HFOUTMV6XR/kGpGf
 lWssiulg/6ZjvVpnG8KmC1UjFAi7Vn1XjoVPGf5seIEQc/g8Kgd9xPoNCSLQ0tCxrp0G
 LjPa/OGvEZTV8V30Gkl72x+z3hWwYpF1Mfi2pBKWsaHYKNLAuhGv0rtvTSkksAgk+nsW
 fDmw==
X-Gm-Message-State: APjAAAUbVaediIRRv61oNFK4/B0a6TIHPEwxymSJmkjds/5KgHBPpgWQ
 qV/xp4cHnP90b3sfuoWWZAnvVA==
X-Google-Smtp-Source: APXvYqx09hVB1nYJWQKeg12JwC5uaUX0eTzaRJzjjifsmwFiNPFxvEowV1lJZVaQrDMIvoj+O9473g==
X-Received: by 2002:a0c:a944:: with SMTP id z4mr4223419qva.92.1560269415817;
 Tue, 11 Jun 2019 09:10:15 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d188sm6755094qkf.40.2019.06.11.09.10.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 09:10:15 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 10/11] drm/rockchip: Don't fully disable vop on self refresh
Date: Tue, 11 Jun 2019 12:08:24 -0400
Message-Id: <20190611160844.257498-11-sean@poorly.run>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611160844.257498-1-sean@poorly.run>
References: <20190611160844.257498-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091016_814585_C22F2492 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Cc: Zain Wang <wzz@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 "Kristian H . Kristensen" <hoegsberg@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Instead of fully disabling and re-enabling the vop on self refresh
transitions, only disable the active windows. This will speed up
self refresh exits substantially and is still a power-savings win.

This patch integrates portions of Zain's patch from here:
https://patchwork.kernel.org/patch/9615063/

Changes in v2:
- None
Changes in v3:
- None
Changes in v4:
- Adjust for preceding vop_win_disable changes
Changes in v5:
- None

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-5-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-4-sean@poorly.run
Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-10-sean@poorly.run
Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-11-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 41 ++++++++++++++++++---
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 83c6884f558d5..12ca67284811e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -134,6 +134,7 @@ struct vop {
 	bool is_enabled;
 
 	struct completion dsp_hold_completion;
+	unsigned int win_enabled;
 
 	/* protected by dev->event_lock */
 	struct drm_pending_vblank_event *event;
@@ -550,6 +551,7 @@ static void vop_win_disable(struct vop *vop, const struct vop_win *vop_win)
 	}
 
 	VOP_WIN_SET(vop, win, enable, 0);
+	vop->win_enabled &= ~BIT(VOP_WIN_TO_INDEX(vop_win));
 }
 
 static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
@@ -632,6 +634,25 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 	return ret;
 }
 
+static void rockchip_drm_set_win_enabled(struct drm_crtc *crtc, bool enabled)
+{
+        struct vop *vop = to_vop(crtc);
+        int i;
+
+        spin_lock(&vop->reg_lock);
+
+        for (i = 0; i < vop->data->win_size; i++) {
+                struct vop_win *vop_win = &vop->win[i];
+                const struct vop_win_data *win = vop_win->data;
+
+                VOP_WIN_SET(vop, win, enable,
+                            enabled && (vop->win_enabled & BIT(i)));
+        }
+        vop_cfg_done(vop);
+
+        spin_unlock(&vop->reg_lock);
+}
+
 static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 				    struct drm_crtc_state *old_state)
 {
@@ -639,15 +660,16 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	WARN_ON(vop->event);
 
-	mutex_lock(&vop->vop_lock);
+	if (crtc->state->self_refresh_active)
+		rockchip_drm_set_win_enabled(crtc, false);
 
-	if (!vop->is_enabled) {
-		mutex_unlock(&vop->vop_lock);
-		return;
-	}
+	mutex_lock(&vop->vop_lock);
 
 	drm_crtc_vblank_off(crtc);
 
+	if (crtc->state->self_refresh_active)
+		goto out;
+
 	/*
 	 * Vop standby will take effect at end of current frame,
 	 * if dsp hold valid irq happen, it means standby complete.
@@ -678,6 +700,8 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	clk_disable(vop->dclk);
 	vop_core_clks_disable(vop);
 	pm_runtime_put(vop->dev);
+
+out:
 	mutex_unlock(&vop->vop_lock);
 
 	if (crtc->state->event && !crtc->state->active) {
@@ -895,6 +919,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	}
 
 	VOP_WIN_SET(vop, win, enable, 1);
+	vop->win_enabled |= BIT(win_index);
 	spin_unlock(&vop->reg_lock);
 }
 
@@ -1051,6 +1076,12 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	int dither_bpc = s->output_bpc ? s->output_bpc : 10;
 	int ret;
 
+	if (old_state && old_state->self_refresh_active) {
+		drm_crtc_vblank_on(crtc);
+		rockchip_drm_set_win_enabled(crtc, true);
+		return;
+	}
+
 	mutex_lock(&vop->vop_lock);
 
 	WARN_ON(vop->event);
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
