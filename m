Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B9717DDA
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 18:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoKgD3SDuUjaQrlL/s6nZaxFN13HSYH2RUlgj9IEpAY=; b=RABbZMoIBM6yzr
	HC+4DDth8DYyzgFUKCysL6iqlvqgd4Y46KDmbeNoPo9Akt/cE5kAFDLpy6VsmDR03f7ExRfjw5NiD
	0aMt9165U1dG7XzWj9MbSE34k+plfgFyaCPFcmBSqILQXIKG2h50QvzJD+k8VlmJu+XiXOWy02YU0
	SHqPhIywjbmFlIOLJLoQzx9/wmNavgRHxePwG3//4VWs1GUfLLV129G8siEJzvwnZj8GI1j1Szhtf
	YpYBOuMiDzoFs9GOOIGDIE/vMbSUEFiRgTsuHFFtOsLfsEapifCiKhrFctr47UBmvbcQn3ikw7VE5
	5K6CACXD6kFLhZ+qcP5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP92-00020P-Or; Wed, 08 May 2019 16:10:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP8Y-0000tX-VB
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 16:09:53 +0000
Received: by mail-qk1-x741.google.com with SMTP id g190so3703613qkf.8
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 09:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F2jyUkK54dAtzW9q8l1lAlimvgbuYWM4fIyCnzJ6lOg=;
 b=YZjrGZw4u8UksJvAyaMTuVDWWzwcGobAms8CYvmqGVTNQzjWx1Hs2NxmZRsbQ8Uvd7
 amxnG6rrNuM0R+TDYWmmVRb/whuXLWPYJY1Y2Tt93+PXLZ/66MuhMNS/OUQd1iAdBH5d
 uRtfclY/vY6HiefGGfPOVD9k4p1MDxoANLs/ucwu9yDzjWPFlg1ollOsJMAeK0RyjKvn
 wKn0nF0rNWppHeNYi2zDH+5dMNBIVa1/XEww0rLUGW5Q07HiRTXCQ46Jmv1WSn2+kuAc
 mA3yksNEo40IXs+eVz+YXfRdrFH6ok/60pWp86Qt6C/Qjc00KsQOA2FaDJO41NfcIyZd
 Xm6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F2jyUkK54dAtzW9q8l1lAlimvgbuYWM4fIyCnzJ6lOg=;
 b=SMhtLdGADfvrETLpMH+cYJol06gkYsX/lIIY7k43xXZ3ralF8xsnMr6qVO/YaBKzpZ
 /C0EBUSDoldX1JQ440ifOmo32ul3hsTFjcZvtkYPklpXfB/q1uaoNFdyNgXcvDzxMfSf
 zWhIv6kSU9LxvYaXHNrF/Ooh/EFp+SR+jCHoDa1XZCq0EWMpjlTVTGC9penZzyPlFrqc
 kr2msl0k2LB756K8Q/M3NhHAmriZ+LI2/aXfAxM6EhljrwVKXpxHvTirwQ6EfR3nZMcK
 +9lUhWcnBW7DL0jl+IePYSGI0k4ExwCq12G3bwqBD33+/8/46V5BoXWsm708sRLnfjaS
 MOXA==
X-Gm-Message-State: APjAAAXVW/kpFU4gYlwch2uh3hdAVjMxDNAQEomY8uBh0hizzsOpy6V2
 o46AhXPMFgIjI6iDu4GVLT8uVw==
X-Google-Smtp-Source: APXvYqzRA5IObRuPx+SY8SNlAyq+nRRa4bmVL8DgjSZ9iDXAEVZOvPWti3Ep53uWLeh2NRo1+SzXzA==
X-Received: by 2002:a37:6c81:: with SMTP id
 h123mr29498480qkc.201.1557331781702; 
 Wed, 08 May 2019 09:09:41 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id s50sm10936877qts.39.2019.05.08.09.09.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:09:41 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 09/11] drm/rockchip: Use vop_win in vop_win_disable instead
 of vop_win_data
Date: Wed,  8 May 2019 12:09:14 -0400
Message-Id: <20190508160920.144739-10-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508160920.144739-1-sean@poorly.run>
References: <20190508160920.144739-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090943_563835_C92F19AF 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

Change the argument to vop_win_disable to vop_win to accomodate future
changes to the function.

Changes in v4:
- Added to the patchset

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index f89d41425be0..15a5b44eb7e7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -543,8 +543,10 @@ static void vop_core_clks_disable(struct vop *vop)
 	clk_disable(vop->hclk);
 }
 
-static void vop_win_disable(struct vop *vop, const struct vop_win_data *win)
+static void vop_win_disable(struct vop *vop, const struct vop_win *vop_win)
 {
+	const struct vop_win_data *win = vop_win->data;
+
 	if (win->phy->scl && win->phy->scl->ext) {
 		VOP_SCL_SET_EXT(vop, win, yrgb_hor_scl_mode, SCALE_NONE);
 		VOP_SCL_SET_EXT(vop, win, yrgb_ver_scl_mode, SCALE_NONE);
@@ -603,9 +605,8 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 	if (!old_state || !old_state->self_refresh_active) {
 		for (i = 0; i < vop->data->win_size; i++) {
 			struct vop_win *vop_win = &vop->win[i];
-			const struct vop_win_data *win = vop_win->data;
 
-			vop_win_disable(vop, win);
+			vop_win_disable(vop, vop_win);
 		}
 	}
 	spin_unlock(&vop->reg_lock);
@@ -753,7 +754,6 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 				     struct drm_plane_state *old_state)
 {
 	struct vop_win *vop_win = to_vop_win(plane);
-	const struct vop_win_data *win = vop_win->data;
 	struct vop *vop = to_vop(old_state->crtc);
 
 	if (!old_state->crtc)
@@ -761,7 +761,7 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 
 	spin_lock(&vop->reg_lock);
 
-	vop_win_disable(vop, win);
+	vop_win_disable(vop, vop_win);
 
 	spin_unlock(&vop->reg_lock);
 }
@@ -1592,7 +1592,6 @@ static void vop_destroy_crtc(struct vop *vop)
 
 static int vop_initial(struct vop *vop)
 {
-	const struct vop_data *vop_data = vop->data;
 	struct reset_control *ahb_rst;
 	int i, ret;
 
@@ -1659,12 +1658,13 @@ static int vop_initial(struct vop *vop)
 	VOP_REG_SET(vop, misc, global_regdone_en, 1);
 	VOP_REG_SET(vop, common, dsp_blank, 0);
 
-	for (i = 0; i < vop_data->win_size; i++) {
-		const struct vop_win_data *win = &vop_data->win[i];
+	for (i = 0; i < vop->data->win_size; i++) {
+		struct vop_win *vop_win = &vop->win[i];
+		const struct vop_win_data *win = vop_win->data;
 		int channel = i * 2 + 1;
 
 		VOP_WIN_SET(vop, win, channel, (channel + 1) << 4 | channel);
-		vop_win_disable(vop, win);
+		vop_win_disable(vop, vop_win);
 		VOP_WIN_SET(vop, win, gate, 1);
 	}
 
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
