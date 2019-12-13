Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3C111E4B0
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 14:32:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlZGDS9fCUZW42V4Cio9zxfkhiAE2WLyiLOerFTaI+0=; b=A5jLKO8g/eeuO0
	sx/Ms4kpg3LIp0TSJZgYXc+0NqC0vLNLxVyew3whBqaJBV7QEcmdSaR33jzBicKAgWu3P8tX3ZFcG
	hy05W7GC5xUVSWzzZjwbMmaNBZObJcZIUjvyeq/VtPRMPquU9VZo3wZ2tQLWZJs5tKoWyeLUnv6ej
	7vje8bZAuqRPPv3qjBHddndNhz9rR0V7kneDlFp4yA1kJjwoLWqw5eIJgH3l0kytTL/k0fS4BfLZn
	m+5xDMV+nnQ1DAHiCOuR+/i+R5CdaZEg9n/BED/S9d3pzl+bKHPYEP3ApFsXWbXsQDXb5nSHv7bwa
	RKyfHc5OwUidq09t4mMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifl3A-0001Dd-8z; Fri, 13 Dec 2019 13:32:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifl34-0001B4-D0
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 13:32:04 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E1F76292D3F;
 Fri, 13 Dec 2019 13:32:00 +0000 (GMT)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH 1/3] media: v4l2-ctrls: Add the
 [__]v4l2_ctrl_s_ctrl_compound() helpers
Date: Fri, 13 Dec 2019 14:31:55 +0100
Message-Id: <20191213133157.105554-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213133157.105554-1-boris.brezillon@collabora.com>
References: <20191213133157.105554-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_053202_737279_1619F63A 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VP9 codec drivers will need to set some of their frame context compound
controls. Let's provide the [__]v4l2_ctrl_s_ctrl_compound() helpers to
allow that.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 15 ++++++++++
 include/media/v4l2-ctrls.h           | 43 ++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 2928c5e0a73d..9d5c0242d3e0 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -4255,6 +4255,21 @@ int __v4l2_ctrl_s_ctrl_area(struct v4l2_ctrl *ctrl,
 }
 EXPORT_SYMBOL(__v4l2_ctrl_s_ctrl_area);
 
+int __v4l2_ctrl_s_ctrl_compound(struct v4l2_ctrl *ctrl, const void *data,
+				size_t len)
+{
+	lockdep_assert_held(ctrl->handler->lock);
+
+	/* It's a driver bug if this happens. */
+	WARN_ON(!ctrl->is_ptr || ctrl->type < V4L2_CTRL_COMPOUND_TYPES);
+	if (WARN_ON(len != (ctrl->elem_size * ctrl->elems)))
+		return -EINVAL;
+
+	memcpy(ctrl->p_new.p, data, len);
+	return set_ctrl(NULL, ctrl, 0);
+}
+EXPORT_SYMBOL(__v4l2_ctrl_s_ctrl_compound);
+
 void v4l2_ctrl_request_complete(struct media_request *req,
 				struct v4l2_ctrl_handler *main_hdl)
 {
diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
index 7db9e719a583..30c3be7f5efc 100644
--- a/include/media/v4l2-ctrls.h
+++ b/include/media/v4l2-ctrls.h
@@ -1152,6 +1152,49 @@ static inline int v4l2_ctrl_s_ctrl_area(struct v4l2_ctrl *ctrl,
 	return rval;
 }
 
+/**
+ * __v4l2_ctrl_s_ctrl_compound() - Unlocked variant of
+ *				   v4l2_ctrl_s_ctrl_compound().
+ *
+ * @ctrl:	The control.
+ * @data:	The object pointer.
+ * @len:	The object length.
+ *
+ * This sets the control's new compound safely by going through the control
+ * framework. This function assumes the control's handler is already locked,
+ * allowing it to be used from within the &v4l2_ctrl_ops functions.
+ *
+ * This function is for compound type controls only.
+ */
+int __v4l2_ctrl_s_ctrl_compound(struct v4l2_ctrl *ctrl, const void *data,
+				size_t len);
+
+/**
+ * v4l2_ctrl_s_ctrl_compound() - Helper function to set a control's compound
+ *				 value from within a driver.
+ *
+ * @ctrl:	The control.
+ * @data:	The object pointer.
+ * @len:	The object length.
+ *
+ * This sets the control's new compound safely by going through the control
+ * framework. This function will lock the control's handler, so it cannot be
+ * used from within the &v4l2_ctrl_ops functions.
+ *
+ * This function is for compound type controls only.
+ */
+static inline int v4l2_ctrl_s_ctrl_compound(struct v4l2_ctrl *ctrl,
+					    const void *data, size_t len)
+{
+	int rval;
+
+	v4l2_ctrl_lock(ctrl);
+	rval = __v4l2_ctrl_s_ctrl_compound(ctrl, data, len);
+	v4l2_ctrl_unlock(ctrl);
+
+	return rval;
+}
+
 /* Internal helper functions that deal with control events. */
 extern const struct v4l2_subscribed_event_ops v4l2_ctrl_sub_ev_ops;
 
-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
