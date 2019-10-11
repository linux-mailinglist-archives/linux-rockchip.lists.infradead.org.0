Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA549D3C73
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 11:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwebLsz5TAVy6Ja+KafAqRiqSjlVPRvphnWMuCP2mhI=; b=tb0tlrAlhc7q3j
	X2LEd5Z6MzsVmEhf1nPSQGw6ovVdCTSc3E3ZR3ntEIZH88NKahIqIWUzKayOp4MMWODEoOv2D+60S
	LPR1IHrQFZABkihj2qTXt3p8/hf0bvCzK1N4KWp6gvfKoc4uNI96dIywH+J4i4kp0yOLXFzZttOtx
	Y6MoVcO9luS2D6MMJhlK6suRVCacHUnL9sCbrexlRwsGY0Jrkem8iAw3wifBjO6vTNz9tOnRUApkj
	jVJpNGFKOfa9Fad5DtuiYXCrqIxj+vLmo/mTwngwzxAFf0mLBYmZxWomF12LJYG6++ItuDsjO7G2m
	3lj4f0o4E5VBS+60ESZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrJ4-0002YB-AZ; Fri, 11 Oct 2019 09:33:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrIy-0002Vh-Kw
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 09:33:50 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AAF2D290D6A;
 Fri, 11 Oct 2019 10:33:46 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [RESEND PATCH v2 1/4] media: vb2: Add a helper to get the vb2 buffer
 attached to a request
Date: Fri, 11 Oct 2019 11:33:39 +0200
Message-Id: <20191011093342.3471-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011093342.3471-1-boris.brezillon@collabora.com>
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023348_812870_85F4FF50 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

vb2_request_get_buf() returns the N-th buffer attached to a media
request.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v2:
* Adjust the kernel doc as suggested by Hans
---
 .../media/common/videobuf2/videobuf2-core.c   | 23 +++++++++++++++++++
 include/media/videobuf2-core.h                | 11 +++++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
index 4489744fbbd9..c4c7980dcb0d 100644
--- a/drivers/media/common/videobuf2/videobuf2-core.c
+++ b/drivers/media/common/videobuf2/videobuf2-core.c
@@ -1416,6 +1416,29 @@ unsigned int vb2_request_buffer_cnt(struct media_request *req)
 }
 EXPORT_SYMBOL_GPL(vb2_request_buffer_cnt);
 
+struct vb2_buffer *vb2_request_get_buf(struct media_request *req,
+				       unsigned int n)
+{
+	struct media_request_object *obj;
+	struct vb2_buffer *buf = NULL;
+	unsigned int nbufs = 0;
+	unsigned long flags;
+
+	spin_lock_irqsave(&req->lock, flags);
+	list_for_each_entry(obj, &req->objects, list) {
+		if (!vb2_request_object_is_buffer(obj) ||
+		    nbufs++ < n)
+			continue;
+
+		buf = container_of(obj, struct vb2_buffer, req_obj);
+		break;
+	}
+	spin_unlock_irqrestore(&req->lock, flags);
+
+	return buf;
+}
+EXPORT_SYMBOL_GPL(vb2_request_get_buf);
+
 int vb2_core_prepare_buf(struct vb2_queue *q, unsigned int index, void *pb)
 {
 	struct vb2_buffer *vb;
diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
index 640aabe69450..d363476712dd 100644
--- a/include/media/videobuf2-core.h
+++ b/include/media/videobuf2-core.h
@@ -1222,4 +1222,15 @@ bool vb2_request_object_is_buffer(struct media_request_object *obj);
  */
 unsigned int vb2_request_buffer_cnt(struct media_request *req);
 
+/**
+ * vb2_request_get_buf() - return the buffer at index @idx
+ *
+ * @req:	the request.
+ * @n:		search for the Nth buffer in the req object list
+ *
+ * Return a vb2 buffer or NULL if there's no buffer at the specified position
+ */
+struct vb2_buffer *vb2_request_get_buf(struct media_request *req,
+				       unsigned int n);
+
 #endif /* _MEDIA_VIDEOBUF2_CORE_H */
-- 
2.21.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
