Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE6112CCE
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 13:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clLdy5bbnGWozq4enayUxV2HHqCKr2hDKN+PbZbgoAg=; b=LQE0yWmWXukYDM
	JdvIj2QYfhpr0bR1evMxo7FheeqU3W1yFhWv8OXKeDshIywGMmyVXUJsb/Czpbq7dmWNj1lFzOa4Y
	lc67WB+WZ5mEry8MVzKXROy2p/E2YdDRL4vAl/2rj0/xtSUEjnxTYXRUOWyAE7WlheKzSAmE2RwLu
	tTz8lNC2IPoiOQky/Xa7SVQyDO40SKzwoHPOOgvtaeZVlFX9E09PJjcAPJW0jCyxmBXe3oe0g7C+5
	yZIuDENRdgnYLhpURgSLLTsshlHOmzYgmGj4xk2sTHGHBOaJxRaW9SwNbXMMQGcpvy2BhH6YgHz2a
	xsF3st4eajaUT0Q+dFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWfE-0002wK-3P; Fri, 03 May 2019 11:47:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWf3-0002js-EI
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 11:47:32 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 385A4283619;
 Fri,  3 May 2019 12:47:26 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v5 06/15] rockchip/vpu: Support the Request API
Date: Fri,  3 May 2019 13:47:10 +0200
Message-Id: <20190503114719.28784-7-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503114719.28784-1-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044729_743770_B869AA23 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

Introduce support for the Request API. Although the JPEG encoder
does not mandate using the Request API, it's perfectly possible to
use it, if the application wants to.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
--
Changes from v3:
* None

Changes from v2:
* Drop unrelated mdev.bus_info changes.
* Remove the get_ref and get_ctrl helpers as they are not used yet.
---
 .../rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c     |  6 ++++++
 .../media/rockchip/vpu/rockchip_vpu_drv.c     |  7 +++++++
 .../media/rockchip/vpu/rockchip_vpu_enc.c     | 19 +++++++++++++++++++
 3 files changed, 32 insertions(+)

diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
index 6f9f5158d193..74823d25cd8d 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
@@ -113,11 +113,15 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 	struct rockchip_vpu_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct rockchip_vpu_jpeg_ctx jpeg_ctx;
+	struct media_request *src_req;
 	u32 reg;
 
 	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
+	src_req = src_buf->vb2_buf.req_obj.req;
+	v4l2_ctrl_request_setup(src_req, &ctx->ctrl_handler);
+
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
 	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
 	jpeg_ctx.width = ctx->dst_fmt.width;
@@ -153,6 +157,8 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 		| VEPU_REG_ENCODE_FORMAT_JPEG
 		| VEPU_REG_ENCODE_ENABLE;
 
+	v4l2_ctrl_request_complete(src_req, &ctx->ctrl_handler);
+
 	/* Kick the watchdog and start encoding */
 	schedule_delayed_work(&vpu->watchdog_work, msecs_to_jiffies(2000));
 	vepu_write(vpu, reg, VEPU_REG_ENCODE_START);
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index fa02354a0f8a..f47fbd0f9545 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -162,6 +162,7 @@ enc_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 	src_vq->lock = &ctx->dev->vpu_mutex;
 	src_vq->dev = ctx->dev->v4l2_dev.dev;
+	src_vq->supports_requests = true;
 
 	ret = vb2_queue_init(src_vq);
 	if (ret)
@@ -525,6 +526,11 @@ static void rockchip_vpu_remove_enc_func(struct rockchip_vpu_dev *vpu)
 	video_unregister_device(&func->vdev);
 }
 
+static const struct media_device_ops rockchip_m2m_media_ops = {
+	.req_validate = vb2_request_validate,
+	.req_queue = v4l2_m2m_request_queue,
+};
+
 static int rockchip_vpu_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -617,6 +623,7 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
 	strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
 		sizeof(vpu->mdev.model));
 	media_device_init(&vpu->mdev);
+	vpu->mdev.ops = &rockchip_m2m_media_ops;
 	vpu->v4l2_dev.mdev = &vpu->mdev;
 
 	ret = rockchip_vpu_add_enc_func(vpu);
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index aa00df9a7ecb..4512e94c3f32 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -540,14 +540,33 @@ static void rockchip_vpu_stop_streaming(struct vb2_queue *q)
 			vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 		if (!vbuf)
 			break;
+		v4l2_ctrl_request_complete(vbuf->vb2_buf.req_obj.req,
+					   &ctx->ctrl_handler);
 		v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
 	}
 }
 
+static void rockchip_vpu_buf_request_complete(struct vb2_buffer *vb)
+{
+	struct rockchip_vpu_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
+
+	v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->ctrl_handler);
+}
+
+static int rockchip_vpu_buf_out_validate(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+
+	vbuf->field = V4L2_FIELD_NONE;
+	return 0;
+}
+
 const struct vb2_ops rockchip_vpu_enc_queue_ops = {
 	.queue_setup = rockchip_vpu_queue_setup,
 	.buf_prepare = rockchip_vpu_buf_prepare,
 	.buf_queue = rockchip_vpu_buf_queue,
+	.buf_out_validate = rockchip_vpu_buf_out_validate,
+	.buf_request_complete = rockchip_vpu_buf_request_complete,
 	.start_streaming = rockchip_vpu_start_streaming,
 	.stop_streaming = rockchip_vpu_stop_streaming,
 	.wait_prepare = vb2_ops_wait_prepare,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
