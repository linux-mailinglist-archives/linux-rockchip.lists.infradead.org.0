Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460141AC4D8
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 16:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pGzlt7AgzfLi25glI2lZdDFuj4iOOJFdsvq1l6C8avk=; b=aAlMU8oiZck1CZ
	aaySZrN4AC1oCj6PP2WfwfAazLGSbK12EnlFegOVsj0IFL5agxjhkBx6Y6bXkUU7D6oPFhOfWMJy5
	OoBFUClGtdV1LyynxPsiybvqFTvrekewvBf8oD0Xxb3PvTjflrb9NmbRdk55ivaQaFT8KS+m1xEfU
	f8c/l4tRaPJxJLIbzv00UU0GvFlSNA9pxzHITdPa9Tin0QngO1/m1fokbJUsBULjvs8aoaqDLetMc
	7YqHvpaKFC+fk7z0bsqieeAk5T8zXpvTobNI5cYzcxUWqsMeUjkqLtJ2F3LX68GpudeeQ4EUIXzyC
	15U9dEFt5MKywssqpmrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP59T-0004bN-Fs; Thu, 16 Apr 2020 14:05:59 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP59I-0004T1-Ex; Thu, 16 Apr 2020 14:05:51 +0000
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 7A4D9100009;
 Thu, 16 Apr 2020 14:05:42 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: Add per-pixel alpha support for the PX30 VOP
Date: Thu, 16 Apr 2020 16:05:26 +0200
Message-Id: <20200416140526.262533-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_070548_768724_728D8795 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Compared to its predecessors, the PX30 VOP has a different register layout
for enabling per-pixel alpha. Instead of src_alpha_ctl and dst_alpha_ctl,
there is a single alpha control register. This register takes some fields
from src_alpha_ctl, but with a different layout.

Add support for the required fields to the PX30 VOP window descriptions,
which makes per-pixel-alpha formats behave correctly.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 3 +++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 9 +++++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index d04b3492bdac..ac1b1923c4bc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -906,6 +906,10 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 			SRC_ALPHA_CAL_M0(ALPHA_NO_SATURATION) |
 			SRC_FACTOR_M0(ALPHA_ONE);
 		VOP_WIN_SET(vop, win, src_alpha_ctl, val);
+
+		VOP_WIN_SET(vop, win, alpha_pre_mul, ALPHA_SRC_PRE_MUL);
+		VOP_WIN_SET(vop, win, alpha_mode, ALPHA_PER_PIX);
+		VOP_WIN_SET(vop, win, alpha_en, 1);
 	} else {
 		VOP_WIN_SET(vop, win, src_alpha_ctl, SRC_ALPHA_EN(0));
 	}
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 0b3d18c457b2..562b127d120b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -151,6 +151,9 @@ struct vop_win_phy {
 
 	struct vop_reg dst_alpha_ctl;
 	struct vop_reg src_alpha_ctl;
+	struct vop_reg alpha_pre_mul;
+	struct vop_reg alpha_mode;
+	struct vop_reg alpha_en;
 	struct vop_reg channel;
 };
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 7a9d979c8d5d..67bb2625db68 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -244,6 +244,9 @@ static const struct vop_win_phy px30_win0_data = {
 	.uv_mst = VOP_REG(PX30_WIN0_CBR_MST0, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(PX30_WIN0_VIR, 0x1fff, 0),
 	.uv_vir = VOP_REG(PX30_WIN0_VIR, 0x1fff, 16),
+	.alpha_pre_mul = VOP_REG(PX30_WIN0_ALPHA_CTRL, 0x1, 2),
+	.alpha_mode = VOP_REG(PX30_WIN0_ALPHA_CTRL, 0x1, 1),
+	.alpha_en = VOP_REG(PX30_WIN0_ALPHA_CTRL, 0x1, 0),
 };
 
 static const struct vop_win_phy px30_win1_data = {
@@ -256,6 +259,9 @@ static const struct vop_win_phy px30_win1_data = {
 	.dsp_st = VOP_REG(PX30_WIN1_DSP_ST, 0xffffffff, 0),
 	.yrgb_mst = VOP_REG(PX30_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(PX30_WIN1_VIR, 0x1fff, 0),
+	.alpha_pre_mul = VOP_REG(PX30_WIN1_ALPHA_CTRL, 0x1, 2),
+	.alpha_mode = VOP_REG(PX30_WIN1_ALPHA_CTRL, 0x1, 1),
+	.alpha_en = VOP_REG(PX30_WIN1_ALPHA_CTRL, 0x1, 0),
 };
 
 static const struct vop_win_phy px30_win2_data = {
@@ -269,6 +275,9 @@ static const struct vop_win_phy px30_win2_data = {
 	.dsp_st = VOP_REG(PX30_WIN2_DSP_ST0, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(PX30_WIN2_MST0, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(PX30_WIN2_VIR0_1, 0x1fff, 0),
+	.alpha_pre_mul = VOP_REG(PX30_WIN2_ALPHA_CTRL, 0x1, 2),
+	.alpha_mode = VOP_REG(PX30_WIN2_ALPHA_CTRL, 0x1, 1),
+	.alpha_en = VOP_REG(PX30_WIN2_ALPHA_CTRL, 0x1, 0),
 };
 
 static const struct vop_win_data px30_vop_big_win_data[] = {
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
