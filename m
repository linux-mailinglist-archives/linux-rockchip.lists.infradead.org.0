Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E174414307B
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 18:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvkyYsKG68xo+AXPb2vJDXnlZhP6U/qUwtbmDhtzeF8=; b=AenH9bSzxcB11X
	7W2APg1dLxh8F6oXmeYPU4Eb5+hMUs5x4d6nBQTNC7lAvF3fQq58yzhPaylw/H0LwNpQsZuxInkh/
	xm9cKbstmd10TPQ54R1NQ62sAHcuHe3XIFF5LbDxSQtSS7skJc8A5Wd/lRgbaNlUysOzL9l2YnKST
	9WFj8eYAWbpf/1rlvgyQv0uO9Qa6k4Jd0pRNrmueKmVeqbt9ZJjSGqtDLiSfPvvx16TE5C/Z16Cwu
	0RTEOF4Z66X8DmAZ+0AadexrMdDeB1JxJ8dRdm8oj5EgYC0neOh8N/Xxndq4YgY8tRQJvynhugads
	JT4fhbRUsA0ByF0v1EYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaWS-0008Ck-DB; Mon, 20 Jan 2020 17:07:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVO-0007Bo-86; Mon, 20 Jan 2020 17:06:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DDCE929132E
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 3/5] drm/rockchip: vop: Fix CRTC unbind
Date: Mon, 20 Jan 2020 14:06:00 -0300
Message-Id: <20200120170602.3832-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120170602.3832-1-ezequiel@collabora.com>
References: <20200120170602.3832-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090626_584918_B99A9EF9 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In order to fix device unbinding, the CRTC release path needs to
be fixed. Get rid of the use-after-free issue that arise
for calling drm_crtc_cleanup() prematurely, by moving
all the CRTC resource release to the crtc.destroy() hook.

The vop_unbind() function is only responsible for the release
of driver-specific (i.e. vop-specific) resources.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 56 ++++++++-------------
 1 file changed, 20 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index d04b3492bdac..87c43097da7e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1387,6 +1387,11 @@ static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
 
 static void vop_crtc_destroy(struct drm_crtc *crtc)
 {
+	struct vop *vop = to_vop(crtc);
+
+	drm_flip_work_cleanup(&vop->fb_unref_work);
+	drm_self_refresh_helper_cleanup(crtc);
+	of_node_put(crtc->port);
 	drm_crtc_cleanup(crtc);
 }
 
@@ -1606,12 +1611,22 @@ static void vop_plane_add_properties(struct drm_plane *plane,
 						   DRM_MODE_ROTATE_0 | flags);
 }
 
+static void vop_plane_cleanup(struct vop *vop)
+{
+	struct drm_device *drm_dev = vop->drm_dev;
+	struct drm_plane *plane, *tmp;
+
+	list_for_each_entry_safe(plane, tmp, &drm_dev->mode_config.plane_list,
+				 head)
+		drm_plane_cleanup(plane);
+}
+
 static int vop_create_crtc(struct vop *vop)
 {
 	const struct vop_data *vop_data = vop->data;
 	struct device *dev = vop->dev;
 	struct drm_device *drm_dev = vop->drm_dev;
-	struct drm_plane *primary = NULL, *cursor = NULL, *plane, *tmp;
+	struct drm_plane *primary = NULL, *cursor = NULL;
 	struct drm_crtc *crtc = &vop->crtc;
 	struct device_node *port;
 	int ret;
@@ -1625,6 +1640,7 @@ static int vop_create_crtc(struct vop *vop)
 	for (i = 0; i < vop_data->win_size; i++) {
 		struct vop_win *vop_win = &vop->win[i];
 		const struct vop_win_data *win_data = vop_win->data;
+		struct drm_plane *plane;
 
 		if (win_data->type != DRM_PLANE_TYPE_PRIMARY &&
 		    win_data->type != DRM_PLANE_TYPE_CURSOR)
@@ -1714,42 +1730,10 @@ static int vop_create_crtc(struct vop *vop)
 err_cleanup_crtc:
 	drm_crtc_cleanup(crtc);
 err_cleanup_planes:
-	list_for_each_entry_safe(plane, tmp, &drm_dev->mode_config.plane_list,
-				 head)
-		drm_plane_cleanup(plane);
+	vop_plane_cleanup(vop);
 	return ret;
 }
 
-static void vop_destroy_crtc(struct vop *vop)
-{
-	struct drm_crtc *crtc = &vop->crtc;
-	struct drm_device *drm_dev = vop->drm_dev;
-	struct drm_plane *plane, *tmp;
-
-	drm_self_refresh_helper_cleanup(crtc);
-
-	of_node_put(crtc->port);
-
-	/*
-	 * We need to cleanup the planes now.  Why?
-	 *
-	 * The planes are "&vop->win[i].base".  That means the memory is
-	 * all part of the big "struct vop" chunk of memory.  That memory
-	 * was devm allocated and associated with this component.  We need to
-	 * free it ourselves before vop_unbind() finishes.
-	 */
-	list_for_each_entry_safe(plane, tmp, &drm_dev->mode_config.plane_list,
-				 head)
-		vop_plane_destroy(plane);
-
-	/*
-	 * Destroy CRTC after vop_plane_destroy() since vop_disable_plane()
-	 * references the CRTC.
-	 */
-	drm_crtc_cleanup(crtc);
-	drm_flip_work_cleanup(&vop->fb_unref_work);
-}
-
 static int vop_initial(struct vop *vop)
 {
 	struct reset_control *ahb_rst;
@@ -2020,7 +2004,8 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 
 err_disable_pm_runtime:
 	pm_runtime_disable(&pdev->dev);
-	vop_destroy_crtc(vop);
+	vop_plane_cleanup(vop);
+	vop_crtc_destroy(&vop->crtc);
 	return ret;
 }
 
@@ -2032,7 +2017,6 @@ static void vop_unbind(struct device *dev, struct device *master, void *data)
 		rockchip_rgb_fini(vop->rgb);
 
 	pm_runtime_disable(dev);
-	vop_destroy_crtc(vop);
 
 	clk_unprepare(vop->aclk);
 	clk_unprepare(vop->hclk);
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
