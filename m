Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0362CCF0
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 19:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rb2+DRoj2R7oNW4on+NDZ3zm27YE/pdtXTZwUmapyEU=; b=tdZlNY3TwCouze
	oR+3rF71LxAJCCYGDVVbaa63dIT2jKJjwEY/mdQjNmOeGkOWqHtSfUC4A2Us9MpD0vTcqBAe/7OnV
	SSWgOZGs9FySevSoIg+qwY4hunHNecaWowW2uCLy8t9hc3CFWUZ689YaqBvleinTzGzc02xJhg8a+
	ShzLo4FRtA65ZsK9FJ4Y2LSRfKL0wnsxzSKlEdJc2YSJkOmIPKKeSHmhZveu/dXM62OFQUtEY1Net
	fkSAJUWThcKQuXTgj15mc4uD6f2r1BRXtTuOQh9D91UHamXD4YuoRaumEUQfu/c1BnLXGEpeKNAk4
	5HtU5VeC0rhzhP4tkhJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfVf-0007ZV-Kd; Tue, 28 May 2019 17:03:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfVc-0007WV-8d
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 17:03:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5C324280195
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v6 04/16] rockchip/vpu: Use v4l2_apply_frmsize_constraints()
 where appropriate
Date: Tue, 28 May 2019 14:02:20 -0300
Message-Id: <20190528170232.2091-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528170232.2091-1-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100332_566947_56CC5008 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Use the v4l2_apply_frmsize_constraints() helper instead of open-coding
it.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes from v5:
* None

Changes from v4:
* New patch

 .../media/rockchip/vpu/rockchip_vpu_enc.c     | 44 ++++++-------------
 1 file changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
index 7c7c20ab2733..aa00df9a7ecb 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c
@@ -197,15 +197,9 @@ vidioc_try_fmt_cap_mplane(struct file *file, void *priv, struct v4l2_format *f)
 
 	pix_mp->num_planes = 1;
 	pix_mp->field = V4L2_FIELD_NONE;
-	pix_mp->width = clamp(pix_mp->width,
-			      fmt->frmsize.min_width,
-			      fmt->frmsize.max_width);
-	pix_mp->height = clamp(pix_mp->height,
-			       fmt->frmsize.min_height,
-			       fmt->frmsize.max_height);
-	/* Round up to macroblocks. */
-	pix_mp->width = round_up(pix_mp->width, fmt->frmsize.step_width);
-	pix_mp->height = round_up(pix_mp->height, fmt->frmsize.step_height);
+
+	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
+				       &fmt->frmsize);
 
 	/*
 	 * For compressed formats the application can specify
@@ -226,7 +220,6 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	struct rockchip_vpu_ctx *ctx = fh_to_ctx(priv);
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	const struct rockchip_vpu_fmt *fmt;
-	unsigned int width, height;
 	int i;
 
 	vpu_debug(4, "%c%c%c%c\n",
@@ -242,18 +235,13 @@ vidioc_try_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	}
 
 	pix_mp->field = V4L2_FIELD_NONE;
-	width = clamp(pix_mp->width,
-		      ctx->vpu_dst_fmt->frmsize.min_width,
-		      ctx->vpu_dst_fmt->frmsize.max_width);
-	height = clamp(pix_mp->height,
-		       ctx->vpu_dst_fmt->frmsize.min_height,
-		       ctx->vpu_dst_fmt->frmsize.max_height);
-	/* Round up to macroblocks. */
-	width = round_up(width, ctx->vpu_dst_fmt->frmsize.step_width);
-	height = round_up(height, ctx->vpu_dst_fmt->frmsize.step_height);
+
+	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
+				       &ctx->vpu_dst_fmt->frmsize);
 
 	/* Fill remaining fields */
-	v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, width, height);
+	v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
+			    pix_mp->height);
 
 	for (i = 0; i < pix_mp->num_planes; i++) {
 		memset(pix_mp->plane_fmt[i].reserved, 0,
@@ -272,10 +260,8 @@ void rockchip_vpu_enc_reset_dst_fmt(struct rockchip_vpu_dev *vpu,
 	memset(fmt, 0, sizeof(*fmt));
 
 	fmt->num_planes = 1;
-	fmt->width = clamp(fmt->width, ctx->vpu_dst_fmt->frmsize.min_width,
-			   ctx->vpu_dst_fmt->frmsize.max_width);
-	fmt->height = clamp(fmt->height, ctx->vpu_dst_fmt->frmsize.min_height,
-			    ctx->vpu_dst_fmt->frmsize.max_height);
+	v4l2_apply_frmsize_constraints(&fmt->width, &fmt->height,
+				       &ctx->vpu_dst_fmt->frmsize);
 	fmt->pixelformat = ctx->vpu_dst_fmt->fourcc;
 	fmt->field = V4L2_FIELD_NONE;
 	fmt->colorspace = V4L2_COLORSPACE_JPEG,
@@ -291,23 +277,21 @@ void rockchip_vpu_enc_reset_src_fmt(struct rockchip_vpu_dev *vpu,
 				    struct rockchip_vpu_ctx *ctx)
 {
 	struct v4l2_pix_format_mplane *fmt = &ctx->src_fmt;
-	unsigned int width, height;
 
 	ctx->vpu_src_fmt = rockchip_vpu_get_default_fmt(ctx, false);
 
 	memset(fmt, 0, sizeof(*fmt));
 
-	width = clamp(fmt->width, ctx->vpu_dst_fmt->frmsize.min_width,
-		      ctx->vpu_dst_fmt->frmsize.max_width);
-	height = clamp(fmt->height, ctx->vpu_dst_fmt->frmsize.min_height,
-		       ctx->vpu_dst_fmt->frmsize.max_height);
+	v4l2_apply_frmsize_constraints(&fmt->width, &fmt->height,
+				       &ctx->vpu_src_fmt->frmsize);
 	fmt->field = V4L2_FIELD_NONE;
 	fmt->colorspace = V4L2_COLORSPACE_JPEG,
 	fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 	fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
 
-	v4l2_fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, width, height);
+	v4l2_fill_pixfmt_mp(fmt, ctx->vpu_src_fmt->fourcc, fmt->width,
+			    fmt->height);
 }
 
 static int
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
