Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6058E1A45EB
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 13:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjYtKBj0CR9qRa3OOJrj4P6Zl8WLphcEOtV8vHL4sVU=; b=bUiB+4bRkPqR0A
	H+EYRgsh2JpsS0JTo0YjWRiVk70CesF47MGFlQpVPnJeKFWVwcux+TZoo7thqmJ0UcBf21mKMfYTa
	VxpWDG60UzT5kQY/zCFpJkih1MkvyOTV4GAHV/5QWx58YITClHakp+w0rR2t6OGpU7eJMT179UpjS
	ltv8bP0fdXnliKq3+UDfkFf2Yus3eeB4GR9I3JZTRaFHW6UydKnRTYId4S+9DfTwFV+B+DzjHNfAx
	I9EEghYd22kg6qc1knzWf4s1AyNqVnwXm7wEj9F3kxNoM8Kt8ceA+qQ97DioN0En4yynikJd1KWHI
	pDCCMUU6woYVWS+X14ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsC7-0001QR-I0; Fri, 10 Apr 2020 11:51:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsC3-0001Os-Oh
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 11:51:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1B42C2A0E84
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] media: v4l2-ctrls: Add the
 [__]v4l2_ctrl_s_ctrl_compound() helpers
Date: Fri, 10 Apr 2020 08:51:11 -0300
Message-Id: <20200410115113.31728-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200410115113.31728-1-ezequiel@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_045131_935044_CBCA2977 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

VP9 codec drivers will need to set some of their frame context compound
controls. Let's provide the [__]v4l2_ctrl_s_ctrl_compound() helpers to
allow that.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 15 ++++++++++
 include/media/v4l2-ctrls.h           | 43 ++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 93d33d1db4e8..9a8445a9e788 100644
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
2.26.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
