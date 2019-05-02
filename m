Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2735122DD
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 21:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY1sfWGDaBgvOKBirB9I5HJQWyBAETo5t/vtKt7DKz0=; b=gfBmEWl+vYQvHR
	98KD6Ano5eVJFswDVP3YvbmJRkcm4JT+FNE131I/Db8M8dU10U/qD41nFMrsVhH0gXebYAI+CClvT
	Rs9nC+zyJnVjHu4Gd3UsK2rlDKhI2UUPObRXFNtLL7iprNUcOswNbluYfFB2XdwjrPVN0a725VNQh
	uKk8+Rq5wTDaYtkszDWpTm104hIpBOgJpqRS9oNfyakISseuPoKRxaH2QOj0H5yTcnUEqmvsfdpVA
	TaSuOWzCbL2+UembxdozWAXkxT0uncpsqtIzOkMxj9MSGxrSX9SqT1lt9ag8AuYoisvoE0IiHdbaq
	e9j5QBpA8KfbRFmA6Mxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHjR-0001jt-Fe; Thu, 02 May 2019 19:51:01 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHj2-0001Fy-I7
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 19:50:45 +0000
Received: by mail-qk1-x742.google.com with SMTP id w20so2264927qka.7
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 12:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R8Cg/N5P25Jdo4dS96m6R9OsUU24NMu8tqGMqDHvGoY=;
 b=gBg2aOhv8H/BPabSpi7+ULC39G22QbLXumxx9Pv61ulSzm/Ni/jGHNxb6J50GX0Jbk
 Nugx5P87X/plg4hR+KcaQizxqchYiC4hpZZXRJDOsUJvOM1K00wzBT29FLsnPJZrP31N
 7zVM+SSgAJpivVrhDuwPW6vseUugaBAPBkA0FWbPWFkJOEVnLq7YH8aN91k5emVfP+Hy
 4yyce5HlM3doAyWIGYxvylxfFIeoPrsWioTOYSGExMCVJgh1s25WifivQ+WktWhfKIyH
 bJ/qher37dhjI4+XXQtBrnq78MTsOJCzh9pYAQZfbxanyQB/8jBjuCOwyQnGub7v8+Qo
 53Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R8Cg/N5P25Jdo4dS96m6R9OsUU24NMu8tqGMqDHvGoY=;
 b=YDIuEjpAY0ilv167Gx+qWPVHmmUZir0AxABd3CB3YW+Pv6uNHILJ01d4aMMftUQdkQ
 fApAkjx5IUy9IEXDoy7Ps597DKzrLovrWutQLRf6Yy2lvSA7/grTh09aPQAgrcuHRwgJ
 UZ5Co0mFCJwYlfrnt2dSK2GN/SiFxi7pf/do8K+8kpWBlHdsiPToeWwMPhqbOiNE41e2
 hFX4baBDLS5yg3sYrY9KqjWGEQeYLmz7R21gdKd7I0Vm6PB1EWjRB87J+kmiV/dfhj1l
 UqJLmy12qT+5l5PmoiMiRTDpDtGNQ43isbnuxvwEE/nuJAc/I+O4+ehZTSBC2sc+33eB
 THXw==
X-Gm-Message-State: APjAAAVFNygiZVP4tyOL/8/Qosc+nYJahmrSNpFj9llst3fr+cAo9qN3
 Y6EM3do2TguZFmWdVuwnuQJLCg==
X-Google-Smtp-Source: APXvYqxk3KZ08hW57VjKsGseG0EJUgFCoJcuMmA5WITPFsUJcPS4+YbDDiB0uZWlj3zJKFjQ5af/qQ==
X-Received: by 2002:a05:620a:1585:: with SMTP id
 d5mr4491002qkk.212.1556826635623; 
 Thu, 02 May 2019 12:50:35 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k36sm34366qtc.52.2019.05.02.12.50.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:50:35 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 09/10] drm/rockchip: Don't fully disable vop on self refresh
Date: Thu,  2 May 2019 15:49:51 -0400
Message-Id: <20190502194956.218441-10-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190502194956.218441-1-sean@poorly.run>
References: <20190502194956.218441-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_125036_925601_89B9A8F6 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
 Daniel Vetter <daniel@ffwll.ch>,
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

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-5-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-4-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 38 +++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 45a38a332827..d171d90418c8 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -134,6 +134,7 @@ struct vop {
 	bool is_enabled;
 
 	struct completion dsp_hold_completion;
+	unsigned int win_enabled;
 
 	/* protected by dev->event_lock */
 	struct drm_pending_vblank_event *event;
@@ -594,6 +595,7 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 			const struct vop_win_data *win = vop_win->data;
 
 			VOP_WIN_SET(vop, win, enable, 0);
+			vop->win_enabled &= ~BIT(i);
 		}
 	}
 	spin_unlock(&vop->reg_lock);
@@ -624,6 +626,25 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
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
@@ -631,9 +652,15 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	WARN_ON(vop->event);
 
+	if (crtc->state->self_refresh_active)
+		rockchip_drm_set_win_enabled(crtc, false);
+
 	mutex_lock(&vop->vop_lock);
 	drm_crtc_vblank_off(crtc);
 
+	if (crtc->state->self_refresh_active)
+		goto out;
+
 	/*
 	 * Vop standby will take effect at end of current frame,
 	 * if dsp hold valid irq happen, it means standby complete.
@@ -664,6 +691,8 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	clk_disable(vop->dclk);
 	vop_core_clks_disable(vop);
 	pm_runtime_put(vop->dev);
+
+out:
 	mutex_unlock(&vop->vop_lock);
 
 	if (crtc->state->event && !crtc->state->active) {
@@ -744,6 +773,7 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 	spin_lock(&vop->reg_lock);
 
 	VOP_WIN_SET(vop, win, enable, 0);
+	vop->win_enabled &= ~BIT(VOP_WIN_TO_INDEX(vop_win));
 
 	spin_unlock(&vop->reg_lock);
 }
@@ -882,6 +912,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	}
 
 	VOP_WIN_SET(vop, win, enable, 1);
+	vop->win_enabled |= BIT(win_index);
 	spin_unlock(&vop->reg_lock);
 }
 
@@ -1038,6 +1069,12 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
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
@@ -1648,6 +1685,7 @@ static int vop_initial(struct vop *vop)
 		VOP_WIN_SET(vop, win, channel, (channel + 1) << 4 | channel);
 		VOP_WIN_SET(vop, win, enable, 0);
 		VOP_WIN_SET(vop, win, gate, 1);
+		vop->win_enabled &= ~BIT(i);
 	}
 
 	vop_cfg_done(vop);
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
