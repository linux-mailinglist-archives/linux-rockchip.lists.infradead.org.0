Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84632CCFD
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 19:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0m8uh28FwMpXgM+vsKdyH0YWT9kfciQZKxb+0OOFv1g=; b=L/dBLl5mU8cI6R
	jbf0dEckB64Ead4j/GQZfFGMMyvo39tmorpN7cv1mCFzrjvnn1ovtCzYsGzQoaMwUdLaOzlsIyhxV
	tJ07KMedVNjUe/aQJBNSrwZRohK4qx7THkJdfBabC/uM7uljXQnrXFqXGyhYQU+dmIGu0aiA/xv57
	X2y47xE9QpBaA3unYRmfB6CtiZiWB1KoAOXdlvHkVodnU2KSXpxk0T/y7l93V/uri+l/ptDF3jNUH
	nE63O/emUvtL3Grl8BCEWSjabS3cyegwFGaK7LXBbnSDRW1G2fg/zcfSBhOnjMtbejGbUbWYHhHCh
	JrK1Vbx4tVow97g8cdDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfVy-0007ps-Aj; Tue, 28 May 2019 17:03:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfVt-0007lt-LP
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 17:03:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A66B3284AF7
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v6 09/16] rockchip/vpu: Provide a helper to reset both src and
 dst formats
Date: Tue, 28 May 2019 14:02:25 -0300
Message-Id: <20190528170232.2091-10-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528170232.2091-1-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100350_121292_43D11D90 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

When initializing a context, the core wants to reset both src and dst
formats. Right now the order doesn't matter, but if we want to have a
valid default width/height on the non-coded/raw format side (src in
case of encoders, dst in case of decoders), we need to reset those
formats in the right order: first the coded-format side, then the other,
such that width and height on the raw format side can be taken from
the coded format.

Let's provide a helper that will reset both formats and make sure this
is done in the right order.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes from v2:
* None

Changes from v2:
* New patch

 .../staging/media/rockchip/vpu/rockchip_vpu_drv.c  |  3 +--
 .../staging/media/rockchip/vpu/rockchip_vpu_v4l2.c | 14 ++++++++++----
 .../staging/media/rockchip/vpu/rockchip_vpu_v4l2.h |  5 +----
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index ec18578d55d7..d85b88067b03 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -273,8 +273,7 @@ static int rockchip_vpu_open(struct file *filp)
 	filp->private_data = &ctx->fh;
 	v4l2_fh_add(&ctx->fh);
 
-	rockchip_vpu_reset_dst_fmt(vpu, ctx);
-	rockchip_vpu_reset_src_fmt(vpu, ctx);
+	rockchip_vpu_reset_fmts(ctx);
 
 	ret = rockchip_vpu_ctrls_setup(vpu, ctx);
 	if (ret) {
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
index 3e8f6256e0ed..e30056dc6758 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
@@ -250,8 +250,8 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	return 0;
 }
 
-void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx)
+static void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
+				       struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->dst_fmt;
 
@@ -273,8 +273,8 @@ void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 		fmt->width * fmt->height * ctx->vpu_dst_fmt->max_depth;
 }
 
-void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx)
+static void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
+				       struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->src_fmt;
 
@@ -294,6 +294,12 @@ void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 			    fmt->height);
 }
 
+void rockchip_vpu_reset_fmts(struct rockchip_vpu_ctx *ctx)
+{
+	rockchip_vpu_reset_dst_fmt(ctx->dev, ctx);
+	rockchip_vpu_reset_src_fmt(ctx->dev, ctx);
+}
+
 static int
 vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 {
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
index 816bd3988218..493e8751d22d 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.h
@@ -21,9 +21,6 @@
 extern const struct v4l2_ioctl_ops rockchip_vpu_ioctl_ops;
 extern const struct vb2_ops rockchip_vpu_queue_ops;
 
-void rockchip_vpu_reset_src_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx);
-void rockchip_vpu_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
-				struct rockchip_vpu_ctx *ctx);
+void rockchip_vpu_reset_fmts(struct rockchip_vpu_ctx *ctx);
 
 #endif /* ROCKCHIP_VPU_V4L2_H_ */
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
